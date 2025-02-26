import 'package:core/data/dto/user_credential_response_dto.fr.dart';
import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/domain/entity/user_credential_response.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mocktail/mocktail.dart';
import 'package:omnipro_ecommerce_sdk/auth/shared/data/identify_with_social_media.dart';

class MockSignInAccount extends Mock implements GoogleSignInAccount {}

class MockSignInAuthentication extends Mock implements GoogleSignInAuthentication {}


class MockGoogleSignIn extends Mock implements GoogleSignIn {}

void main() {
  late IdentifyWithSocialMedia identifyWithSocialMedia;
  late MockGoogleSignIn mockGoogleSignIn;

  //--------DATA MOCKS----------------
  const accessToken = 'googleAuth.accessToken';
  const idToken = 'idToken';
  // Arrange
  const UserCredentialResponse mockCredential = UserCredentialResponse(
    token: accessToken,
    provider: ProviderAuthentication.google,
  );

  const useCredentialExpected = UserCredentialResponseDTO(
      sub: 'someuid',
      token: idToken,
      lastName: '',
      email: 'bob@somedomain.com',
      firstName: 'Bob',
      provider: ProviderAuthentication.google);
  // ----------------------------------

  late GoogleSignInAccount mockSignInAccount;

  setUp(() async {
    mockSignInAccount = MockSignInAccount();
    mockGoogleSignIn = MockGoogleSignIn();
    identifyWithSocialMedia = IdentifyWithSocialMedia(mockGoogleSignIn);
  });

  ///TODO: FELIPE REVISAR ESTOS TESTS
  group('Identify with google', () {
    test('should return user  when google login is success', () async {
      registerFallbackValue(mockCredential);

      final mockSignInAuthentication = MockSignInAuthentication();

      when(() => mockGoogleSignIn.signIn()).thenAnswer((_) async => mockSignInAccount);

      when(() => mockSignInAccount.authentication).thenAnswer((_) async => mockSignInAuthentication);

      when(() => mockSignInAuthentication.accessToken).thenReturn(accessToken);
      when(() => mockSignInAuthentication.idToken).thenReturn(
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjkyMDc4Mzk0NSIsImdpdmVuX25hbWUiOiJKb2huIiwiZmFtaWx5X25hbWUi'
          'OiJEb2UiLCJlbWFpbCI6ImJvYkBzb21lZG9tYWluLmNvbSJ9.5hDrFwGjmVVoGcqZVu_AUHUFcZ31mqtnnoQxjXU9N2E');

      // act
      final result = await identifyWithSocialMedia.identifyWithGoogle();
      // assert
      expect(result.isRight(), true);
      expect(
          result.fold((l) => null, (r) => r),
          UserCredentialResponseDTO(
              token: accessToken,
              provider: ProviderAuthentication.google,
              sub: '12920783945',
              email: useCredentialExpected.email,
              firstName: 'John',
              lastName: 'Doe'));
    });

    test(
        'should return ErrorHandlerExternal with code SIGN_IN_GOOGLE when google'
        ' login is cancelled by the user', () async {
      // Arrange
      when(() => mockGoogleSignIn.signIn()).thenAnswer((_) async => null);

      final expectError =
          ErrorHandlerExternal(errorCode: ErrorCode.errorSignInGoogle, errorMessage: 'Google user is null');
      // act
      final result = await identifyWithSocialMedia.identifyWithGoogle();
      // assert
      expect(result, left(expectError));
    });
  });
}
