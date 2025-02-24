import 'package:freezed_annotation/freezed_annotation.dart';

part 'enabled_shipping_method_dto.fr.freezed.dart';

part 'enabled_shipping_method_dto.fr.g.dart';

@freezed
class EnabledShippingMethodDTO with _$EnabledShippingMethodDTO {
  const factory EnabledShippingMethodDTO({
    @JsonKey(name: 'method_code') required String methodCode,
    @JsonKey(name: 'method_label') required String methodLabel,
  }) = _EnabledShippingMethodDTO;

  factory EnabledShippingMethodDTO.fromJson(Map<String, dynamic> json) => _$EnabledShippingMethodDTOFromJson(json);
}
