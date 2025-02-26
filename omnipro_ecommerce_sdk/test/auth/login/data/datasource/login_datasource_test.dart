import 'dart:convert';
import 'package:core/data/dto/user_credential_response_dto.fr.dart';
import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/network/graphql_helper_test.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/data/dto/session_data_dto.fr.dart';
import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/network/graphql/token_mutation.dart';
import 'package:dartz/dartz.dart';
import 'package:omnipro_ecommerce_sdk/auth/login/data/datasource/login_datasource.dart';
import 'package:omnipro_ecommerce_sdk/auth/login/data/datasource/login_datasource_impl.dart';
import 'package:omnipro_ecommerce_sdk/auth/login/data/datasource/login_mutation.dart';
import 'package:omnipro_ecommerce_sdk/auth/shared/data/identify_with_social_media.dart';

class MockGraphQLService extends Mock implements GraphQLService {}

class MockSecureStorageDatasource extends Mock implements SecureStorageDatasource {}

class MockIdentifyWithSocialMedia extends Mock implements IdentifyWithSocialMedia {}

void main() {
  late LoginDatasource loginDatasource;
  late MockGraphQLService mockGraphQLService;
  late MockSecureStorageDatasource mockSecureStorageDatasource;
  late MockIdentifyWithSocialMedia mockIdentifyWithSocialMedia;

  setUp(() async {
    mockGraphQLService = MockGraphQLService();
    mockIdentifyWithSocialMedia = MockIdentifyWithSocialMedia();
    mockSecureStorageDatasource = MockSecureStorageDatasource();
    loginDatasource = LoginDatasourceImpl(mockGraphQLService, mockSecureStorageDatasource, mockIdentifyWithSocialMedia);
  });

  group('Login Datasource', () {
    const email = 'test@example.com';
    const password = 'password';
    test('login should return token on success', () async {
      // Mock the necessary dependencies

      const token = 'test_token';

      final mockResult = mockMutation(response: {
        'generateCustomerToken': {'token': token}
      });

      when(() => mockGraphQLService.mutation(any())).thenAnswer((_) async => Right(mockResult));

      // Perform the login operation
      final result = await loginDatasource.login(email, password);

      // Verify the result
      expect(result, equals(const Right(token)));
      verify(() => mockGraphQLService.mutation(generateTokenCustomer(email, password))).called(1);
    });

    test('login should return token on success with social media, when credential is valid', () async {
      // Mock the necessary dependencies

      const UserCredentialResponseDTO userCredentialResponseDTO = UserCredentialResponseDTO(
        email: email,
        provider: ProviderAuthentication.google,
        sub: '123456789',
        token: 'test_token',
      );

      when(() => mockIdentifyWithSocialMedia(ProviderAuthentication.google))
          .thenAnswer((_) async => const Right(userCredentialResponseDTO));

      // Perform the login operation
      final result = await loginDatasource.getUserCredentialByProviderAuthentication(ProviderAuthentication.google);

      // Verify the result
      expect(result, equals(const Right('TODO')));
      verify(() => mockIdentifyWithSocialMedia(ProviderAuthentication.google)).called(1);
    });

    test('login should return error on failure', () async {
      // Mock the necessary dependencies
      final mockResult = Left(ErrorHandlerInternal(
        errorMessage: 'Server error',
      ));

      when(() => mockGraphQLService.mutation(any())).thenAnswer((_) async => Left(ErrorHandlerInternal(
            errorMessage: 'Server error',
          )));

      // Perform the login operation
      final result = await loginDatasource.login(email, password);

      // Verify the result
      verify(() => mockGraphQLService.mutation(generateTokenCustomer(email, password))).called(1);
      expect(result, equals(mockResult));
    });

    test('saveSession should call saveData', () async {
      // Mock the necessary dependencies
      const sessionData = SessionDataDTO(email: '', password: '', token: '');
      final jsonData = sessionData.toJson();

      when(() => mockSecureStorageDatasource.saveData(KeySecureStorage.sessionData, any()))
          .thenAnswer((_) async => () {});

      await loginDatasource.saveSession(sessionData);

      // Verify the method call
      verify(() => mockSecureStorageDatasource.saveData(KeySecureStorage.sessionData, jsonEncode(jsonData))).called(1);
    });
  });

  group('Reset password with email', () {
    String mockEmail = 'jhonDoe@gmail.com';
    test('Reset  password with email success', () async {
      // Mock the necessary dependencies

      final mockResult = mockMutation(response: {"requestPasswordResetEmail": true});

      when(() => mockGraphQLService.mutation(any())).thenAnswer((_) async => Right(mockResult));

      // Perform the login operation
      final result = await loginDatasource.requestPasswordResetEmail(mockEmail);

      // Verify the result
      expect(result, equals(const Right(true)));
      verify(() => mockGraphQLService.mutation(requestPasswordResetEmailMutation(mockEmail))).called(1);
    });

    test('Reset password with email failure by The account is locked', () async {
      when(() => mockGraphQLService.mutation(any()))
          .thenAnswer((_) async => left(ErrorHandlerExternal(errorCode: ErrorCode.accountLocked, errorMessage: '')));

      // Perform the login operation
      final result = await loginDatasource.requestPasswordResetEmail(mockEmail);

      // Verify the result
      expect(result, equals(Left(ErrorHandlerExternal(errorCode: ErrorCode.accountLocked, errorMessage: ''))));
      verify(() => mockGraphQLService.mutation(requestPasswordResetEmailMutation(mockEmail))).called(1);
    });
  });
}
