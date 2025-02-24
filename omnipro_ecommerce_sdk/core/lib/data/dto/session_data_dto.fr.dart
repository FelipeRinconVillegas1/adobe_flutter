import 'package:core/data/dto/user_credential_response_dto.fr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_data_dto.fr.freezed.dart';

part 'session_data_dto.fr.g.dart';

@freezed
class SessionDataDTO with _$SessionDataDTO {
  const factory SessionDataDTO({
    required String token,
    @JsonValue("refresh_token") String? refreshToken,
    String? email,
    String? password,
    UserCredentialResponseDTO? userCredentialResponseDTO,
  }) = _SessionDataDTO;

  factory SessionDataDTO.fromJson(Map<String, Object?> json) => _$SessionDataDTOFromJson(json);
}
