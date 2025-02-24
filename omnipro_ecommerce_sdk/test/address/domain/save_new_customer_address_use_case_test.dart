// import 'package:address/data/repository/address_repository.dart';
// import 'package:address/domain/entity/customer_address_entity.dart';
// import 'package:address/domain/use_case/save_new_customer_address_use_case.dart';
// import 'package:core/utils/error_handler/error_code.dart';
// import 'package:core/utils/error_handler/error_handler.dart';
// import 'package:core/utils/loggers/app_logger.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';

// class MockAddressRepository extends Mock implements AddressRepository {}

// void main() {
//   late SaveNewCustomerAddressUseCase setCustomerAddressUseCase;
//   late MockAddressRepository mockAddressRepository;
//   late CustomerAddressEntity customerAddressEntity;
//   setUp(() async {
//     await FdaLogger().init(isDebug: false, isTest: true);
//     mockAddressRepository = MockAddressRepository();
//     setCustomerAddressUseCase = SaveNewCustomerAddressUseCase(mockAddressRepository);
//     customerAddressEntity = CustomerAddressEntity(
//       id: 1,
//       city: 'Phoenix',
//       specialInstructions: '',
//       countryCode: '',
//       defaultBilling: false,
//       defaultShipping: false,
//       firstname: 'Juan',
//       lastname: 'Doe',
//       postcode: '77777',
//       region: RegionEntity(region: 'Arizona', regionId: 1, code: 'mex'),
//       street: '123 Main Street',
//       telephone: '7777777777',
//       category: 'Category',
//       zone: '',
//       detailAddress: '',
//       state: '',
//     );
//   });

//   group('SetCustomerAddressUseCase', () {
//     test('return  get true ', () async {
//       when(() => mockAddressRepository.saveNewAddress(customerAddressEntity))
//           .thenAnswer((_) async => const Right<ErrorHandler, bool>(true));
//       final result = await setCustomerAddressUseCase.call(customerAddressEntity);
//       verify(() => mockAddressRepository.saveNewAddress(customerAddressEntity)).called(1);
//       expect(result.isRight(), true);
//       expect(result..fold((l) => null, (r) => r), const Right<ErrorHandler, bool>(true));
//     });

//     test('returns ErrorHandler when the usecas fails', () async {
//       final error = Exception('Failed to fetch data');
//       when(() => mockAddressRepository.saveNewAddress(customerAddressEntity)).thenThrow(error);
//       final result = await setCustomerAddressUseCase.call(customerAddressEntity);
//       expect(result.fold((l) => (l as ErrorHandlerExternal).errorCode, (r) => null),
//           equals(ErrorCode.errorSetCustomerAddress));
//     });
//   });
// }
