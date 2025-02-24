import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../../local/data/datasource/secure_storage_datasource.dart';
import '../../../local/key_secure_storage.dart';
import '../../../modules/notifications/data/repository/push_notification_repository.dart';
import '../../../utils/error_handler/error_code.dart';

enum TypeDataSource { fromFirebase, fromLocalSecureStorage }

class GetPushTokenUseCase {
  GetPushTokenUseCase(this._repository, this._secureStorageDatasource);

  final PushNotificationRepository _repository;
  final SecureStorageDatasource _secureStorageDatasource;

  Future<Either<ErrorHandler, String>> call({
    TypeDataSource typeDataSource = TypeDataSource.fromFirebase,
    bool updatePushTokenToAdobeTarget = true,
  }) async {
    try {
      if (typeDataSource == TypeDataSource.fromFirebase) {
        final token = await _repository.getToken(updatePushTokenToAdobeTarget: updatePushTokenToAdobeTarget);
        if (token != null && token.isNotEmpty) {
          return Right(token);
        }
        if (await _secureStorageDatasource.existData(KeySecureStorage.devicePushToken)) {
          final token = await _secureStorageDatasource.getData(KeySecureStorage.devicePushToken);
          if (token.isNotEmpty) {
            return Right(token);
          }
        }
        return Left(ErrorHandlerExternal(
            errorCode: ErrorCode.errorGetPushTokenNull,
            errorMessage: 'Failed to get push token, response null from firebase'));
      } else {
        final token = await _secureStorageDatasource.getData(KeySecureStorage.devicePushToken);
        if (token.isNotEmpty) {
          return Right(token);
        }
        return Left(ErrorHandlerExternal(
            errorCode: ErrorCode.errorGetPushTokenNull,
            errorMessage: 'Failed to get push token, response null from local secure storage'));
      }
    } catch (e, s) {
      return Left(ErrorHandlerExternal(
        errorCode: ErrorCode.errorGetPushToken,
        errorMessage: e.toString(),
        stackTrace: s,
      ));
    }
  }
}
