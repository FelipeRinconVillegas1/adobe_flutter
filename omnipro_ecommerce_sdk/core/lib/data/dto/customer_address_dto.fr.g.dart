// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_address_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerAddressDTOImpl _$$CustomerAddressDTOImplFromJson(
  Map<String, dynamic> json,
) => _$CustomerAddressDTOImpl(
  id: (json['id'] as num?)?.toInt() ?? -1,
  firstname: json['firstname'] as String,
  lastname: json['lastname'] as String,
  region: RegionDTO.fromJson(json['region'] as Map<String, dynamic>),
  countryCode: json['country_code'] as String,
  street:
      (json['street'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  telephone: json['telephone'] as String,
  city: json['city'] as String,
  customAttributes:
      (json['custom_attributesV2'] as List<dynamic>)
          .map((e) => CustomAttributeDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
  defaultShipping: json['default_shipping'] as bool? ?? false,
  defaultBilling: json['default_billing'] as bool? ?? false,
  postcode: json['postcode'] as String?,
);

Map<String, dynamic> _$$CustomerAddressDTOImplToJson(
  _$CustomerAddressDTOImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'firstname': instance.firstname,
  'lastname': instance.lastname,
  'region': instance.region.toJson(),
  'country_code': instance.countryCode,
  'street': instance.street,
  'telephone': instance.telephone,
  'city': instance.city,
  'custom_attributesV2':
      instance.customAttributes.map((e) => e.toJson()).toList(),
  'default_shipping': instance.defaultShipping,
  'default_billing': instance.defaultBilling,
  'postcode': instance.postcode,
};

_$RegionDTOImpl _$$RegionDTOImplFromJson(Map<String, dynamic> json) =>
    _$RegionDTOImpl(
      region: json['region'] as String,
      code: json['region_code'] as String? ?? '',
      regionId: (json['region_id'] as num).toInt(),
    );

Map<String, dynamic> _$$RegionDTOImplToJson(_$RegionDTOImpl instance) =>
    <String, dynamic>{
      'region': instance.region,
      'region_code': instance.code,
      'region_id': instance.regionId,
    };
