import 'package:core/data/dto/cart/selected_shipping_method_dto.fr.dart';
import 'package:core/data/dto/localization_item_dto.fr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_address_on_cart_dto.fr.freezed.dart';

part 'shipping_address_on_cart_dto.fr.g.dart';

@freezed
class ShippingAddressOnCartDTO with _$ShippingAddressOnCartDTO {
  const factory ShippingAddressOnCartDTO({
    required String firstname,
    required String lastname,
    required List<String> street,
    required String city,
    required String telephone,
    String? postcode,
    required LocalizationItemDTO country,
    @JsonKey(name: 'city_custom') String? cityCustom,
    @JsonKey(name: 'state_custom') String? stateCustom,
    @JsonKey(name: 'zone_custom') String? zoneCustom,
    @JsonKey(name: 'selected_shipping_method') SelectedShippingMethodDTO? selectedShippingMethod,
    @Default([]) @JsonKey(name: 'available_shipping_methods') List<SelectedShippingMethodDTO> availableShippingMethods,
  }) = _ShippingAddressOnCartDTO;

  factory ShippingAddressOnCartDTO.fromJson(Map<String, Object?> json) => _$ShippingAddressOnCartDTOFromJson(json);
}
