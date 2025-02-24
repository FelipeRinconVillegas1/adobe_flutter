import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:core/modules/notifications/domain/entity/customer/notification_customer.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_database/firebase_database.dart';

import '../../../../data/datasource/secure_call_datasource.dart';
import '../../../../local/data/datasource/secure_storage_datasource.dart';
import '../../../../local/key_secure_storage.dart';
import '../../../../utils/error_handler/error_handler.dart';
import '../dto/notification/notification_user_dto.fr.dart';
import 'notification_datasource.dart';

class NotificationDatasourceImpl extends NotificationDatasource {
  NotificationDatasourceImpl(
    this._secureStorageDatasource,
    this._database,
  );

  final SecureStorageDatasource _secureStorageDatasource;
  final FirebaseDatabase _database;

  Future<Either<ErrorHandler, bool>> updateNotificationUser(NotificationUserDTO notificationUser) {
    return secureServerCall(() async {
      final customerKey = notificationUser.id.replaceAll('.', '_').toLowerCase();
      final customerRef = _database.ref('customers/$customerKey');
      final DataSnapshot snapshot = await customerRef.get();

      final jsonToSave = {
        'email': notificationUser.id.toLowerCase(),
        'fcmToken': notificationUser.deviceToken,
        'platform': notificationUser.platform,
        'fcmTokenUpdatedAt': ServerValue.timestamp,
      };

      if (snapshot.exists) {
        Map dataCustomer = snapshot.value as Map;
        if (!dataCustomer.containsKey("notificationsEnabled")) {
          jsonToSave.addAll({"notificationsEnabled": true});
        }
        await customerRef.update(jsonToSave);
      } else {
        jsonToSave.addAll({"notificationsEnabled": true});
        await customerRef.set(jsonToSave);
      }

      return right(true);
    });
  }

  @override
  Future<Either<ErrorHandler, bool>> updateToken(String token) async {
    return secureServerCall(() async {
      final customerJson = await _secureStorageDatasource.getData(KeySecureStorage.customer);
      final customerId = jsonDecode(customerJson)["email"];

      return updateNotificationUser(NotificationUserDTO(
        id: customerId,
        deviceToken: token,
        platform: Platform.isIOS ? 'ios' : 'android',
      ));
    });
  }

  @override
  Future<void> saveLastUpdatedToken(String token) {
    return _secureStorageDatasource.saveData(KeySecureStorage.lastPushNotificationUpdatedToken, token);
  }

  @override
  Future<Either<ErrorHandler, String>> getLastUpdatedToken() async {
    return Right('');
  }

  @override
  Future<Either<ErrorHandler, bool>> updateEnableNotificationUser(bool enableNotification) async {
    return secureServerCall(() async {
      final customerJson = await _secureStorageDatasource.getData(KeySecureStorage.customer);
      final customerId = jsonDecode(customerJson)["email"].toString().toLowerCase();
      final customerKey = customerId.replaceAll('.', '_');
      final customerRef = _database.ref('customers/$customerKey');
      await customerRef.update({"notificationsEnabled": enableNotification});
      return right(true);
    });
  }

  @override
  Future<Either<ErrorHandler, bool>> clearToken(String customerEmail) {
    return secureServerCall(() async {
      final customerKey = customerEmail.replaceAll('.', '_').toLowerCase();
      final customerRef = _database.ref('customers/$customerKey');
      await customerRef.update({"fcmToken": null});
      return right(true);
    });
  }

  @override
  Future<Either<ErrorHandler, bool>> createCustomer({required NotificationCustomer customer}) async {
    try {
      final customerRef = _database.ref('customers');
      final customerData = customer.toJson();
      final customerKey = customer.email.replaceAll('.', '_').toLowerCase();
      await customerRef.child(customerKey).set(customerData);
      return right(true);
    } catch (error, s) {
      return left(ErrorHandlerExternal(
          errorMessage: error.toString(), errorCode: ErrorCode.errorCreateCustomerDataBaseRealtime, stackTrace: s));
    }
  }

  @override
  Future<Either<ErrorHandler, bool>> getNotificationEnabled(String customerEmail) async {
    try {
      final customerKey = customerEmail.replaceAll('.', '_').toLowerCase();
      final customerRef = _database.ref('customers/$customerKey');
      final snapshot = await customerRef.get();
      if (snapshot.exists) {
        return right((snapshot.value as Map)["notificationsEnabled"]);
      }
      return left(ErrorHandlerExternal(
          errorMessage: 'Customer not found', errorCode: ErrorCode.errorNotFoundCustomerDataBaseRealtime));
    } catch (error, s) {
      return left(ErrorHandlerExternal(
          errorMessage: error.toString(), errorCode: ErrorCode.errorDataBaseRealtime, stackTrace: s));
    }
  }
}
