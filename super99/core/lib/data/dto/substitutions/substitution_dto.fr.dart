import 'package:freezed_annotation/freezed_annotation.dart';

part 'substitution_dto.fr.freezed.dart';
part 'substitution_dto.fr.g.dart';

@freezed
class SubstitutionDTO with _$SubstitutionDTO {
  const factory SubstitutionDTO({
    @JsonKey(name: 'custom_code') String? customCode,
    required String option,
    @JsonKey(name: 'css_classname') required String cssClassname,
    required String description,
  }) = _SubstitutionDTO;

  factory SubstitutionDTO.fromJson(Map<String, Object?> json) => _$SubstitutionDTOFromJson(json);
}

@freezed
class SubstitutionResponseDTO with _$SubstitutionResponseDTO {
  const factory SubstitutionResponseDTO({
    @JsonKey(name: 'cart_id') required String cartId,
    @JsonKey(name: 'receiving_substitutions') required String receivingSubstitutions,
  }) = _SubstitutionResponseDTO;

  factory SubstitutionResponseDTO.fromJson(Map<String, Object?> json) => _$SubstitutionResponseDTOFromJson(json);
}
