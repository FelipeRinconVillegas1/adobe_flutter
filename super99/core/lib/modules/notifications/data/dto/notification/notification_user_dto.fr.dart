import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_user_dto.fr.freezed.dart';
part 'notification_user_dto.fr.g.dart';

@freezed
class NotificationUserDTO with _$NotificationUserDTO {
  const factory NotificationUserDTO({
    @JsonKey(name: 'id') required String id,
    required String deviceToken,
    required String platform,
    String? phone,
    String? dialCode,
    String? gender,
    String? birthDate,
    String? city,
    String? zipCode,
    bool? enableNotifications,
    bool? enableSoundNotifications,
    @JsonKey(name: 'mda') String? mdaCardNumber,
  }) = _NotificationUserDTO;

  factory NotificationUserDTO.fromJson(Map<String, dynamic> json) => _$NotificationUserDTOFromJson(json);
}
