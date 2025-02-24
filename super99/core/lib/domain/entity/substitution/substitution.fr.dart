import 'package:freezed_annotation/freezed_annotation.dart';

part 'substitution.fr.freezed.dart';

@freezed
class Substitution with _$Substitution {
  const factory Substitution({
    @JsonKey(name: 'custom_code') String? customCode,
    required String option,
    @JsonKey(name: 'css_classname') required String cssClassname,
    required String description,
  }) = _Substitution;
}

@freezed
class SubstitutionResponse with _$SubstitutionResponse {
  const factory SubstitutionResponse({
    @JsonKey(name: 'cart_id') required String cartId,
    @JsonKey(name: 'receiving_substitutions') required String receivingSubstitutions,
  }) = _SubstitutionResponse;
}
