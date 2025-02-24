import 'package:core/data/repository/setting/setting_repository.dart';
import 'package:core/domain/entity/language_setting.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class GetLanguageSettingUseCase {
  final SettingRepository _settingRepository;

  GetLanguageSettingUseCase(this._settingRepository);

  Future<Either<ErrorHandler, LanguageSetting>> call() async {
    return await _settingRepository.getLanguageSetting();
  }
}
