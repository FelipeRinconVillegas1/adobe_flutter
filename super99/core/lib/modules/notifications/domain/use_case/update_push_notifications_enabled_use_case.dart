import '../../data/repository/notification_repository.dart';

class UpdatePushNotificationsEnabledUseCase {
  UpdatePushNotificationsEnabledUseCase(this._notificationRepository);

  final NotificationRepository _notificationRepository;

  Future<void> call(bool enableNotification) async {
    await _notificationRepository.updateEnableNotificationUser(enableNotification);
  }
}
