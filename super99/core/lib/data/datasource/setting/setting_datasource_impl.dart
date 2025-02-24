import 'dart:convert';

import 'package:core/data/datasource/setting/setting_datasource.dart';
import 'package:core/data/dto/setting/language_setting_dto.fr.dart';
import 'package:core/data/dto/setting/notification_setting_dto.fr.dart';
import 'package:core/data/dto/setting/reminder_setting_dto.fr.dart';
import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/utils/constants.dart';
import 'package:dartz/dartz.dart';
import 'package:core/utils/error_handler/error_handler.dart';

class SettingDatasourceImpl extends SettingDatasource {
  SettingDatasourceImpl({
    required this.graphQLService,
    required this.secureStorageDatasource,
  });

  final GraphQLService graphQLService;
  final SecureStorageDatasource secureStorageDatasource;

  @override
  Future<Either<ErrorHandler, ReminderSettingDTO>> getReminderSetting() async {
    try {
      String dataReminderSetting = await secureStorageDatasource.getData(KeySecureStorage.reminderSetting);

      final reminderSetting = dataReminderSetting.isNotEmpty
          ? ReminderSettingDTO.fromJson(jsonDecode(dataReminderSetting))
          : const ReminderSettingDTO(snoozeDuration: 5, isActiveSound: true);
      return right(reminderSetting);
    } catch (e) {
      return left(ErrorHandlerInternal(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<ErrorHandler, NotificationSettingDTO>> getNotificationSetting() async {
    await Future.delayed(const Duration(seconds: 1));
    final jsonNotificationSetting = await secureStorageDatasource.getData(KeySecureStorage.notificationSetting);
    return right(jsonNotificationSetting.isEmpty
        ? const NotificationSettingDTO(showNotifications: true, isActiveSound: true, userId: 1)
        : NotificationSettingDTO.fromJson(jsonDecode(jsonNotificationSetting)));
  }

  @override
  Future<Either<ErrorHandler, LanguageSettingDTO>> getLanguageSetting() async {
    try {
      String dataLanguageSetting = await secureStorageDatasource.getData(KeySecureStorage.languageSetting);
      final languageSetting = dataLanguageSetting.isNotEmpty
          ? LanguageSettingDTO.fromJson(jsonDecode(dataLanguageSetting))
          : LanguageSettingDTO(
              languagesCodesAvailable: [Constants.spanishLanguage.code, Constants.englishLanguage.code],
              languageSelected: Constants.spanishLanguage.code,
            );
      return right(languageSetting);
    } catch (e) {
      return left(ErrorHandlerInternal(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<ErrorHandler, LanguageSettingDTO>> updateLanguageSetting(LanguageSettingDTO newSetting) async {
    try {
      await secureStorageDatasource.saveData(KeySecureStorage.languageSetting, jsonEncode(newSetting.toJson()));
      return right(newSetting);
    } catch (e) {
      return left(ErrorHandlerInternal(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<ErrorHandler, NotificationSettingDTO>> updateNotificationSetting(
      NotificationSettingDTO newSetting) async {
    ///TODO: Felipe pendiente de comunicacion con el app server
    await Future.delayed(const Duration(seconds: 1));
    await secureStorageDatasource.saveData(KeySecureStorage.notificationSetting, jsonEncode(newSetting.toJson()));
    return right(newSetting);
  }

  @override
  Future<Either<ErrorHandler, ReminderSettingDTO>> updateReminderSetting(ReminderSettingDTO newSetting) async {
    try {
      await secureStorageDatasource.saveData(KeySecureStorage.reminderSetting, jsonEncode(newSetting.toJson()));
      return right(newSetting);
    } catch (e) {
      return left(ErrorHandlerInternal(errorMessage: e.toString()));
    }
  }
}
