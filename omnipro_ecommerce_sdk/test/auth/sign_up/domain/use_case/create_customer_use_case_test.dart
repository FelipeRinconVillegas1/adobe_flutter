import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/local/data/repository/secure_storege_repository.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:omnipro_ecommerce_sdk/auth/login/domain/use_case/login_with_password_use_case.dart';
import 'package:omnipro_ecommerce_sdk/auth/sign_up/data/repository/sign_up_repository.dart';
import 'package:omnipro_ecommerce_sdk/auth/sign_up/domain/entity/create_customer_data.dart';
import 'package:omnipro_ecommerce_sdk/auth/sign_up/domain/use_case/create_customer_use_case.dart';

class MockSingUpRepository extends Mock implements SignUpRepository {}

class MockLoginUseCase extends Mock implements LoginWithPasswordUseCase {}

class MockSecureStorageRepository extends Mock implements SecureStorageRepository {}

void main() {
  late CreateCustomerUseCase createCustomerUseCase;
  late MockSingUpRepository mockSignUpRepository;
  late MockSecureStorageRepository mockSecureStorageRepository;
  late MockLoginUseCase mockLoginUseCase;

  setUp(() async {
    mockLoginUseCase = MockLoginUseCase();
    mockSignUpRepository = MockSingUpRepository();
    mockSecureStorageRepository = MockSecureStorageRepository();
    createCustomerUseCase = CreateCustomerUseCase(mockSignUpRepository, mockSecureStorageRepository, mockLoginUseCase);
  });

  group('Create customer', () {
    final mockCustomer = Customer(
        firstName: 'firstname',
        id: 1,
        lastName: 'lastname',
        email: 'email',
        dateOfBirth: DateTime(1990, 1, 1));

    final dataCreateCustomer = CreateCustomerData(
      firstname: 'John',
      lastname: 'Doe',
      email: '',
      password: '',
      date: DateTime(2000),
      gender: 1,
    );

    test('should create a customer', () async {
      // arrange
      when(() => mockSignUpRepository.createCustomer(dataCreateCustomer)).thenAnswer((_) async => Right(mockCustomer));

      when(() => mockLoginUseCase.call(email: dataCreateCustomer.email, password: dataCreateCustomer.password))
          .thenAnswer((_) async => Right(mockCustomer));

      // act
      final result = await createCustomerUseCase.call(dataCreateCustomer);
      // assert
      expect(result, Right(mockCustomer));
      verify(() => mockSignUpRepository.createCustomer(dataCreateCustomer)).called(1);
      verify(() => mockLoginUseCase.call(email: dataCreateCustomer.email, password: dataCreateCustomer.password))
          .called(1);
    });

    test('should return error when repository returns error', () async {
      final expectedError = ErrorHandlerInternal(errorMessage: 'errorMessage');
      // arrange
      when(() => mockSignUpRepository.createCustomer(dataCreateCustomer)).thenAnswer((_) async => Left(expectedError));

      // act
      final result = await createCustomerUseCase.call(dataCreateCustomer);
      // assert
      expect(result.fold((l) => l, (r) => null), expectedError);
      verify(() => mockSignUpRepository.createCustomer(dataCreateCustomer)).called(1);
    });

    test('should return error when login returns error', () async {
      final expectedError = ErrorHandlerInternal(errorMessage: 'errorMessage');

      // arrange
      when(() => mockSignUpRepository.createCustomer(dataCreateCustomer)).thenAnswer((_) async => Right(mockCustomer));

      when(() => mockLoginUseCase.call(email: dataCreateCustomer.email, password: dataCreateCustomer.password))
          .thenAnswer((_) async => left(expectedError));

      // act
      final result = await createCustomerUseCase.call(dataCreateCustomer);
      // assert
      expect(result.fold((l) => l, (r) => null), expectedError);
      verify(() => mockSignUpRepository.createCustomer(dataCreateCustomer)).called(1);
      verify(
        () => mockLoginUseCase.call(email: dataCreateCustomer.email, password: dataCreateCustomer.password),
      ).called(1);
    });
  });
}
