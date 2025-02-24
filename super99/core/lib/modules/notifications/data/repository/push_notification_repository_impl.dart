import 'package:core/modules/notifications/data/repository/push_notification_repository.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import '../datasource/push_notification_datasource.dart';

class PushNotificationRepositoryImpl implements PushNotificationRepository {
  PushNotificationRepositoryImpl(this._pushNotificationDataSource);

  final PushNotificationDatasource _pushNotificationDataSource;

  @override
  Future<String?> getToken({bool updatePushTokenToAdobeTarget = true}) {
    return _pushNotificationDataSource.getToken(updatePushTokenToAdobeTarget: updatePushTokenToAdobeTarget);
  }

  @override
  Future<Either<ErrorHandler, NotificationSettings>> initPushNotification() {
    return _pushNotificationDataSource.initPushNotification();
  }

  @override
  Stream<RemoteMessage> messageHandler() {
    return _pushNotificationDataSource.messageHandler();
  }

  @override
  Stream<RemoteMessage> messageHandlerOnInteracted() {
    return _pushNotificationDataSource.messageHandlerOnInteracted();
  }

  @override
  Future<NotificationSettings> getNotificationSettings() {
    return _pushNotificationDataSource.getNotificationSettings();
  }

  @override
  RemoteMessage? getInitialMessage() {
    return _pushNotificationDataSource.getInitialMessage();
  }
}
