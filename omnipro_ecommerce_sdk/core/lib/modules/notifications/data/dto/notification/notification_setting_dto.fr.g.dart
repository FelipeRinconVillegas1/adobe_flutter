// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_setting_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationSettingDTOImpl _$$NotificationSettingDTOImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationSettingDTOImpl(
  userId: (json['userId'] as num).toInt(),
  showNotifications: json['showNotifications'] as bool,
  isActiveSound: json['isActiveSound'] as bool,
);

Map<String, dynamic> _$$NotificationSettingDTOImplToJson(
  _$NotificationSettingDTOImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'showNotifications': instance.showNotifications,
  'isActiveSound': instance.isActiveSound,
};
