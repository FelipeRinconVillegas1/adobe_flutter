import 'dart:convert';
import 'package:core/utils/extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart_oms_options_dto.fr.freezed.dart';

part 'add_to_cart_oms_options_dto.fr.g.dart';

@freezed
class AddToCartOmsOptionsDTO with _$AddToCartOmsOptionsDTO {
  const factory AddToCartOmsOptionsDTO({
    @JsonKey(name: 'oms_cid') required String omsCid,
    @JsonKey(name: 'oms_code') required String omsCode,
    @JsonKey(name: 'oms_notes', defaultValue: "") String? omsNotes,
    @JsonKey(name: 'oms_shipping_method') required String omsShippingMethod,
    @JsonKey(name: 'oms_store_name') String? omsStoreName,
  }) = _AddToCartOmsOptionsDTO;

  factory AddToCartOmsOptionsDTO.fromJson(Map<String, Object?> json) => _$AddToCartOmsOptionsDTOFromJson(json);
}

extension ToMutation on AddToCartOmsOptionsDTO {
  String toParamMutation() => toParamMutationHelper(jsonEncode(toJson()));
}
