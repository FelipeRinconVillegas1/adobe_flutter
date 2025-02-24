// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder_setting_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReminderSettingDTOImpl _$$ReminderSettingDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ReminderSettingDTOImpl(
  snoozeDuration: (json['snoozeDuration'] as num).toInt(),
  isActiveSound: json['isActiveSound'] as bool,
);

Map<String, dynamic> _$$ReminderSettingDTOImplToJson(
  _$ReminderSettingDTOImpl instance,
) => <String, dynamic>{
  'snoozeDuration': instance.snoozeDuration,
  'isActiveSound': instance.isActiveSound,
};
