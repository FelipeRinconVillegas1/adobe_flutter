import '../../data/repository/notification_repository.dart';
import '../../data/repository/push_notification_repository.dart';

class UpdatePushNotificationTokenUseCase {
  UpdatePushNotificationTokenUseCase(
    this._pushNotificationRepository,
    this._notificationRepository,
  );

  final PushNotificationRepository _pushNotificationRepository;
  final NotificationRepository _notificationRepository;

  Future<void> call() async {
    final currentToken = await _pushNotificationRepository.getToken();
    final lastUpdatedTokenResult = await _notificationRepository.getLastUpdatedToken();

    if (currentToken != null) {
      lastUpdatedTokenResult.fold((l) {
        _updateToken(currentToken);
      }, (lastUpdatedToken) {
        _updateToken(currentToken);
        //TODO: revisar validacion
        // if (lastUpdatedToken != currentToken) {
        //   _updateToken(currentToken);
        // }
      });
    }
  }

  void _updateToken(String token) {
    _notificationRepository.updateToken(token).then((value) {
      value.fold((l) {}, (r) {
        _notificationRepository.saveLastUpdatedToken(token);
      });
    });
  }
}
