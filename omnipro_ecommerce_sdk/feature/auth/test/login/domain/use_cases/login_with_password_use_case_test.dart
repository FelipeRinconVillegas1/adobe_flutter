import 'package:auth/login/domain/entity/customer_tokens_entity.dart';
import 'package:auth/login/domain/use_case/login_with_password_use_case.dart';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/domain/use_case/customer/get_customer_use_case.dart';
import 'package:core/domain/use_case/suggested_texts/save_suggested_email_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:auth/login/data/repository/auth_repository.dart';
import 'package:core/domain/entity/session_data.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class MockLoginRepository extends Mock implements AuthRepository {}

class MockGetCustomerUseCase extends Mock implements GetCustomerUseCase {}

class MockSuggestedEmailUseCase extends Mock implements SaveSuggestedEmailUseCase {}

void main() {
  late LoginWithPasswordUseCase loginUseCase;
  late MockLoginRepository mockLoginRepository;
  late MockGetCustomerUseCase mockGetCustomerUseCase;
  late MockSuggestedEmailUseCase mockSuggestedEmailUseCase;

  setUp(() async {
    mockGetCustomerUseCase = MockGetCustomerUseCase();
    mockLoginRepository = MockLoginRepository();
    mockSuggestedEmailUseCase = MockSuggestedEmailUseCase();
    loginUseCase = LoginWithPasswordUseCase(mockLoginRepository, mockGetCustomerUseCase,mockSuggestedEmailUseCase);
  });

  group('Login UseCase', () {
    const email = 'test@example.com';
    const password = 'password';
    const token = 'test_token';
    const refreshToken = 'test_refresh_token';

    final customerMock = Customer(
        id: 1,
        firstName: 'firstName',
        lastName: 'lastName',
        email: 'email',
        customAttributesRequired: {},
        dateOfBirth: DateTime(1990, 1, 1));
    test('call with email and password should return Right(true) on successful login', () async {
      // Mock the necessary dependencies

      final sessionData = SessionData(email: email, password: password, token: token, refreshToken: refreshToken);

      when(() => mockLoginRepository.login(email, password))
          .thenAnswer((_) async => right(const CustomerTokensEntity(token: token, refreshToken: refreshToken)));

      when(() => mockLoginRepository.saveSession(sessionData)).thenAnswer((_) async {});

      when(() => mockGetCustomerUseCase.call(mode: GetCustomerMode.remote))
          .thenAnswer((_) async => right(customerMock));

      // Call the use case
      final result = await loginUseCase.call(email: email, password: password);

      // Verify the result
      expect(result.fold((l) => null, (r) => r), customerMock);
      verify(() => mockLoginRepository.login(email, password)).called(1);
      verify(() => mockLoginRepository.saveSession(sessionData)).called(1);
    });

    test('call should return Left(ErrorHandlerExternal) on exception', () async {
      // Mock the necessary dependencies
      final exception = Exception('Login failed');
      final mockResult = Left(ErrorHandlerExternal(
          errorMessage: exception.toString(), errorCode: ErrorCode.errorLoginWithCredential, error: exception));

      when(() => mockLoginRepository.login(email, password)).thenAnswer((_) async => throw exception);

      // Call the use case
      final result = await loginUseCase.call(email: email, password: password);

      // Verify the result
      expect(result, equals(mockResult));
      verify(() => mockLoginRepository.login(email, password)).called(1);
    });
  });
}
