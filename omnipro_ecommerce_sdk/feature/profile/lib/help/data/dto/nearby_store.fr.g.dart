// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nearby_store.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NearbyStoreDTOImpl _$$NearbyStoreDTOImplFromJson(Map<String, dynamic> json) =>
    _$NearbyStoreDTOImpl(
      id: json['id'] as int,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      country: json['country'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      postal: json['postal'] as String?,
      phoneOne: json['phone1'] as String?,
      phoneTwo: json['phone2'] as String?,
    );

Map<String, dynamic> _$$NearbyStoreDTOImplToJson(
        _$NearbyStoreDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'country': instance.country,
      'distance': instance.distance,
      'postal': instance.postal,
      'phone1': instance.phoneOne,
      'phone2': instance.phoneTwo,
    };
