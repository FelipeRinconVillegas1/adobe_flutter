import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_setting_remote_dto.fr.g.dart';
part 'user_setting_remote_dto.fr.freezed.dart';

@freezed
class UserSettingRemoteDTO with _$UserSettingRemoteDTO {
  const factory UserSettingRemoteDTO({
    required int userId,
    required bool showNotification,
    required bool soundNotification,
  }) = _UserSettingRemoteDTO;

  factory UserSettingRemoteDTO.fromJson(Map<String, Object?> json) => _$UserSettingRemoteDTOFromJson(json);
}
