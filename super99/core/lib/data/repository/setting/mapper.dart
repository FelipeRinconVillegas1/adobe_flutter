import 'package:core/data/dto/setting/language_setting_dto.fr.dart';
import 'package:core/data/dto/setting/notification_setting_dto.fr.dart';
import 'package:core/domain/entity/language.dart';
import 'package:core/domain/entity/language_setting.dart';
import 'package:core/domain/entity/notification_setting.dart';

extension MapperNotificationSettingDomain on NotificationSetting {
  NotificationSettingDTO toDTO() => NotificationSettingDTO(
        userId: userId,
        showNotifications: showNotifications,
        isActiveSound: isActiveSound,
      );
}

extension MapperLanguageSettingDTO on LanguageSettingDTO {
  LanguageSetting toDomain() => LanguageSetting(
        languagesAvailable: languagesCodesAvailable.map((e) => Language.fromCode(e)).toList(),
        languageSelected: Language.fromCode(languageSelected),
      );
}

extension MapperLanguageSettingDomain on LanguageSetting {
  LanguageSettingDTO toDTO() => LanguageSettingDTO(
        languagesCodesAvailable: languagesAvailable.map((e) => e.code).toList(),
        languageSelected: languageSelected.code,
      );
}

extension MapperNotificationSettingDTO on NotificationSettingDTO {
  NotificationSetting toDomain() => NotificationSetting(
        userId: userId,
        showNotifications: showNotifications,
        isActiveSound: isActiveSound,
      );
}
