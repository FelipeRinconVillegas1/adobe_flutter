import 'package:core/data/repository/setting/setting_repository.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/domain/entity/notification_setting.dart';

class UpdateNotificationSettingUseCase {
  final SettingRepository _settingRepository;

  UpdateNotificationSettingUseCase(
    this._settingRepository,
  );

  Future<Either<ErrorHandler, NotificationSetting>> call(NotificationSetting newSetting) async {
    return _settingRepository.updateNotificationSetting(newSetting);
  }
}
