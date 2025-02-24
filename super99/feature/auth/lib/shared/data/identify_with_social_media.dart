import 'dart:convert';
import 'dart:math';
import 'package:core/data/dto/user_credential_response_dto.fr.dart';
import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:crypto/crypto.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

/// This class is responsible for identify with social media (Google, Facebook, Apple)
/// perform the authentication with firebase and return the user credential.
class IdentifyWithSocialMedia {
  final GoogleSignIn _googleSignIn;

  IdentifyWithSocialMedia(this._googleSignIn);

  Future<Either<ErrorHandler, UserCredentialResponseDTO>> call(ProviderAuthentication providerAuthentication) async {
    switch (providerAuthentication) {
      case ProviderAuthentication.google:
        return identifyWithGoogle();
      case ProviderAuthentication.facebook:
        return identifyWithFacebook();
      case ProviderAuthentication.apple:
        return identifyWithApple();
      default:
        return left(ErrorHandlerExternal(errorCode: 'SIGN_IN_SOCIAL_MEDIA', errorMessage: 'Provider not found'));
    }
  }

  Future<Either<ErrorHandler, UserCredentialResponseDTO>> identifyWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(ErrorHandlerExternal(errorCode: ErrorCode.errorSignInGoogle, errorMessage: 'Google user is null'));
      }

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final idToken = googleAuth.idToken;
      final accessToken = googleAuth.accessToken!;

      final decodeIdToken = JWT.decode(idToken!);

      return right(UserCredentialResponseDTO(
        sub: decodeIdToken.payload['sub'],
        token: accessToken,
        provider: ProviderAuthentication.google,
        firstName: decodeIdToken.payload['given_name'] ?? '',
        lastName: decodeIdToken.payload['family_name'] ?? '',
        email: decodeIdToken.payload['email'] ?? '',
      ));
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorSignInGoogle, errorMessage: e.toString()));
    }
  }

  Future<Either<ErrorHandler, UserCredentialResponseDTO>> identifyWithFacebook() async {
    try {
  /*    // Trigger the sign-in flow
      final LoginResult loginResult = await _facebookLogin.login();

      if (loginResult.accessToken == null) {
        return left(ErrorHandlerExternal(
            errorCode: ErrorCode.errorSignInFacebook, errorMessage: 'Facebook accessToken is null'));
      }

      switch (loginResult.status) {
        case LoginStatus.success:
          final userResultFacebook = await _facebookLogin.getUserData(fields: "email,first_name,last_name,id");

          return right(UserCredentialResponseDTO(
            sub: userResultFacebook['id'],
            firstName: userResultFacebook['first_name'] ?? '',
            lastName: userResultFacebook['last_name'] ?? '',
            token: loginResult.accessToken?.token ?? '',
            provider: ProviderAuthentication.facebook,
            email: userResultFacebook['email'] ?? '',
          ));
        case LoginStatus.cancelled:
          return left(
              ErrorHandlerExternal(errorCode: ErrorCode.errorSignInFacebook, errorMessage: 'Facebook sign up cancel'));
        default:
          return left(
              ErrorHandlerExternal(errorCode: ErrorCode.errorSignInFacebook, errorMessage: 'Facebook sign up failed'));
      }*/
      throw Exception('Facebook not implemented');
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorSignInFacebook, errorMessage: e.toString()));
    }
  }

  Future<Either<ErrorHandler, UserCredentialResponseDTO>> identifyWithApple() async {
    try {
      // To prevent replay attacks with the credential returned from Apple, we
      // include a nonce in the credential request. When signing in with
      // Firebase, the nonce in the id token returned by Apple, is expected to
      // match the sha256 hash of `rawNonce`.
      final rawNonce = _generateNonce();
      final nonce = _sha256ofString(rawNonce);

      // Request credential for the currently signed in Apple account.
      final AuthorizationCredentialAppleID appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: nonce,
      );

      return right(UserCredentialResponseDTO(
        sub: appleCredential.userIdentifier,
        token: appleCredential.identityToken ?? '',
        nonce: rawNonce,
        provider: ProviderAuthentication.apple,
        firstName: appleCredential.givenName ?? '',
        lastName: appleCredential.familyName ?? '',
        authCode: appleCredential.authorizationCode,
        email: appleCredential.email ?? '',
      ));
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorSignInApple, errorMessage: 'Apple sign up failed'));
    }
  }

  /// Generates a cryptographically secure random nonce, to be included in a
  /// credential request.
  String _generateNonce([int length = 32]) {
    const charset = '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)]).join();
  }

  /// Returns the sha256 hash of [input] in hex notation.
  String _sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
}
