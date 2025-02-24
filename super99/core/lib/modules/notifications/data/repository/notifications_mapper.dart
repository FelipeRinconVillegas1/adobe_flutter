import '../../domain/entity/notifications/notification_item.fr.dart';
import '../../domain/entity/notifications/notification_user.fr.dart';
import '../../domain/entity/notifications/notifications.dart';
import '../dto/notification/notification_dto.fr.dart';
import '../dto/notification/notification_user_dto.fr.dart';
import '../dto/notification/notifications_dto.fr.dart';

extension NotificationsMapperDTO on NotificationsDTO {
  Notifications toDomain() => Notifications(
        notifications: notifications.map((e) => e.toDomain()).toList(),
      );
}

extension NotificationMapperDTO on NotificationDTO {
  NotificationItem toDomain() => NotificationItem(
      id: id,
      message: message,
      createdAt: createdAt,
      userId: userId,
      title: title,
      isUsed: isUsed == 0 ? false : true,
      notificationType: notificationType ?? '',
      balance: balance ?? '',
      mda: mda ?? '');
}

extension NotificationUserMapperDTO on NotificationUserDTO {
  NotificationUser toDomain() => NotificationUser(
        email: id,
        city: city,
        birthDate: birthDate,
        dialCode: dialCode,
        gender: gender,
        mdaCardNumber: mdaCardNumber,
        phone: phone,
        zipCode: zipCode,
        enableNotifications: enableNotifications,
        enableSoundNotifications: enableSoundNotifications,
      );
}

extension NotificationUserX on NotificationUser {
  NotificationUserDTO toDTO(String token_, String platform_) {
    return NotificationUserDTO(
      id: email,
      deviceToken: token_,
      gender: gender,
      birthDate: birthDate,
      phone: phone,
      dialCode: dialCode,
      city: city,
      platform: platform_,
      zipCode: zipCode,
      mdaCardNumber: mdaCardNumber,
    );
  }
}
