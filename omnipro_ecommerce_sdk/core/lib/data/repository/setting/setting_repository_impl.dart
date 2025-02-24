import 'package:core/data/datasource/setting/setting_datasource.dart';
import 'package:core/data/repository/setting/setting_repository.dart';
import 'package:core/domain/entity/language_setting.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/domain/entity/notification_setting.dart';
import 'mapper.dart';

class SettingRepositoryImpl extends SettingRepository {
  final SettingDatasource _settingDatasource;

  SettingRepositoryImpl(
    this._settingDatasource,
  );

  @override
  Future<Either<ErrorHandler, NotificationSetting>> getNotificationSetting() async {
    final resultGetNotificationSetting = await _settingDatasource.getNotificationSetting();

    return resultGetNotificationSetting.fold(
      (l) => left(l),
      (r) => right(r.toDomain()),
    );
  }

  @override
  Future<Either<ErrorHandler, LanguageSetting>> getLanguageSetting() async {
    final resultGetLanguageSetting = await _settingDatasource.getLanguageSetting();

    return resultGetLanguageSetting.fold(
      (l) => left(l),
      (r) => right(r.toDomain()),
    );
  }

  @override
  Future<Either<ErrorHandler, LanguageSetting>> updateLanguageSetting(LanguageSetting newSetting) async {
    final resultUpdateLanguageSetting = await _settingDatasource.updateLanguageSetting(newSetting.toDTO());

    return resultUpdateLanguageSetting.fold(
      (l) => left(l),
      (r) => right(r.toDomain()),
    );
  }

  @override
  Future<Either<ErrorHandler, NotificationSetting>> updateNotificationSetting(NotificationSetting newSetting) async {
    final resultUpdateNotificationSetting = await _settingDatasource.updateNotificationSetting(newSetting.toDTO());

    return resultUpdateNotificationSetting.fold(
      (l) => left(l),
      (r) => right(r.toDomain()),
    );
  }
}
