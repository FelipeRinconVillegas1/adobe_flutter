import 'package:core/domain/entity/language_setting.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/domain/entity/notification_setting.dart';

///---
abstract class SettingRepository {
  Future<Either<ErrorHandler, NotificationSetting>> getNotificationSetting();

  Future<Either<ErrorHandler, LanguageSetting>> getLanguageSetting();

  Future<Either<ErrorHandler, LanguageSetting>> updateLanguageSetting(LanguageSetting newSetting);

  Future<Either<ErrorHandler, NotificationSetting>> updateNotificationSetting(NotificationSetting newSetting);
}
