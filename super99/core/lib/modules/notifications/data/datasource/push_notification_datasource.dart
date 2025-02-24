import 'package:core/utils/error_handler/error_handler.dart';

import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

abstract class PushNotificationDatasource {
  /// Initialize push notification service a
  /// [alert] - show alert notification
  /// [announcement] - show announcement notification
  /// [badge] - show badge notification (iOS only)
  /// [carPlay] - show carPlay notification (iOS only)
  /// [criticalAlert] - show criticalAlert notification (iOS only)
  /// [provisional] - show provisional notification (iOS only)
  /// [permissionSound] - show sound notification\
  Future<Either<ErrorHandler, NotificationSettings>> initPushNotification({
    bool alert = true,
    bool announcement = false,
    bool badge = true,
    bool carPlay = false,
    bool criticalAlert = false,
    bool provisional = false,
    bool permissionSound = true,
  });

  /// Get token from push notification service
  Future<String?> getToken({bool updatePushTokenToAdobeTarget = true});

  /// Request permission to push notification service
  Future<NotificationSettings> requestPermission(
      {bool alert = true,
      bool announcement = false,
      bool badge = true,
      bool carPlay = false,
      bool criticalAlert = false,
      bool provisional = false,
      bool sound = true});

  Future<NotificationSettings> getNotificationSettings();

  /// Get initial message from push notification service
  /// when the app is opened from tap on notification
  /// this method burn the message when it's called
  RemoteMessage? getInitialMessage();

  /// Handle message from push notification service for background and foreground
  Stream<RemoteMessage> messageHandler();

  /// Handle message from push notification service when user interacted with notification
  Stream<RemoteMessage> messageHandlerOnInteracted();
}
