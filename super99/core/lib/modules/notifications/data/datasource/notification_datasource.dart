import 'package:core/modules/notifications/domain/entity/customer/notification_customer.dart';
import 'package:dartz/dartz.dart';

import '../../../../utils/error_handler/error_handler.dart';

abstract class NotificationDatasource {
  Future<Either<ErrorHandler, bool>> updateToken(String token);

  Future<Either<ErrorHandler, bool>> clearToken(String customerEmail);

  Future<void> saveLastUpdatedToken(String token);

  Future<Either<ErrorHandler, String>> getLastUpdatedToken();

  Future<Either<ErrorHandler, bool>> updateEnableNotificationUser(bool enableNotification);

  Future<Either<ErrorHandler, bool>> createCustomer({required NotificationCustomer customer});

  Future<Either<ErrorHandler, bool>> getNotificationEnabled(String customerEmail);
}
