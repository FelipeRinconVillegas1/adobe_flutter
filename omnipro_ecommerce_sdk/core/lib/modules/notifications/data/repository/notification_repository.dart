import 'package:dartz/dartz.dart';

import '../../../../utils/error_handler/error_handler.dart';
import '../../domain/entity/customer/notification_customer.dart';

abstract class NotificationRepository {
  Future<Either<ErrorHandler, bool>> updateToken(String token);

  Future<Either<ErrorHandler, bool>> clearToken(String customerEmail);

  Future<void> saveLastUpdatedToken(String token);

  Future<Either<ErrorHandler, String>> getLastUpdatedToken();

  Future<Either<ErrorHandler, bool>> updateEnableNotificationUser(bool enableNotification);

  Future<Either<ErrorHandler, bool>> createCustomer({required NotificationCustomer customer});

  Future<Either<ErrorHandler, bool>> getNotificationEnabled(String customerEmail);
}
