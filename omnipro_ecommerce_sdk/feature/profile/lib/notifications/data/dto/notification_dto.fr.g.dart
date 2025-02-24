// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationDTOImpl _$$NotificationDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationDTOImpl(
      id: json['id'] as int,
      message: json['message'] as String,
      dateTime: json['dateTime'] as String,
    );

Map<String, dynamic> _$$NotificationDTOImplToJson(
        _$NotificationDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'dateTime': instance.dateTime,
    };
