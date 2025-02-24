import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_setting_dto.fr.freezed.dart';
part 'notification_setting_dto.fr.g.dart';


@freezed
class NotificationSettingDTO with _$NotificationSettingDTO {
  const factory NotificationSettingDTO({
    required int userId,
    required bool showNotifications,
    required bool isActiveSound,
  }) = _NotificationSettingDTO;

  factory NotificationSettingDTO.fromJson(Map<String, Object?> json) => _$NotificationSettingDTOFromJson(json);
}
