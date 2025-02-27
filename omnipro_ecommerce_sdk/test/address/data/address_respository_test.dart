import 'package:core/domain/entity/states_country.dart';
import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/stream_event_change_contract.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/data/dto/state_dto.fr.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/data/datasource/address_datasource.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/data/repository/address_mapper.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/data/repository/address_repository.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/domain/entity/customer_address_entity.dart';
import 'package:rxdart/rxdart.dart';

class MockAddressDatasource extends Mock implements AddressDatasource {}

class MockSubjectEvent extends Mock
    implements BehaviorSubject<EventDataChange<List<CustomerAddressEntity>, AddressEvent>> {}

class MockSecureStorageDatasource extends Mock implements SecureStorageDatasource {}

void main() {
  late AddressDatasource mockAddressDatasource;
  late SecureStorageDatasource mockSecureStorageDatasource;
  late AddressRepository addressRepository;

  List<Map<String, Object>> json = [
    {'code': 'AGU', 'name': 'Aguascalientes', 'id': 2803},
    {'code': 'BCN', 'name': 'Baja California', 'id': 2806}
  ];
  List<StateDTO> listStatesMockResponse = [];
  late CustomerAddressEntity customerAddressEntity;

  setUp(() async {
    mockAddressDatasource = MockAddressDatasource();
    mockSecureStorageDatasource = MockSecureStorageDatasource();
    addressRepository = AddressRepositoryImpl(mockAddressDatasource, mockSecureStorageDatasource);
    for (var item in json) {
      listStatesMockResponse.add(StateDTO.fromJson(item));
    }
    customerAddressEntity = CustomerAddressEntity(
        id: 1,
        city: 'Phoenix',
        countryCode: '',
        defaultBilling: false,
        defaultShipping: false,
        firstname: 'Juan',
        lastname: 'Doe',
        postcode: '77777',
        region: RegionEntity(region: 'Arizona', regionId: 1, code: 'code'),
        street: '123 Main Street',
        telephone: '7777777777',
        detailAddress: '',
        specialInstructions: '');
  });

  group('Get states', () {
    test('return states', () async {
      when(() => mockAddressDatasource.getStatesByIdCountry('MX'))
          .thenAnswer((_) async => Right<ErrorHandler, List<StateDTO>>(listStatesMockResponse));
      final result = await addressRepository.getStatesByIdCountry('MX');
      verify(() => mockAddressDatasource.getStatesByIdCountry('MX')).called(1);
      expect(result.isRight(), true);
      expect(
          result..fold((l) => null, (r) => r), Right<ErrorHandler, StatesCountry>(listStatesMockResponse.toDomain()));
    });
    test('returns ErrorHandler when the repository fails', () async {
      final error = Exception('Failed to fetch data');
      when(() => mockAddressDatasource.getStatesByIdCountry('MX')).thenThrow(error);
      final result = await addressRepository.getStatesByIdCountry('MX');
      expect(result.fold((l) => (l as ErrorHandlerExternal).errorCode, (r) => null),
          equals(ErrorCode.errorGetStatesCountry));
    });
  });

  group('Set address', () {
  /*  test('return true', () async {
      when(() => mockAddressDatasource.saveNewAddress(customerAddressEntity.toDTO()))
          .thenAnswer((_) async => const Right<ErrorHandler, CustomerAddressDTO>(true));
      final result = await addressRepository.saveNewAddress(customerAddressEntity);
      verify(() => mockAddressDatasource.saveNewAddress(customerAddressEntity.toDTO())).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), const Right<ErrorHandler, bool>(true));
    });*/
    test('returns ErrorHandler when the repository fails', () async {
      final error = Exception('Failed to fetch data');
      when(() => mockAddressDatasource.saveNewAddress(customerAddressEntity.toDTO())).thenThrow(error);
      final result = await addressRepository.saveNewAddress(customerAddressEntity);
      expect(result.fold((l) => (l as ErrorHandlerExternal).errorCode, (r) => null),
          equals(ErrorCode.errorSetCustomerAddress));
    });
  });

  test('deleteAddress should return Either<ErrorHandler, bool>', () async {
    final expectedResponse = Right<ErrorHandler, bool>(true);

    when(() => mockAddressDatasource.deleteAddress(customerAddressEntity.toDTO()))
        .thenAnswer((_) async => expectedResponse);

    final result = await addressRepository.deleteAddress(customerAddressEntity);

    expect(result, expectedResponse);
    verify(() => mockAddressDatasource.deleteAddress(customerAddressEntity.toDTO())).called(1);
  });

  test('updateAddress should return Either<ErrorHandler, bool>(true)', () async {
    final expectedResponse = Right<ErrorHandler, bool>(true);

    when(() => mockAddressDatasource.updateAddress(customerAddressEntity.toDTO()))
        .thenAnswer((_) async => expectedResponse);

    final result = await addressRepository.updateAddress(customerAddressEntity);

    expect(result, expectedResponse);
    verify(() => mockAddressDatasource.updateAddress(customerAddressEntity.toDTO())).called(1);
  });

  test('updateAddress returns ErrorHandler when the repository fails', () async {
    final error = ErrorHandlerInternal(errorMessage: 'Failed  data');
    when(() => mockAddressDatasource.updateAddress(customerAddressEntity.toDTO())).thenAnswer((_) async => Left(error));
    final result = await addressRepository.updateAddress(customerAddressEntity);
    expect(result.fold((l) => (l as ErrorHandlerInternal).errorMessage, (r) => null), equals('Failed  data'));
  });
}
