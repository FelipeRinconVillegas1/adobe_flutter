import 'package:core/data/dto/setting/language_setting_dto.fr.dart';
import 'package:core/data/dto/setting/notification_setting_dto.fr.dart';
import 'package:core/data/dto/setting/reminder_setting_dto.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class SettingDatasource {
  Future<Either<ErrorHandler, ReminderSettingDTO>> getReminderSetting();

  Future<Either<ErrorHandler, NotificationSettingDTO>> getNotificationSetting();

  Future<Either<ErrorHandler, LanguageSettingDTO>> getLanguageSetting();

  Future<Either<ErrorHandler, LanguageSettingDTO>> updateLanguageSetting(LanguageSettingDTO newSetting);

  Future<Either<ErrorHandler, NotificationSettingDTO>> updateNotificationSetting(NotificationSettingDTO newSetting);

  Future<Either<ErrorHandler, ReminderSettingDTO>> updateReminderSetting(ReminderSettingDTO newSetting);
}
