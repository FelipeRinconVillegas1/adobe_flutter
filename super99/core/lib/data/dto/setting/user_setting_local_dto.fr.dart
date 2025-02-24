import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_setting_local_dto.fr.freezed.dart';
part 'user_setting_local_dto.fr.g.dart';

@freezed
class UserSettingLocalDTO with _$UserSettingLocalDTO {
  const factory UserSettingLocalDTO({
    required bool soundReminder,
    required int snoozeDuration,
    required String languageSelected,
  }) = _UserSettingLocalDTO;

  factory UserSettingLocalDTO.fromJson(Map<String, Object?> json) => _$UserSettingLocalDTOFromJson(json);
}
