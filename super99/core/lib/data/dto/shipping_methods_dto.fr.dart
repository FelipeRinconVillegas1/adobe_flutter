import 'package:freezed_annotation/freezed_annotation.dart';
part 'shipping_methods_dto.fr.freezed.dart';

part 'shipping_methods_dto.fr.g.dart';

@freezed
class ShippingMethodsDTO with _$ShippingMethodsDTO {
  const factory ShippingMethodsDTO({
    required List<ShippingMethodItemDTO> items,
  }) = _ShippingMethodsDTO;

  factory ShippingMethodsDTO.fromJson(Map<String, dynamic> json) => _$ShippingMethodsDTOFromJson(json);
}

@freezed
class ShippingMethodItemDTO with _$ShippingMethodItemDTO {
  const factory ShippingMethodItemDTO({
    required String code,
    required String name,
    required String message,
  }) = _ShippingMethodIemDTO;

  factory ShippingMethodItemDTO.fromJson(Map<String, dynamic> json) => _$ShippingMethodItemDTOFromJson(json);
}
