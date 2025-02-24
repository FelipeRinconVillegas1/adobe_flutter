import 'package:core/domain/entity/user_credential_response.dart';

class LoginAuthProviderResponse {
  final UserCredentialResponse userCredentialResponse;
  final String tokenAdobe;

  LoginAuthProviderResponse({required this.userCredentialResponse, required this.tokenAdobe});
}
