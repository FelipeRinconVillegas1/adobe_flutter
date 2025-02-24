// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_address_on_cart_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShippingAddressOnCartDTOImpl _$$ShippingAddressOnCartDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ShippingAddressOnCartDTOImpl(
  firstname: json['firstname'] as String,
  lastname: json['lastname'] as String,
  street: (json['street'] as List<dynamic>).map((e) => e as String).toList(),
  city: json['city'] as String,
  telephone: json['telephone'] as String,
  postcode: json['postcode'] as String?,
  country: LocalizationItemDTO.fromJson(
    json['country'] as Map<String, dynamic>,
  ),
  cityCustom: json['city_custom'] as String?,
  stateCustom: json['state_custom'] as String?,
  zoneCustom: json['zone_custom'] as String?,
  selectedShippingMethod:
      json['selected_shipping_method'] == null
          ? null
          : SelectedShippingMethodDTO.fromJson(
            json['selected_shipping_method'] as Map<String, dynamic>,
          ),
  availableShippingMethods:
      (json['available_shipping_methods'] as List<dynamic>?)
          ?.map(
            (e) =>
                SelectedShippingMethodDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$$ShippingAddressOnCartDTOImplToJson(
  _$ShippingAddressOnCartDTOImpl instance,
) => <String, dynamic>{
  'firstname': instance.firstname,
  'lastname': instance.lastname,
  'street': instance.street,
  'city': instance.city,
  'telephone': instance.telephone,
  'postcode': instance.postcode,
  'country': instance.country,
  'city_custom': instance.cityCustom,
  'state_custom': instance.stateCustom,
  'zone_custom': instance.zoneCustom,
  'selected_shipping_method': instance.selectedShippingMethod,
  'available_shipping_methods': instance.availableShippingMethods,
};
