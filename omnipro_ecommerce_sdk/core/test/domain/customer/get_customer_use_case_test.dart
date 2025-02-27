import 'dart:convert';
import 'package:core/data/mapper.dart';
import 'package:core/data/repository/customer/customer_repository.dart';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/domain/use_case/customer/get_customer_use_case.dart';
import 'package:core/domain/use_case/customer/save_customer_in_local_use_case.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Mock of CustomerRepository
class MockCustomerRepository extends Mock implements CustomerRepository {}

// Mock of SaveCustomerInLocalUseCase
class MockSaveCustomerInLocalUseCase extends Mock implements SaveCustomerInLocalUseCase {}

void main() {
  late GetCustomerUseCase useCase;
  late MockCustomerRepository mockCustomerRepository;
  late MockSaveCustomerInLocalUseCase mockSaveCustomerInLocalUseCase;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockCustomerRepository = MockCustomerRepository();
    mockSaveCustomerInLocalUseCase = MockSaveCustomerInLocalUseCase();

    useCase = GetCustomerUseCase(
      mockCustomerRepository,
      mockSaveCustomerInLocalUseCase,
    );
  });

  group('Get customer', () {
    // Mocking
    final remoteCustomerData = Customer(
        firstName: 'Jane',
        lastName: 'Smith',
        id: 1,
        email: 'jane.smith@example.com',
        dateOfBirth: DateTime(1990, 1, 1));

    final localCustomerData = jsonEncode(remoteCustomerData.toDTO().toJson());

    test('call should return local customer when mode is onlyLocal', () async {
      // Call the method under test

      final result = await useCase.call(mode: GetCustomerMode.onlyLocal);

      // Result verification
      final customerResult = result.getOrElse(() => throw Exception());
      expect(result, isA<Right<ErrorHandler, Customer>>());
      expect(customerResult, remoteCustomerData);

      verifyNever(() => mockSaveCustomerInLocalUseCase(remoteCustomerData));
      verifyNever(() => mockCustomerRepository.getCustomer());
    });

    // test('call should return remote customer and save it locally when mode is remote', () async {
    //   when(() => mockCustomerRepository.getCustomer()).thenAnswer((_) async => Right(remoteCustomerData));
    //   when(() => mockSaveCustomerInLocalUseCase.call(remoteCustomerData)).thenAnswer((_) async => {});
    //   // Call the method under test
    //   final result = await useCase.call(mode: GetCustomerMode.remote);
    //   // Result verification
    //   final customerResult = result.getOrElse(() => throw Exception());
    //   expect(result, isA<Right<ErrorHandler, Customer>>());
    //   expect(customerResult, remoteCustomerData);

    //   // Verify that the customer is saved locally
    //   verifyInOrder([
    //     () => mockCustomerRepository.getCustomer(),
    //     () => mockSaveCustomerInLocalUseCase(remoteCustomerData),
    //   ]);

    //   verifyNever(() => mockSecureStorageRepository.getData(KeySecureStorage.customer));
    // });

    // test('call should return local customer and save remote customer locally when mode is firstLocal', () async {
    //   when(() => mockCustomerRepository.getCustomer()).thenAnswer((_) async => Right(remoteCustomerData));
    //   when(() => mockSaveCustomerInLocalUseCase.call(remoteCustomerData)).thenAnswer((_) async => {});
    //   when(() => mockSecureStorageRepository.getData(KeySecureStorage.customer))
    //       .thenAnswer((_) async => localCustomerData);

    //   // Call the method under test
    //   final result = await useCase.call(mode: GetCustomerMode.firstLocal);

    //   // Result verification
    //   expect(result, isA<Right<ErrorHandler, Customer>>());
    //   expect(result.getOrElse(() => throw Exception()), remoteCustomerData);

    //   verify(() => mockSecureStorageRepository.getData(KeySecureStorage.customer)).called(1);
    // });

    // test('When get customer fail, return error', () async {
    //   final error = ErrorHandlerInternal(errorMessage: 'Error');
    //   when(() => mockCustomerRepository.getCustomer()).thenAnswer((_) async => Left(error));

    //   // Call the method under test
    //   final result = await useCase.call(mode: GetCustomerMode.remote);

    //   // Result verification
    //   expect(result.fold((l) => l, (r) => null), error);
    //   verify(() => mockCustomerRepository.getCustomer()).called(1);
    //   verifyNever(() => mockSaveCustomerInLocalUseCase(remoteCustomerData));
    //   verifyNever(() => mockSecureStorageRepository.getData(KeySecureStorage.customer));
    // });
  });
}
