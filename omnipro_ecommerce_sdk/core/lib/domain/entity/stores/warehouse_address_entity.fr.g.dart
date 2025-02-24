// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_address_entity.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WareHouseAddressEntityImpl _$$WareHouseAddressEntityImplFromJson(
  Map<String, dynamic> json,
) => _$WareHouseAddressEntityImpl(
  id: json['id'],
  name: json['name'] as String,
  code: json['code'] as String,
  address: json['address'] as String,
  schedule: json['schedule'] as String,
  telephone: json['telephone'] as String,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  countryId: json['countryId'] as String,
  stateId: json['stateId'] as String,
  stateName: json['stateName'] as String,
  cityId: json['cityId'] as String,
  cityName: json['cityName'] as String,
  zoneId: json['zoneId'] as String,
  zoneName: json['zoneName'] as String,
  status: json['status'],
  createdAt: json['createdAt'] as String,
  postCode: json['postCode'] as String,
);

Map<String, dynamic> _$$WareHouseAddressEntityImplToJson(
  _$WareHouseAddressEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'code': instance.code,
  'address': instance.address,
  'schedule': instance.schedule,
  'telephone': instance.telephone,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'countryId': instance.countryId,
  'stateId': instance.stateId,
  'stateName': instance.stateName,
  'cityId': instance.cityId,
  'cityName': instance.cityName,
  'zoneId': instance.zoneId,
  'zoneName': instance.zoneName,
  'status': instance.status,
  'createdAt': instance.createdAt,
  'postCode': instance.postCode,
};
