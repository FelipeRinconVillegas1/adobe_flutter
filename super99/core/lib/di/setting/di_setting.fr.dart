import 'package:core/data/datasource/setting/setting_datasource.dart';
import 'package:core/data/datasource/setting/setting_datasource_impl.dart';
import 'package:core/data/repository/setting/setting_repository.dart';
import 'package:core/data/repository/setting/setting_repository_impl.dart';
import 'package:core/di/data_provider.fr.dart';
import 'package:core/domain/use_case/setting/get_language_setting_use_case.dart';
import 'package:core/domain/use_case/setting/update_language_setting_use_case.dart';
import 'package:core/domain/use_case/setting/update_notification_setting_use_case.dart';
import 'package:core/local/di_secure_storage.fr.dart';
import 'package:core/domain/use_case/setting/get_notification_setting_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'di_setting.fr.g.dart';

@riverpod
GetLanguageSettingUseCase getLanguageSettingUseCase(GetLanguageSettingUseCaseRef ref) {
  return GetLanguageSettingUseCase(ref.watch(settingRepositoryProvider));
}

@riverpod
UpdateLanguageSettingUseCase updateLanguageSettingUseCase(UpdateLanguageSettingUseCaseRef ref) {
  return UpdateLanguageSettingUseCase(ref.watch(settingRepositoryProvider));
}

@riverpod
UpdateNotificationSettingUseCase updateNotificationSettingUseCase(UpdateNotificationSettingUseCaseRef ref) {
  return UpdateNotificationSettingUseCase(ref.watch(settingRepositoryProvider));
}

@riverpod
GetNotificationSettingUseCase getNotificationSettingUseCase(GetNotificationSettingUseCaseRef ref) {
  return GetNotificationSettingUseCase(ref.watch(settingRepositoryProvider));
}

@riverpod
SettingRepository settingRepository(SettingRepositoryRef ref) {
  return SettingRepositoryImpl(ref.watch(settingDatasourceProvider));
}

@riverpod
SettingDatasource settingDatasource(SettingDatasourceRef ref) {
  return SettingDatasourceImpl(
      graphQLService: ref.watch(graphQLServiceSourceProvider),
      secureStorageDatasource: ref.watch(secureStorageDatasourceSourceProvider));
}
