// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_billing_address_oms_options_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetBillingAddressOmsOptionsDTOImpl
_$$SetBillingAddressOmsOptionsDTOImplFromJson(Map<String, dynamic> json) =>
    _$SetBillingAddressOmsOptionsDTOImpl(
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      stateCustom: json['state_custom'] as String,
      cityCustom: json['city_custom'] as String,
      zoneCustom: json['zone_custom'] as String,
    );

Map<String, dynamic> _$$SetBillingAddressOmsOptionsDTOImplToJson(
  _$SetBillingAddressOmsOptionsDTOImpl instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'state_custom': instance.stateCustom,
  'city_custom': instance.cityCustom,
  'zone_custom': instance.zoneCustom,
};
