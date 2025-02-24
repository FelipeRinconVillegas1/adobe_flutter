import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_shipping_method_dto.fr.freezed.dart';

part 'config_shipping_method_dto.fr.g.dart';

@freezed
class ConfigShippingMethodDTO with _$ConfigShippingMethodDTO {
  factory ConfigShippingMethodDTO({
    required String carrierCode,
    required String methodCode,
  }) = _ConfigShippingMethodDTO;

  factory ConfigShippingMethodDTO.fromJson(Map<String, dynamic> json) => _$ConfigShippingMethodDTOFromJson(json);
}
