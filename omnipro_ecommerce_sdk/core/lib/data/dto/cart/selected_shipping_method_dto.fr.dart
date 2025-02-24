import 'package:core/data/dto/money_dto.fr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_shipping_method_dto.fr.freezed.dart';
part 'selected_shipping_method_dto.fr.g.dart';

@freezed
class SelectedShippingMethodDTO with _$SelectedShippingMethodDTO {
  const factory SelectedShippingMethodDTO(
          {@JsonKey(name: 'carrier_code') required String carrierCode,
          @JsonKey(name: 'carrier_title') required String carrierTitle,
          @JsonKey(name: 'method_code') required String methodCode,
          @JsonKey(name: 'method_title') required String methodTitle,
          required MoneyDTO amount}) =
      _SelectedShippingMethodDTO;

  factory SelectedShippingMethodDTO.fromJson(Map<String, Object?> json) => _$SelectedShippingMethodDTOFromJson(json);
}
