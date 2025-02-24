import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_dto.fr.freezed.dart';

part 'notification_dto.fr.g.dart';

@freezed
class NotificationDTO with _$NotificationDTO {
  const factory NotificationDTO({
    required String id,
    required String userId,
    required String title,
    required String message,
    required String createdAt,
    @Default(0) int? isUsed,
    @Default('') String? notificationType,
    @Default('') String? mda,
    @Default('') String? balance,
  }) = _NotificationDTO;

  factory NotificationDTO.fromJson(Map<String, dynamic> json) => _$NotificationDTOFromJson(json);
}
