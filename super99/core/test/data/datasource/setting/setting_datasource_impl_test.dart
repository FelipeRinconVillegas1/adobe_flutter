import 'dart:convert';

import 'package:core/data/datasource/setting/setting_datasource_impl.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:core/utils/extension.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/data/datasource/setting/setting_datasource.dart';
import 'package:core/data/dto/setting/language_setting_dto.fr.dart';
import 'package:core/data/dto/setting/notification_setting_dto.fr.dart';
import 'package:core/data/dto/setting/reminder_setting_dto.fr.dart';
import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:dartz/dartz.dart';
import 'package:core/utils/error_handler/error_handler.dart';

class MockGraphQLService extends Mock implements GraphQLService {}

class MockSecureStorageDatasource extends Mock implements SecureStorageDatasource {}

void main() {
  late SettingDatasource settingDatasource;
  late MockGraphQLService mockGraphQLService;
  late MockSecureStorageDatasource mockSecureStorageDatasource;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockGraphQLService = MockGraphQLService();
    mockSecureStorageDatasource = MockSecureStorageDatasource();
    settingDatasource = SettingDatasourceImpl(
      graphQLService: mockGraphQLService,
      secureStorageDatasource: mockSecureStorageDatasource,
    );
  });

  group('getReminderSetting', () {
    test('returns ReminderSettingDTO when data is available', () async {
      // Mocking the behavior of secureStorageDatasource.getData
      when(() => mockSecureStorageDatasource.getData(KeySecureStorage.reminderSetting))
          .thenAnswer((_) async => '{"snoozeDuration": 10, "isActiveSound": true}');

      final result = await settingDatasource.getReminderSetting();

      expect(result, equals(right(ReminderSettingDTO(snoozeDuration: 10, isActiveSound: true))));
    });

    test('returns default ReminderSettingDTO when data is empty', () async {
      // Mocking the behavior of secureStorageDatasource.getData
      when(() => mockSecureStorageDatasource.getData(KeySecureStorage.reminderSetting)).thenAnswer((_) async => '');

      final result = await settingDatasource.getReminderSetting();

      expect(result, equals(right(ReminderSettingDTO(snoozeDuration: 5, isActiveSound: true))));
    });

    test('returns ErrorHandlerInternal when an error occurs', () async {
      // Mocking the behavior of secureStorageDatasource.getData
      when(() => mockSecureStorageDatasource.getData(KeySecureStorage.reminderSetting))
          .thenThrow(Exception('Mock Error'));

      final result = await settingDatasource.getReminderSetting();

      expect(result.getLeft()!, equals(ErrorHandlerInternal(errorMessage: 'Exception: Mock Error')));
    });
  });

  group('getNotificationSetting', () {
    test('returns NotificationSettingDTO when data is available', () async {
      // Mocking the behavior of secureStorageDatasource.getData
      when(() => mockSecureStorageDatasource.getData(KeySecureStorage.notificationSetting))
          .thenAnswer((_) async => '{"showNotifications": true, "isActiveSound": true, "userId": 1}');

      final result = await settingDatasource.getNotificationSetting();

      expect(result, equals(right(NotificationSettingDTO(showNotifications: true, isActiveSound: true, userId: 1))));
    });

    test('returns default NotificationSettingDTO when data is empty', () async {
      // Mocking the behavior of secureStorageDatasource.getData
      when(() => mockSecureStorageDatasource.getData(KeySecureStorage.notificationSetting)).thenAnswer((_) async => '');

      final result = await settingDatasource.getNotificationSetting();

      expect(result, equals(right(NotificationSettingDTO(showNotifications: true, isActiveSound: true, userId: 1))));
    });
  });

  group('updateNotificationSetting', () {
    test('returns updated NotificationSettingDTO on successful update', () async {
      final newNotificationSetting = NotificationSettingDTO(showNotifications: false, isActiveSound: false, userId: 2);

      // Mocking the behavior of secureStorageDatasource.saveData and delayed communication with the app server
      when(() => mockSecureStorageDatasource.saveData(
              KeySecureStorage.notificationSetting, jsonEncode(newNotificationSetting.toJson())))
          .thenAnswer((_) async => true);

      final result = await settingDatasource.updateNotificationSetting(newNotificationSetting);

      expect(result, equals(right(newNotificationSetting)));
    });
  });

  group('getLanguageSetting', () {
    test('returns LanguageSettingDTO when data is available', () async {
      // Mocking the behavior of secureStorageDatasource.getData
      when(() => mockSecureStorageDatasource.getData(KeySecureStorage.languageSetting))
          .thenAnswer((_) async => '{"languagesCodesAvailable": ["es", "en"], "languageSelected": "es"}');

      final result = await settingDatasource.getLanguageSetting();

      expect(result, equals(right(LanguageSettingDTO(languagesCodesAvailable: ['es', 'en'], languageSelected: 'es'))));
    });

    test('returns default LanguageSettingDTO when data is empty', () async {
      // Mocking the behavior of secureStorageDatasource.getData
      when(() => mockSecureStorageDatasource.getData(KeySecureStorage.languageSetting)).thenAnswer((_) async => '');

      final result = await settingDatasource.getLanguageSetting();

      expect(result, equals(right(LanguageSettingDTO(languagesCodesAvailable: ['es', 'en'], languageSelected: 'es'))));
    });
  });

  group('updateLanguageSetting', () {
    test('returns updated LanguageSettingDTO on successful update', () async {
      final newLanguageSetting = LanguageSettingDTO(languagesCodesAvailable: ['es', 'en'], languageSelected: 'en');

      // Mocking the behavior of secureStorageDatasource.saveData
      when(() => mockSecureStorageDatasource.saveData(
          KeySecureStorage.languageSetting, jsonEncode(newLanguageSetting.toJson()))).thenAnswer((_) async => true);

      final result = await settingDatasource.updateLanguageSetting(newLanguageSetting);

      expect(result, equals(right(newLanguageSetting)));
    });

    test('returns ErrorHandlerInternal when update fails', () async {
      final newLanguageSetting = LanguageSettingDTO(languagesCodesAvailable: ['es', 'en'], languageSelected: 'en');

      // Mocking the behavior of secureStorageDatasource.saveData
      when(() => mockSecureStorageDatasource.saveData(KeySecureStorage.languageSetting, any()))
          .thenThrow(Exception('Mock Error'));

      final result = await settingDatasource.updateLanguageSetting(newLanguageSetting);

      expect(result, equals(left(ErrorHandlerInternal(errorMessage: 'Exception: Mock Error'))));
    });
  });

  group('updateReminderSetting', () {
    test('returns updated ReminderSettingDTO on successful update', () async {
      final newReminderSetting = ReminderSettingDTO(snoozeDuration: 15, isActiveSound: false);

      // Mocking the behavior of secureStorageDatasource.saveData
      when(() => mockSecureStorageDatasource.saveData(
          KeySecureStorage.reminderSetting, jsonEncode(newReminderSetting.toJson()))).thenAnswer((_) async => true);

      final result = await settingDatasource.updateReminderSetting(newReminderSetting);

      expect(result, equals(right(newReminderSetting)));
    });

    test('returns ErrorHandlerInternal when update fails', () async {
      final newReminderSetting = ReminderSettingDTO(snoozeDuration: 15, isActiveSound: false);

      // Mocking the behavior of secureStorageDatasource.saveData
      when(() => mockSecureStorageDatasource.saveData(KeySecureStorage.reminderSetting, any()))
          .thenThrow(Exception('Mock Error'));

      final result = await settingDatasource.updateReminderSetting(newReminderSetting);

      expect(result, equals(left(ErrorHandlerInternal(errorMessage: 'Exception: Mock Error'))));
    });
  });
}
