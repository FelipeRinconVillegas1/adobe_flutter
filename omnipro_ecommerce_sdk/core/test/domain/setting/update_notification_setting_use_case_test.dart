import 'package:core/domain/use_case/setting/update_notification_setting_use_case.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/setting/setting_repository.dart';
import 'package:core/domain/entity/notification_setting.dart';
import 'package:core/utils/error_handler/error_handler.dart';

class MockSettingRepository extends Mock implements SettingRepository {}

void main() {
  late UpdateNotificationSettingUseCase updateNotificationSettingUseCase;
  late MockSettingRepository mockSettingRepository;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockSettingRepository = MockSettingRepository();
    updateNotificationSettingUseCase = UpdateNotificationSettingUseCase(mockSettingRepository);
  });

  test('returns updated NotificationSetting on successful update', () async {
    final newNotificationSetting = NotificationSetting(showNotifications: false, isActiveSound: true, userId: 2);
    when(() => mockSettingRepository.updateNotificationSetting(newNotificationSetting))
        .thenAnswer((_) async => right(newNotificationSetting));

    final result = await updateNotificationSettingUseCase.call(newNotificationSetting);

    expect(result, equals(right(newNotificationSetting)));
  });

  test('returns ErrorHandler on failure', () async {
    final newNotificationSetting = NotificationSetting(showNotifications: false, isActiveSound: true, userId: 2);
    when(() => mockSettingRepository.updateNotificationSetting(newNotificationSetting))
        .thenAnswer((_) async => left(ErrorHandlerInternal(errorMessage: 'Mock Error')));

    final result = await updateNotificationSettingUseCase.call(newNotificationSetting);

    expect(result, equals(left(ErrorHandlerInternal(errorMessage: 'Mock Error'))));
  });
}
