import 'package:core/domain/entity/provider_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_credential_response_dto.fr.freezed.dart';

part 'user_credential_response_dto.fr.g.dart';

@freezed
class UserCredentialResponseDTO with _$UserCredentialResponseDTO {
  const factory UserCredentialResponseDTO({
    String? firstName,
    String? lastName,
    String? email,
    String? sub,
    String? nonce,
    String? authCode,
    required String token,
    required ProviderAuthentication provider,
  }) = _UserCredentialResponseDTO;

  factory UserCredentialResponseDTO.fromJson(Map<String, Object?> json) => _$UserCredentialResponseDTOFromJson(json);
}
