import 'package:core/data/dto/user_credential_response_dto.fr.dart';

class LoginAuthProviderResponseDTO {
  final UserCredentialResponseDTO userCredentialResponseDTO;
  final String tokenAdobe;

  LoginAuthProviderResponseDTO({required this.userCredentialResponseDTO, required this.tokenAdobe});
}
