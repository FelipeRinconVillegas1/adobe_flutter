import 'package:freezed_annotation/freezed_annotation.dart';

import 'notification_dto.fr.dart';

part 'notifications_dto.fr.freezed.dart';

part 'notifications_dto.fr.g.dart';

@freezed
class NotificationsDTO with _$NotificationsDTO {
  const factory NotificationsDTO({
    required List<NotificationDTO> notifications,
  }) = _NotificationsDTO;

  factory NotificationsDTO.fromJson(Map<String, dynamic> json) => _$NotificationsDTOFromJson(json);
}
