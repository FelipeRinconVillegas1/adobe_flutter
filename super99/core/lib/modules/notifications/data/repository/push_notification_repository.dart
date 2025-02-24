import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

abstract class PushNotificationRepository {
  Future<Either<ErrorHandler, NotificationSettings>> initPushNotification();

  Future<String?> getToken({bool updatePushTokenToAdobeTarget = true});

  Stream<RemoteMessage> messageHandler();

  Stream<RemoteMessage> messageHandlerOnInteracted();

  Future<NotificationSettings> getNotificationSettings();

  RemoteMessage? getInitialMessage();
}
