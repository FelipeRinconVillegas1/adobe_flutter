import 'package:freezed_annotation/freezed_annotation.dart';

part 'reminder_setting_dto.fr.freezed.dart';
part 'reminder_setting_dto.fr.g.dart';

@freezed
class ReminderSettingDTO with _$ReminderSettingDTO {
  const factory ReminderSettingDTO({
    required int snoozeDuration,
    required bool isActiveSound,
  }) = _ReminderSettingDTO;

  factory ReminderSettingDTO.fromJson(Map<String, Object?> json) => _$ReminderSettingDTOFromJson(json);
}
