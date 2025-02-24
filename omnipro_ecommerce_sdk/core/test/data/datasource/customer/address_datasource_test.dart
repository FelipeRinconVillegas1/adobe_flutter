import 'package:address/data/datasource/address_datasource.dart';
import 'package:core/data/dto/customer_address_dto.fr.dart';
import 'package:core/data/datasource/customer/state_query.dart';
import 'package:core/data/dto/state_dto.fr.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/network/graphql_helper_test.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/extension.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:core/utils/stream_event_change_contract.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';
import 'package:test/test.dart';
import 'package:dartz/dartz.dart';

class MockGraphQLService extends Mock implements GraphQLService {}

class MockSubjectEvent extends Mock
    implements BehaviorSubject<EventDataChange<List<CustomerAddressDTO>, AddressEvent>> {}

void main() {
  late AddressDatasourceImpl datasource;
  late MockGraphQLService mockGraphQLService;
  late MockSubjectEvent mockSubjectEvent;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockGraphQLService = MockGraphQLService();
    mockSubjectEvent = MockSubjectEvent();
    datasource = AddressDatasourceImpl(mockGraphQLService, mockSubjectEvent);
  });

  group('AddressDatasourceImpl', () {
    final addressJSON = {
      "id": 142,
      "firstname": "Av 184",
      "lastname": "Rincon",
      "street": ["Calle 45 norte 13-90 apto. 506 torre C"],
      "city": "odasE",
      "region": {"region_id": 2821, "region": "Ciudad de México"},
      "postcode": "630004",
      "country_code": "MX",
      "telephone": "34084579913",
      "latitude": "4.574648622397113",
      "longitude": "-75.64419273287056",
      "category": "family",
      "default_shipping": true,
      "default_billing": true
    };
    final addressDTO = CustomerAddressDTO.fromJson(addressJSON);
    test('getStatesByIdCountry should return list of StateDTO on successful response', () async {
      final idCountry = '1';
      final availableRegion = {
        "available_regions": [
          {"id": 2803, "code": "AGU", "name": "Aguascalientes"},
        ]
      };

      final state = StateDTO.fromJson(availableRegion['available_regions']![0]);
      final List<StateDTO> expectedStates = [state];
      final expectedResponse = {"country": availableRegion};

      final resultQuery = mockQuery(
        response: expectedResponse,
      );

      when(() => mockGraphQLService.query(getStatesByIdCountryQuery(idCountry)))
          .thenAnswer((invocation) async => Right(resultQuery));

      final result = await datasource.getStatesByIdCountry(idCountry);

      expect(expectedStates, result.fold((l) => null, (r) => r));
    });

    test('getStatesByIdCountry should return ErrorHandler on failure', () async {
      final idCountry = '1';
      final expectedResponse = (ErrorHandlerExternal(
        errorCode: 'error_code',
        errorMessage: 'Error occurred',
      ));

      when(() => mockGraphQLService.query(any(), variables: any(named: 'variables')))
          .thenAnswer((_) async => Left(expectedResponse));

      final result = await datasource.getStatesByIdCountry(idCountry);

      expect(result.getLeft(), expectedResponse);
    });

    test('saveNewAddress should return true on successful response', () async {
      final resultQuery = mockMutation(response: {"createCustomerAddress": addressJSON});

      when(() => mockGraphQLService.mutation(any())).thenAnswer((_) async => Right(resultQuery));

      final result = await datasource.saveNewAddress(addressDTO);

      expect(result.isRight(), true);
      verify(() => mockGraphQLService.mutation(any())).called(1);
      verify(() => mockSubjectEvent.add(EventDataChange(data: [addressDTO], eventType: AddressEvent.saveAddress)))
          .called(1);
    });

    test('saveNewAddress should return ErrorHandler on failure', () async {
      final expectedResponse = (ErrorHandlerExternal(
        errorCode: 'error_code',
        errorMessage: 'Error occurred',
      ));

      when(() => mockGraphQLService.mutation(any())).thenAnswer((_) async => Left(expectedResponse));

      final result = await datasource.saveNewAddress(addressDTO);

      expect(result.getLeft(), expectedResponse);
    });

    test('updateAddress should return true on successful response', () async {
      final expectedResponse = mockMutation(response: {'updateCustomerAddress': addressJSON});

      when(() => mockGraphQLService.mutation(any())).thenAnswer((_) async => Right(expectedResponse));

      // Act
      final result = await datasource.updateAddress(addressDTO);

      // Assert
      expect(result.isRight(), true);
      verify(() => mockGraphQLService.mutation(any())).called(1);
      verify(() => mockSubjectEvent.add(EventDataChange(data: [addressDTO], eventType: AddressEvent.updateAddress)))
          .called(1);
    });

    test('updateAddress should return ErrorHandler on failure', () async {
      // Arrange
      final expectedResponse = ErrorHandlerExternal(
        errorCode: 'error_code',
        errorMessage: 'Error occurred',
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((_) async => Left(expectedResponse));

      // Act
      final result = await datasource.updateAddress(addressDTO);

      // Assert
      expect(result.getLeft(), expectedResponse);
      verify(() => mockGraphQLService.mutation(any())).called(1);
      verifyNever(
          () => mockSubjectEvent.add(EventDataChange(data: [addressDTO], eventType: AddressEvent.updateAddress)));
    });

    test('getAddresses should return list of CustomerAddressDTO on successful response', () async {
      final responseGetAddresses = {
        "customer": {
          "addresses": [addressJSON]
        }
      };

      final expectedAddresses = responseGetAddresses['customer']!['addresses']!
          .map((address) => CustomerAddressDTO.fromJson(address))
          .toList();

      final expectedResponse = mockQuery(response: responseGetAddresses);

      when(() => mockGraphQLService.query(any())).thenAnswer((_) async => Right(expectedResponse));

      final result = await datasource.getAddresses();

      expect(result.getRight(), expectedAddresses);
      verify(() => mockSubjectEvent.add(EventDataChange(data: expectedAddresses, eventType: AddressEvent.getAddress)))
          .called(1);
    });

    test('getAddresses should return ErrorHandler on failure', () async {
      final expectedResponse = (ErrorHandlerExternal(
        errorCode: 'error_code',
        errorMessage: 'Error occurred',
      ));

      when(() => mockGraphQLService.query(any())).thenAnswer((_) async => Left(expectedResponse));

      final result = await datasource.getAddresses();

      expect(result.getLeft(), expectedResponse);
      verify(() => mockGraphQLService.query(any())).called(1);
      verifyNever(() => mockSubjectEvent.add(EventDataChange(data: [addressDTO], eventType: AddressEvent.getAddress)));
    });

    test('deleteAddress should return true on successful response', () async {
      final expectedResponse = mockMutation(response: {"deleteCustomerAddress": true});

      when(() => mockGraphQLService.mutation(any())).thenAnswer((_) async => Right(expectedResponse));

      final result = await datasource.deleteAddress(addressDTO);

      expect(result.getRight(), true);
      verify(() => mockGraphQLService.mutation(any())).called(1);
      verify(() => mockSubjectEvent.add(EventDataChange(data: [addressDTO], eventType: AddressEvent.deleteAddress)))
          .called(1);
    });

    test('deleteAddress should return ErrorHandler on failure', () async {
      final expectedResponse = ErrorHandlerExternal(
        errorCode: 'error_code',
        errorMessage: 'Error occurred',
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((_) async => Left(expectedResponse));

      final result = await datasource.deleteAddress(addressDTO);

      expect(result.getLeft(), expectedResponse);
      verify(() => mockGraphQLService.mutation(any())).called(1);
      verifyNever(
          () => mockSubjectEvent.add(EventDataChange(data: [addressDTO], eventType: AddressEvent.deleteAddress)));
    });
  });
}
