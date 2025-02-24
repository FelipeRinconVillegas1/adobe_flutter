import 'package:freezed_annotation/freezed_annotation.dart';
import 'localization_message_dto.fr.dart';

part 'complement_share_product_dto.fr.freezed.dart';

part 'complement_share_product_dto.fr.g.dart';

@freezed
class ComplementShareProductDTO with _$ComplementShareProductDTO {
  const factory ComplementShareProductDTO({
    required String url,
    @JsonKey(name: 'message') required LocalizationMessageDTO initialMessage,
  }) = _ComplementShareProductDTO;

  factory ComplementShareProductDTO.fromJson(Map<String, Object?> json) => _$ComplementShareProductDTOFromJson(json);
}
