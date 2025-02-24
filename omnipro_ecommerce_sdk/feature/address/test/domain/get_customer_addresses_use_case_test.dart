import 'package:address/data/repository/address_repository.dart';
import 'package:address/domain/entity/customer_address_entity.dart';
import 'package:address/domain/entity/customer_addresses.dart';
import 'package:address/domain/use_case/get_customer_addresses_use_case.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAddressRepository extends Mock implements AddressRepository {}

void main() {
  late MockAddressRepository mockAddressRepository;
  late GetCustomerAddressesUseCase getCustomerAddressesUseCase;
  late List<CustomerAddressEntity> customerAddressEntity;
  setUp(() async {
    mockAddressRepository = MockAddressRepository();
    getCustomerAddressesUseCase = GetCustomerAddressesUseCase(mockAddressRepository);
    customerAddressEntity = [
      CustomerAddressEntity(
        id: 1,
        specialInstructions: '',
        city: 'Phoenix',
        cityCustom: 'Phoenix',
        countryCode: '',
        defaultBilling: false,
        defaultShipping: false,
        firstname: 'Juan',
        lastname: 'Doe',
        postcode: '77777',
        region: RegionEntity(region: 'Arizona', regionId: 2, code: 'code'),
        street: '123 Main Street',
        telephone: '7777777777',
        areaCodeTelephone: '57',
        category: 'home',
        zone: '',
        detailAddress: '',
        state: '',
      ),
    ];
  });

  group('GetCustomerAddressesUseCase', () {
    test('return  list addresses ', () async {
      final customerAddresses = CustomerAddresses(shippingAddresses: customerAddressEntity);
      when(() => mockAddressRepository.getAddresses())
          .thenAnswer((_) async => Right<ErrorHandler, CustomerAddresses>(customerAddresses));
      final result = await getCustomerAddressesUseCase.call();
      verify(() => mockAddressRepository.getAddresses()).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right<ErrorHandler, CustomerAddresses>(customerAddresses));
    });

    test('returns ErrorHandler when the usecas fails', () async {
      final error = Exception('Failed to fetch data');
      when(() => mockAddressRepository.getAddresses()).thenThrow(error);
      final result = await getCustomerAddressesUseCase.call();
      expect(result.fold((l) => (l as ErrorHandlerExternal).errorCode, (r) => null),
          equals(ErrorCode.errorGetCustomerAddresses));
    });
  });
}
