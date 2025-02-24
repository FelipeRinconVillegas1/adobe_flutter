import 'package:core/data/dto/setting/language_setting_dto.fr.dart';
import 'package:core/data/dto/setting/notification_setting_dto.fr.dart';
import 'package:core/data/repository/setting/mapper.dart';
import 'package:core/data/repository/setting/setting_repository.dart';
import 'package:core/data/repository/setting/setting_repository_impl.dart';
import 'package:core/domain/entity/language.dart';
import 'package:core/utils/extension.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/datasource/setting/setting_datasource.dart';
import 'package:core/domain/entity/language_setting.dart';
import 'package:core/domain/entity/notification_setting.dart';
import 'package:core/utils/error_handler/error_handler.dart';

class MockSettingDatasource extends Mock implements SettingDatasource {}

void main() {
  late SettingRepository settingRepository;
  late MockSettingDatasource mockSettingDatasource;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockSettingDatasource = MockSettingDatasource();
    settingRepository = SettingRepositoryImpl(mockSettingDatasource);
  });

  group('getNotificationSetting', () {
    test('returns NotificationSetting on successful retrieval', () async {
      final notificationDTO = NotificationSettingDTO(showNotifications: true, isActiveSound: true, userId: 1);
      when(() => mockSettingDatasource.getNotificationSetting()).thenAnswer((_) async => right(notificationDTO));

      final result = await settingRepository.getNotificationSetting();

      expect(result, equals(right(notificationDTO.toDomain())));
    });

    test('returns ErrorHandler on failure', () async {
      when(() => mockSettingDatasource.getNotificationSetting())
          .thenAnswer((_) async => left(ErrorHandlerInternal(errorMessage: 'Mock Error')));

      final result = await settingRepository.getNotificationSetting();

      expect(result, equals(left(ErrorHandlerInternal(errorMessage: 'Mock Error'))));
    });
  });

  group('getLanguageSetting', () {
    test('returns LanguageSetting on successful retrieval', () async {
      final languageDTO = LanguageSettingDTO(languagesCodesAvailable: ['es', 'en'], languageSelected: 'es');
      when(() => mockSettingDatasource.getLanguageSetting()).thenAnswer((_) async => right(languageDTO));

      final result = await settingRepository.getLanguageSetting();

      expect(result, equals(right(languageDTO.toDomain())));
    });

    test('returns ErrorHandler on failure', () async {
      when(() => mockSettingDatasource.getLanguageSetting())
          .thenAnswer((_) async => left(ErrorHandlerInternal(errorMessage: 'Mock Error')));

      final result = await settingRepository.getLanguageSetting();

      expect(result, equals(left(ErrorHandlerInternal(errorMessage: 'Mock Error'))));
    });
  });

  group('updateLanguageSetting', () {
    final newLanguageSetting = LanguageSetting(
      languagesAvailable: [Language(code: 'es', name: 'Spanish'), Language(code: 'en', name: 'English')],
      languageSelected: Language(code: 'es', name: 'Spanish'),
    );
    test('returns updated LanguageSetting on successful update', () async {
      final newLanguageSettingDTO = newLanguageSetting.toDTO();
      when(() => mockSettingDatasource.updateLanguageSetting(newLanguageSettingDTO))
          .thenAnswer((_) async => right(newLanguageSettingDTO));

      final result = await settingRepository.updateLanguageSetting(newLanguageSetting);

      expect(result.getRight()!, newLanguageSetting);
    });

    test('returns ErrorHandler on failure', () async {
      when(() => mockSettingDatasource.updateLanguageSetting(newLanguageSetting.toDTO()))
          .thenAnswer((_) async => left(ErrorHandlerInternal(errorMessage: 'Mock Error')));

      final result = await settingRepository.updateLanguageSetting(newLanguageSetting);

      expect(result, equals(left(ErrorHandlerInternal(errorMessage: 'Mock Error'))));
    });
  });

  group('updateNotificationSetting', () {
    final newNotificationSetting = NotificationSetting(showNotifications: false, isActiveSound: false, userId: 2);
    test('returns updated NotificationSetting on successful update', () async {
      final newNotificationSettingDTO = newNotificationSetting.toDTO();
      when(() => mockSettingDatasource.updateNotificationSetting(newNotificationSettingDTO))
          .thenAnswer((_) async => right(newNotificationSettingDTO));

      final result = await settingRepository.updateNotificationSetting(newNotificationSetting);

      expect(result, equals(right(newNotificationSetting)));
    });

    test('returns ErrorHandler on failure', () async {
      final newNotificationSetting = NotificationSetting(showNotifications: false, isActiveSound: false, userId: 2);
      when(() => mockSettingDatasource.updateNotificationSetting(newNotificationSetting.toDTO()))
          .thenAnswer((_) async => left(ErrorHandlerInternal(errorMessage: 'Mock Error')));

      final result = await settingRepository.updateNotificationSetting(newNotificationSetting);

      expect(result, equals(left(ErrorHandlerInternal(errorMessage: 'Mock Error'))));
    });
  });
}
