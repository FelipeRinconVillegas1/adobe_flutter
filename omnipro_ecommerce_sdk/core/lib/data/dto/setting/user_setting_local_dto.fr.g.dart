// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_setting_local_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSettingLocalDTOImpl _$$UserSettingLocalDTOImplFromJson(
  Map<String, dynamic> json,
) => _$UserSettingLocalDTOImpl(
  soundReminder: json['soundReminder'] as bool,
  snoozeDuration: (json['snoozeDuration'] as num).toInt(),
  languageSelected: json['languageSelected'] as String,
);

Map<String, dynamic> _$$UserSettingLocalDTOImplToJson(
  _$UserSettingLocalDTOImpl instance,
) => <String, dynamic>{
  'soundReminder': instance.soundReminder,
  'snoozeDuration': instance.snoozeDuration,
  'languageSelected': instance.languageSelected,
};
