// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_setting_remote_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSettingRemoteDTOImpl _$$UserSettingRemoteDTOImplFromJson(
  Map<String, dynamic> json,
) => _$UserSettingRemoteDTOImpl(
  userId: (json['userId'] as num).toInt(),
  showNotification: json['showNotification'] as bool,
  soundNotification: json['soundNotification'] as bool,
);

Map<String, dynamic> _$$UserSettingRemoteDTOImplToJson(
  _$UserSettingRemoteDTOImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'showNotification': instance.showNotification,
  'soundNotification': instance.soundNotification,
};
