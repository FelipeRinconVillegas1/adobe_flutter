// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_location_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreLocationDTOImpl _$$StoreLocationDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreLocationDTOImpl(
      id: json['id'] as int,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      name: json['name'] as String?,
      street: json['street'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      postal: json['postal'] as String?,
      phoneOne: json['phone1'] as String?,
      phoneTwo: json['phone2'] as String?,
      webSite: json['web'] as String?,
      facebook: json['facebook'] as String?,
      twitter: json['twitter'] as String?,
      mail: json['mail'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      timeData: (json['timeData'] as List<dynamic>?)
              ?.map((e) => StoreTimeDataDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      timeDataToday: json['timeDataToday'] == null
          ? null
          : StoreTimeDataDTO.fromJson(
              json['timeDataToday'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StoreLocationDTOImplToJson(
        _$StoreLocationDTOImpl instance) =>
    <String, dynamic>{
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
      'phone1': instance.phoneOne,
      'phone2': instance.phoneTwo,
      'web': instance.webSite,
      'facebook': instance.facebook,
      'twitter': instance.twitter,
      'mail': instance.mail,
      'description': instance.description,
      'url': instance.url,
      'timeData': instance.timeData,
      'timeDataToday': instance.timeDataToday,
    };

_$StoreTimeDataDTOImpl _$$StoreTimeDataDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreTimeDataDTOImpl(
      from: (json['from'] as List<dynamic>).map((e) => e as String).toList(),
      to: (json['to'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$StoreTimeDataDTOImplToJson(
        _$StoreTimeDataDTOImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
    };
