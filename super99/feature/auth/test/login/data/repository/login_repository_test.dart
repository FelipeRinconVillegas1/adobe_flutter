import 'package:auth/login/data/dto/customer_tokens_dto.fr.dart';
import 'package:auth/login/data/repository/auth_repository.dart';
import 'package:auth/login/data/repository/auth_repository_impl.dart';
import 'package:core/data/dto/user_credential_response_dto.fr.dart';
import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:auth/login/data/datasource/login_datasource.dart';
import 'package:core/data/mapper.dart';
import 'package:core/domain/entity/session_data.dart';
import 'package:dartz/dartz.dart';

class MockLoginDatasource extends Mock implements LoginDatasource {}

void main() {
  late AuthRepository loginRepository;
  late MockLoginDatasource mockLoginDatasource;

  setUp(() async {
    mockLoginDatasource = MockLoginDatasource();
    loginRepository = AuthRepositoryImpl(mockLoginDatasource);
  });

  group('Login Repository', () {
    const email = 'test@example.com';
    const password = 'password';
    const token = 'test_token';
    const refreshToken = 'test_refresh_token';
    test('login should forward call to datasource', () async {
      // Mock the necessary dependencies
      when(() => mockLoginDatasource.login(email, password))
          .thenAnswer((_) async => const Right(CustomerTokensDTO(token: token, refreshToken: refreshToken)));

      // Perform the login operation
      final result = await loginRepository.login(email, password);

      // Verify the result
      expect(result, equals(const Right(token)));
      verify(() => mockLoginDatasource.login(email, password)).called(1);
    });

    test('login should return error, when data source return error', () async {
      final expectedError = ErrorHandlerInternal(errorMessage: 'errorMessage');
      // Mock the necessary dependencies
      when(() => mockLoginDatasource.login(email, password)).thenAnswer((_) async => Left(expectedError));

      // Perform the login operation
      final result = await loginRepository.login(email, password);

      // Verify the result
      expect(result, equals(Left(expectedError)));
      verify(() => mockLoginDatasource.login(email, password)).called(1);
    });
  });

  group('Login with social media', () {
    const token = 'test_token';

    test('saveSession should forward call to datasource', () async {
      // Mock the necessary dependencies
      final sessionData = SessionData(email: '', password: '', token: '', refreshToken: '');

      when(() => mockLoginDatasource.saveSession(sessionData.toDTO())).thenAnswer((_) async => () {});

      final sessionDataDTO = sessionData.toDTO();

      await loginRepository.saveSession(sessionData);

      // Verify the method call
      verify(() => mockLoginDatasource.saveSession(sessionDataDTO)).called(1);
    });

    test('saveSession should forward call to datasource', () async {
      const UserCredentialResponseDTO userCredentialResponseDTO = UserCredentialResponseDTO(
        email: 'email',
        provider: ProviderAuthentication.google,
        token: 'test_token',
      );
      // Mock the necessary dependencies
      when(() => mockLoginDatasource.getUserCredentialByProviderAuthentication(ProviderAuthentication.google))
          .thenAnswer((_) async => const Right(userCredentialResponseDTO));

      when(() => mockLoginDatasource.getTokenByUserCredential(userCredentialResponseDTO))
          .thenAnswer((_) async => const Right(token));

      // Perform the login operation
      final result = await loginRepository.loginWithProviderAuthentication(ProviderAuthentication.google);

      // Verify the result
      expect(result, equals(const Right(token)));
      verify(() => mockLoginDatasource.getUserCredentialByProviderAuthentication(ProviderAuthentication.google))
          .called(1);
      verify(() => mockLoginDatasource.getTokenByUserCredential(userCredentialResponseDTO)).called(1);
    });
  });
}
