import 'package:address/data/repository/address_repository.dart';
import 'package:address/domain/entity/customer_address_entity.dart';
import 'package:address/domain/use_case/delete_address_use_case.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:dartz/dartz.dart';
import 'package:core/utils/error_handler/error_handler.dart';

class MockAddressRepository extends Mock implements AddressRepository {}

void main() {
  late DeleteAddressUseCase deleteAddressUseCase;
  late MockAddressRepository mockAddressRepository;
  late CustomerAddressEntity addressEntity;

  setUp(() async {
    mockAddressRepository = MockAddressRepository();
    deleteAddressUseCase = DeleteAddressUseCase(mockAddressRepository);
    addressEntity = CustomerAddressEntity(
      id: 1,
      specialInstructions: '',
      cityCustom: 'Phoenix',
      city: 'Phoenix',
      countryCode: '',
      defaultBilling: false,
      defaultShipping: false,
      firstname: 'Juan',
      lastname: 'Doe',
      postcode: '77777',
      region: RegionEntity(region: 'Arizona', regionId: 1, code: ''),
      street: '123 Main Street',
      telephone: '7777777777',
      areaCodeTelephone: '57',
      category: 'Category',
      zone: '',
      detailAddress: '',
      state: '',
    );
  });

  group('DeleteAddressUseCase', () {
    test('should delete address and return Either<ErrorHandler, bool>', () async {
      const expectedResponse = Right<ErrorHandler, bool>(true);

      when(() => mockAddressRepository.deleteAddress(addressEntity)).thenAnswer((_) async => expectedResponse);

      final result = await deleteAddressUseCase.call(addressEntity);

      expect(result, expectedResponse);
      verify(() => mockAddressRepository.deleteAddress(addressEntity)).called(1);
    });

    test('returns ErrorHandler when the use case fails', () async {
      final error = Exception('Failed to fetch data');
      when(() => mockAddressRepository.saveNewAddress(addressEntity)).thenThrow(error);
      final result = await deleteAddressUseCase.call(addressEntity);
      expect(
          result.fold((l) => (l as ErrorHandlerExternal).errorCode, (r) => null), equals(ErrorCode.errorDeleteAddress));
    });
  });
}
