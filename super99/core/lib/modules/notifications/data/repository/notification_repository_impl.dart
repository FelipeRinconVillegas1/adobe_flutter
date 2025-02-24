import 'package:core/modules/notifications/domain/entity/customer/notification_customer.dart';
import 'package:dartz/dartz.dart';

import '../../../../utils/error_handler/error_handler.dart';
import '../datasource/notification_datasource.dart';
import '../datasource/push_notification_datasource.dart';
import 'notification_repository.dart';

class NotificationRepositoryImpl extends NotificationRepository {
  final NotificationDatasource _notificationsDatasource;
  final PushNotificationDatasource _pushNotificationDatasource;

  NotificationRepositoryImpl(this._notificationsDatasource, this._pushNotificationDatasource);

  @override
  Future<Either<ErrorHandler, bool>> updateToken(String token) {
    return _notificationsDatasource.updateToken(token);
  }

  @override
  Future<void> saveLastUpdatedToken(String token) {
    return _notificationsDatasource.saveLastUpdatedToken(token);
  }

  @override
  Future<Either<ErrorHandler, String>> getLastUpdatedToken() {
    return _notificationsDatasource.getLastUpdatedToken();
  }

  @override
  Future<Either<ErrorHandler, bool>> updateEnableNotificationUser(bool enableNotification) async {
    return await _notificationsDatasource.updateEnableNotificationUser(enableNotification);
  }

  @override
  Future<Either<ErrorHandler, bool>> clearToken(String customerEmail) {
    return _notificationsDatasource.clearToken(customerEmail);
  }

  @override
  Future<Either<ErrorHandler, bool>> createCustomer({required NotificationCustomer customer}) {
    return _notificationsDatasource.createCustomer(customer: customer);
  }

  @override
  Future<Either<ErrorHandler, bool>> getNotificationEnabled(String customerEmail) {
    return _notificationsDatasource.getNotificationEnabled(customerEmail);
  }
}
