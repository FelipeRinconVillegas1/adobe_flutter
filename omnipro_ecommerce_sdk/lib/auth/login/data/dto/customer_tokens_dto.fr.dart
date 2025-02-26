import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_tokens_dto.fr.freezed.dart';
part 'customer_tokens_dto.fr.g.dart';

@freezed
class CustomerTokensDTO with _$CustomerTokensDTO {
  const factory CustomerTokensDTO({
    required String token,
    @JsonKey(name: 'refresh_token') String? refreshToken,
  }) = _CustomerTokensDTO;

  factory CustomerTokensDTO.fromJson(Map<String, Object?> json) => _$CustomerTokensDTOFromJson(json);
}
