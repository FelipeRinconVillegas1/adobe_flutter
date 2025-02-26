import 'package:freezed_annotation/freezed_annotation.dart';

import '../dropdown_manager/dropdown_option.dart';

part 'omnipro_configuration.fr.freezed.dart';
part 'omnipro_configuration.fr.g.dart';

@freezed
class OmniproConfiguration with _$OmniproConfiguration {
  const factory OmniproConfiguration({
    required String urlHostMagento,
    required String defaultCountryIso,
    required String defaultCountryNameEn,
    required String defaultCountryNameEs,
    required String defaultCountryCode,
    @Default('') String baseUrlRest,
    Map<String, String>? headersMagentoGraphQL,
    @Default('en_US') String defaultLocaleCurrency,
    @Default('\$') String defaultSymbolCurrency,
  }) = _OmniproConfiguration;

  factory OmniproConfiguration.fromJson(Map<String, Object?> json) => _$OmniproConfigurationFromJson(json);
}

/// Extension on OmniproConfiguration to include non-generated methods.
extension OmniproConfigurationX on OmniproConfiguration {
  /// A custom method to retrieve the default country as a dropdown option.
  /// This encapsulates the default country information into a single dropdown-relevant object.
  DropdownOptionCountryCode getDefaultCountry() {
    return DropdownOptionCountryCode(
      code: defaultCountryIso,
      nameEn: defaultCountryNameEn,
      nameEs: defaultCountryNameEs,
      countryCode: defaultCountryCode,
    );
  }
}
