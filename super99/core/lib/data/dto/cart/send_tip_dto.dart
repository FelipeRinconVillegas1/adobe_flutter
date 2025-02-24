import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/extension.dart';

part 'send_tip_dto.freezed.dart';
part 'send_tip_dto.g.dart';

@freezed
class SendTipDTO with _$SendTipDTO {
  const factory SendTipDTO({
    @JsonKey(name: 'cart_id') required String cartId,
    @JsonKey(name: 'tip') required String tip,
  }) = _SendTipDTO;

  factory SendTipDTO.fromJson(Map<String, dynamic> json) => _$SendTipDTOFromJson(json);
}

extension ToMutation on SendTipDTO {
  String toParamMutation() => toParamMutationHelper(jsonEncode(toJson()));
}

@freezed
class SendTipResponseDTO with _$SendTipResponseDTO {
  const factory SendTipResponseDTO({
    required String message,
    required String code,
    @JsonKey(name: 'cart_id') required String cartId,
  }) = _SendTipResponseDTO;

  factory SendTipResponseDTO.fromJson(Map<String, dynamic> json) => _$SendTipResponseDTOFromJson(json);
}
