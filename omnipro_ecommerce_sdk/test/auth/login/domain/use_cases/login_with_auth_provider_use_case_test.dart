import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/domain/entity/session_data.dart';
import 'package:core/domain/entity/user_credential_response.dart';
import 'package:core/domain/use_case/customer/get_customer_use_case.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:omnipro_ecommerce_sdk/auth/login/data/repository/auth_repository.dart';
import 'package:omnipro_ecommerce_sdk/auth/login/domain/entity/login_with_auth_provider.dart';
import 'package:omnipro_ecommerce_sdk/auth/login/domain/use_case/login_with_auth_provider_use_case.dart';

class MockLoginRepository extends Mock implements AuthRepository {}

class MockGetCustomerUseCase extends Mock implements GetCustomerUseCase {}

void main() {
  late LoginWithAuthProviderUseCase loginUseCase;
  late MockLoginRepository mockLoginRepository;
  late MockGetCustomerUseCase mockGetCustomerUseCase;
  const email = 'test@example.com';
  const password = 'password';
  const token = 'test_token';
  const refreshToken = 'test_refresh_token';

  setUp(() async {
    mockLoginRepository = MockLoginRepository();
    mockGetCustomerUseCase = MockGetCustomerUseCase();
    loginUseCase = LoginWithAuthProviderUseCase(mockLoginRepository, mockGetCustomerUseCase);
  });

  group('LoginWithAuthProviderUseCase ', () {
    final sessionData = SessionData(email: email, password: password, token: token, refreshToken: refreshToken);
    final customerMock = Customer(
        firstName: 'firstName',
        id: 1,
        lastName: 'lastName',
        email: 'email',
        customAttributesRequired: {},
        dateOfBirth: DateTime(1990, 1, 1));
    registerFallbackValue(sessionData);

    test('call with social media  should return Right(true) on successful login', () async {
      when(() => mockLoginRepository.loginWithProviderAuthentication(ProviderAuthentication.google))
          .thenAnswer((_) async => right(LoginAuthProviderResponse(
                userCredentialResponse: const UserCredentialResponse(
                  token: token,
                  provider: ProviderAuthentication.google,
                ),
                tokenAdobe: token,
              )));

      when(() => mockLoginRepository.saveSession(any())).thenAnswer((_) async {});

      when(() => mockGetCustomerUseCase.call(mode: GetCustomerMode.remote))
          .thenAnswer((_) async => right(customerMock));

      // Call the use case
      final result = await loginUseCase.call(providerAuthentication: ProviderAuthentication.google);

      // Verify the result
      expect(result.fold((l) => null, (r) => r), customerMock);
      verify(() => mockLoginRepository.loginWithProviderAuthentication(ProviderAuthentication.google)).called(1);
      verify(() => mockLoginRepository.saveSession(any())).called(1);
    });

    ///Error case
    test('call with social media  should return Right(ErorHandler) on error login', () async {
      final sessionData = SessionData(email: email, password: password, token: token, refreshToken: refreshToken);
      final customerMock = Customer(
          firstName: 'firstName',
          lastName: 'lastName',
          id: 1,
          email: 'email',
          customAttributesRequired: {},
          dateOfBirth: DateTime(1990, 1, 1));
      registerFallbackValue(sessionData);

      final error = ErrorHandlerExternal(
          errorMessage: 'errorMessage', errorCode: ErrorCode.errorLoginWithCredential, error: Exception('error'));

      when(() => mockLoginRepository.loginWithProviderAuthentication(ProviderAuthentication.google))
          .thenAnswer((_) async => left(error));

      when(() => mockLoginRepository.saveSession(any())).thenAnswer((_) async {});

      when(() => mockGetCustomerUseCase.call(mode: GetCustomerMode.remote))
          .thenAnswer((_) async => right(customerMock));

      // Call the use case
      final result = await loginUseCase.call(providerAuthentication: ProviderAuthentication.google);

      // Verify the result
      expect(result.fold((l) => l, (r) => r), error);
      verify(() => mockLoginRepository.loginWithProviderAuthentication(ProviderAuthentication.google)).called(1);
      verifyNever(() => mockLoginRepository.saveSession(any()));
    });
  });
}
