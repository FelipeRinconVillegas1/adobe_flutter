// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_address_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WareHouseAddressDTOImpl _$$WareHouseAddressDTOImplFromJson(
  Map<String, dynamic> json,
) => _$WareHouseAddressDTOImpl(
  id: json['id'],
  code: json['code'] as String,
  name: json['name'] as String,
  address: json['address'] as String,
  schedule: json['schedule'] as String,
  telephone: json['telephone'] as String,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  countryId: json['country_id'] as String,
  stateId: json['state_id'] as String,
  stateName: json['state_name'] as String,
  cityId: json['city_id'] as String,
  cityName: json['city_name'] as String,
  zoneId: json['zone_id'] as String,
  zoneName: json['zone_name'] as String,
  status: json['status'],
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$$WareHouseAddressDTOImplToJson(
  _$WareHouseAddressDTOImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'name': instance.name,
  'address': instance.address,
  'schedule': instance.schedule,
  'telephone': instance.telephone,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'country_id': instance.countryId,
  'state_id': instance.stateId,
  'state_name': instance.stateName,
  'city_id': instance.cityId,
  'city_name': instance.cityName,
  'zone_id': instance.zoneId,
  'zone_name': instance.zoneName,
  'status': instance.status,
  'created_at': instance.createdAt,
};
