import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/data/repository/address_repository.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/domain/entity/customer_address_entity.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/domain/use_case/update_address_use_case.dart';

class MockAddressRepository extends Mock implements AddressRepository {}

void main() {
  late UpdateAddressUseCase updateAddressUseCase;
  late AddressRepository mockAddressRepository;
  late CustomerAddressEntity customerAddressEntity;

  setUp(() async {
    mockAddressRepository = MockAddressRepository();
    updateAddressUseCase = UpdateAddressUseCase(mockAddressRepository);
    customerAddressEntity = CustomerAddressEntity(
      id: 1,
      city: 'Phoenix',
      specialInstructions: '',
      countryCode: '',
      defaultBilling: false,
      defaultShipping: false,
      firstname: 'Juan',
      lastname: 'Doe',
      postcode: '77777',
      region: RegionEntity(region: 'Arizona', regionId: 1, code: 'CDM'),
      street: '123 Main Street',
      telephone: '7777777777',
      detailAddress: '',
    );
  });

  test('call should return the result of updateAddress from AddressRepository', () async {
    const mockResult = Right<ErrorHandler, bool>(true);

    when(() => mockAddressRepository.updateAddress(customerAddressEntity)).thenAnswer((_) async => mockResult);

    final result = await updateAddressUseCase.call(customerAddressEntity);

    expect(result, mockResult);
    verify(() => mockAddressRepository.updateAddress(customerAddressEntity)).called(1);
  });

  test('call should return error handler of updateAddress from AddressRepository', () async {
    final mockResult = Left<ErrorHandler, bool>(ErrorHandlerInternal(errorMessage: 'error'));

    when(() => mockAddressRepository.updateAddress(customerAddressEntity)).thenAnswer((_) async => mockResult);

    final result = await updateAddressUseCase.call(customerAddressEntity);

    expect(result, mockResult);
    verify(() => mockAddressRepository.updateAddress(customerAddressEntity)).called(1);
  });
}
