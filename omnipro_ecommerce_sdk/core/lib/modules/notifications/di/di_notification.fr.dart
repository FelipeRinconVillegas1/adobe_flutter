
import 'package:core/di/firebase_database_provider.fr.dart';
import 'package:core/local/di_secure_storage.fr.dart';
import 'package:core/modules/notifications/data/datasource/push_notification_datasource.dart';
import 'package:core/modules/notifications/data/repository/push_notification_repository.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../di/setting/di_setting.fr.dart';
import '../data/datasource/notification_datasource.dart';
import '../data/datasource/notification_datasource_impl.dart';
import '../data/repository/notification_repository.dart';
import '../data/repository/notification_repository_impl.dart';
import '../data/repository/push_notification_repository_impl.dart';
import '../domain/use_case/create_notification_customer_use_case.dart';
import '../domain/use_case/get_notification_enabled_use_case.dart';
import '../domain/use_case/update_push_notification_token_use_case.dart';
import '../domain/use_case/update_push_notifications_enabled_use_case.dart';

//part 'di_notification.fr.g.dart';

/*
@riverpod
PushNotificationDatasource pushNotificationDatasource(PushNotificationDatasourceRef ref) {
  return PushNotificationDatasourceImpl(
    FirebaseMessaging.instance,
    ref.watch(settingDatasourceProvider),
    ref.watch(secureStorageDatasourceSourceProvider),
    ref.watch(adobeTargetDatasourceProvider),
  );
}


@Riverpod(keepAlive: true)
NotificationDatasource notificationsDatasource(NotificationsDatasourceRef ref) {
  return NotificationDatasourceImpl(
    ref.watch(secureStorageDatasourceSourceProvider),
    ref.watch(firebaseDatabaseProvider),
  );
}

@Riverpod(keepAlive: true)
NotificationDatasource notificationsDatasourceKeepAlive(NotificationsDatasourceKeepAliveRef ref) {
  return NotificationDatasourceImpl(
    ref.watch(secureStorageDatasourceSourceProvider),
    ref.watch(firebaseDatabaseProvider),
  );
}

@Riverpod(keepAlive: true)
PushNotificationRepository pushNotificationRepository(PushNotificationRepositoryRef ref) {
  return PushNotificationRepositoryImpl(ref.watch(pushNotificationDatasourceProvider));
}

@Riverpod(keepAlive: true)
NotificationRepository notificationsRepository(NotificationsRepositoryRef ref) {
  return NotificationRepositoryImpl(
    ref.watch(notificationsDatasourceProvider),
    ref.watch(pushNotificationDatasourceProvider),
  );
}

@Riverpod(keepAlive: true)
NotificationRepository notificationsRepositoryKeepAlive(NotificationsRepositoryKeepAliveRef ref) {
  return NotificationRepositoryImpl(
    ref.watch(notificationsDatasourceKeepAliveProvider),
    ref.watch(pushNotificationDatasourceProvider),
  );
}

@Riverpod(keepAlive: true)
UpdatePushNotificationTokenUseCase updatePushNotificationTokenUseCase(UpdatePushNotificationTokenUseCaseRef ref) {
  return UpdatePushNotificationTokenUseCase(
    ref.watch(pushNotificationRepositoryProvider),
    ref.watch(notificationsRepositoryProvider),
  );
}

@Riverpod(keepAlive: true)
UpdatePushNotificationsEnabledUseCase updatePushNotificationsEnabledUseCase(
  UpdatePushNotificationsEnabledUseCaseRef ref,
) {
  return UpdatePushNotificationsEnabledUseCase(ref.watch(notificationsRepositoryProvider));
}

@Riverpod(keepAlive: true)
CreateNotificationCustomerUseCase createNotificationCustomerUseCase(CreateNotificationCustomerUseCaseRef ref) {
  return CreateNotificationCustomerUseCase(ref.watch(notificationsRepositoryProvider));
}

@Riverpod(keepAlive: true)
GetNotificationEnabledUseCase getNotificationEnabledUseCase(GetNotificationEnabledUseCaseRef ref) {
  return GetNotificationEnabledUseCase(ref.watch(notificationsRepositoryProvider));
}
*/