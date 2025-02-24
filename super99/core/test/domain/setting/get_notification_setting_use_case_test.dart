import 'package:core/domain/use_case/setting/get_notification_setting_use_case.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/setting/setting_repository.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/domain/entity/notification_setting.dart';

class MockSettingRepository extends Mock implements SettingRepository {}

void main() {
  late GetNotificationSettingUseCase getNotificationSettingUseCase;
  late MockSettingRepository mockSettingRepository;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockSettingRepository = MockSettingRepository();
    getNotificationSettingUseCase = GetNotificationSettingUseCase(mockSettingRepository);
  });

  test('returns NotificationSetting on successful retrieval', () async {
    final notificationSetting = NotificationSetting(showNotifications: true, isActiveSound: true, userId: 1);
    when(() => mockSettingRepository.getNotificationSetting()).thenAnswer((_) async => right(notificationSetting));

    final result = await getNotificationSettingUseCase.execute();

    expect(result, equals(right(notificationSetting)));
  });

  test('returns ErrorHandler on failure', () async {
    when(() => mockSettingRepository.getNotificationSetting())
        .thenAnswer((_) async => left(ErrorHandlerInternal(errorMessage: 'Mock Error')));

    final result = await getNotificationSettingUseCase.execute();

    expect(result, equals(left(ErrorHandlerInternal(errorMessage: 'Mock Error'))));
  });
}
