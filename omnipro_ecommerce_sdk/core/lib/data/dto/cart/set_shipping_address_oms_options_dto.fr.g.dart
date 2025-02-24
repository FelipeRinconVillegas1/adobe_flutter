// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_shipping_address_oms_options_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetShippingAddressOmsOptionsDTOImpl
_$$SetShippingAddressOmsOptionsDTOImplFromJson(
  Map<String, dynamic> json,
) => _$SetShippingAddressOmsOptionsDTOImpl(
  latitude: json['latitude'] as String,
  longitude: json['longitude'] as String,
  stateCustom: json['state_custom'] as String,
  cityCustom: json['city_custom'] as String,
  zoneCustom: json['zone_custom'] as String,
  omsReceivingSpecialRequest: json['oms_receiving_special_request'] as String?,
  omsReceivingDeliveryInstructions:
      json['oms_receiving_delivery_instructions'] as String?,
  omsReceivingFullName: json['oms_receiving_full_name'] as String?,
  omsReceivingIdentification: json['oms_receiving_identification'] as String?,
  omsReceivingTelephone: json['oms_receiving_phone_number'] as String?,
  omsReceivingOption: json['oms_receiving_option'] as String?,
);

Map<String, dynamic> _$$SetShippingAddressOmsOptionsDTOImplToJson(
  _$SetShippingAddressOmsOptionsDTOImpl instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'state_custom': instance.stateCustom,
  'city_custom': instance.cityCustom,
  'zone_custom': instance.zoneCustom,
  if (instance.omsReceivingSpecialRequest case final value?)
    'oms_receiving_special_request': value,
  if (instance.omsReceivingDeliveryInstructions case final value?)
    'oms_receiving_delivery_instructions': value,
  if (instance.omsReceivingFullName case final value?)
    'oms_receiving_full_name': value,
  if (instance.omsReceivingIdentification case final value?)
    'oms_receiving_identification': value,
  if (instance.omsReceivingTelephone case final value?)
    'oms_receiving_phone_number': value,
  if (instance.omsReceivingOption case final value?)
    'oms_receiving_option': value,
};
