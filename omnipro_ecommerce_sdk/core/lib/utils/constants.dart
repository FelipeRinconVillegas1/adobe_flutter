import 'package:core/domain/entity/dropdown_manager/dropdown_option.dart';
import 'package:core/domain/entity/language.dart';

class Constants {
  static const DropdownOptionCountryCode defaultCountry = DropdownOptionCountryCode(
    code: String.fromEnvironment('DEFAULT_COUNTRY_ISO'),
    nameEn: String.fromEnvironment('DEFAULT_COUNTRY_NAME_EN'),
    nameEs: String.fromEnvironment('DEFAULT_COUNTRY_NAME_ES'),
    countryCode: String.fromEnvironment('DEFAULT_COUNTRY_CODE'),
  );

  /// Firebase
  static const String errorByTokenMessage = 'The current customer isn\'t authorized';

  static const String defaultLocaleCurrency = 'en_US';
  static const String defaultSymbolCurrency = '\$';

  static const Language spanishLanguage = Language(code: 'es', name: 'Spanish');
  static const Language englishLanguage = Language(code: 'en', name: 'English');

  static const String playStoreUrl = '';
  static const String appStoreUrl = '';

  /// Magento config
  static const String storeView = 'super99_app_store_view';
  static const String urlSuper99Magento = String.fromEnvironment('URL_HOST_MAGENTO');

  /// Config calendar input
  static const String dateFormatMMDDYYY = 'MM-dd-yyyy';
  static const String dateFormatYYYMMDD = 'yyyy-MM-dd';
  static final DateTime initialDate = DateTime(2000);
  static final DateTime firstDate = DateTime(1900);
  static final DateTime lastDate = DateTime.now();
}
