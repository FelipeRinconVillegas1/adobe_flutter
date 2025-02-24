import 'package:core/data/repository/setting/setting_repository.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/domain/entity/notification_setting.dart';

class GetNotificationSettingUseCase {
  final SettingRepository _settingRepository;

  GetNotificationSettingUseCase(this._settingRepository);

  Future<Either<ErrorHandler, NotificationSetting>> execute() async {
    return await _settingRepository.getNotificationSetting();
  }
}
