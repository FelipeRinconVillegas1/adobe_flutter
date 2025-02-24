import 'package:core/data/repository/setting/setting_repository.dart';
import 'package:core/domain/entity/language_setting.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class UpdateLanguageSettingUseCase {
  final SettingRepository _settingRepository;

  UpdateLanguageSettingUseCase(this._settingRepository);

  Future<Either<ErrorHandler, LanguageSetting>> call(LanguageSetting languageSetting) async {
    return _settingRepository.updateLanguageSetting(languageSetting);
  }
}
