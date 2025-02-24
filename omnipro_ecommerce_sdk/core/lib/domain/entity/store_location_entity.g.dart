// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_location_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreLocationEntityImpl _$$StoreLocationEntityImplFromJson(
  Map<String, dynamic> json,
) => _$StoreLocationEntityImpl(
  id: (json['id'] as num).toInt(),
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  name: json['name'] as String?,
  street: json['street'] as String?,
  state: json['state'] as String?,
  city: json['city'] as String?,
  country: json['country'] as String?,
  distance: (json['distance'] as num?)?.toDouble(),
  postal: json['postal'] as String?,
  phoneOne: json['phoneOne'] as String?,
  phoneTwo: json['phoneTwo'] as String?,
  webSite: json['webSite'] as String?,
  facebook: json['facebook'] as String?,
  twitter: json['twitter'] as String?,
  email: json['email'] as String?,
  description: json['description'] as String?,
  url: json['url'] as String?,
  timeData:
      (json['timeData'] as List<dynamic>?)
          ?.map(
            (e) =>
                StoreLocationTimeDataEntity.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  timeDataToday:
      json['timeDataToday'] == null
          ? null
          : StoreLocationTimeDataEntity.fromJson(
            json['timeDataToday'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$StoreLocationEntityImplToJson(
  _$StoreLocationEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'name': instance.name,
  'street': instance.street,
  'state': instance.state,
  'city': instance.city,
  'country': instance.country,
  'distance': instance.distance,
  'postal': instance.postal,
  'phoneOne': instance.phoneOne,
  'phoneTwo': instance.phoneTwo,
  'webSite': instance.webSite,
  'facebook': instance.facebook,
  'twitter': instance.twitter,
  'email': instance.email,
  'description': instance.description,
  'url': instance.url,
  'timeData': instance.timeData.map((e) => e.toJson()).toList(),
  'timeDataToday': instance.timeDataToday?.toJson(),
};

_$StoreLocationTimeDataEntityImpl _$$StoreLocationTimeDataEntityImplFromJson(
  Map<String, dynamic> json,
) => _$StoreLocationTimeDataEntityImpl(
  from: json['from'] as String,
  to: json['to'] as String,
);

Map<String, dynamic> _$$StoreLocationTimeDataEntityImplToJson(
  _$StoreLocationTimeDataEntityImpl instance,
) => <String, dynamic>{'from': instance.from, 'to': instance.to};
