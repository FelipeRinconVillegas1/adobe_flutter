import 'package:core/di/use_cases_provider.fr.dart';
import 'package:core/domain/entity/dropdown_manager/dropdown_option.dart';
import 'package:core/domain/entity/dropdown_manager/options_dropdown_names.dart';
import 'package:core/domain/entity/omnipro_config/omnipro_configuration.fr.dart';
import 'package:core/domain/use_case/dropdown_manager/dropdown_manager.dart';
import 'package:core/init/setup_omnipro_sdk.dart';
import 'package:omnipro_ecommerce_sdk/common_services/ui/state/select_country_code_state.fr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'select_country_code_notifier.fr.g.dart';

@Riverpod(keepAlive: true)
class SelectCountryCodeNotifier extends _$SelectCountryCodeNotifier {
  late DropdownOptionsUseCase _dropdownOptionsManager;

  @override
  SelectCountryCodeState build() {
    _dropdownOptionsManager = ref.watch(dropdownOptionsUseCaseProvider);
    final countriesResult = _dropdownOptionsManager.getOptions<DropdownOptionCountryCode>(
      DropdownOptionType.countryCodes,
    );

    final List<DropdownOptionCountryCode> countries = countriesResult.fold(
      (error) => [
        const DropdownOptionCountryCode(code: 'PA', nameEs: 'Panamá', nameEn: 'Panama', countryCode: '507'),
        const DropdownOptionCountryCode(code: 'CO', nameEs: 'Colombia', nameEn: 'Colombia', countryCode: '57'),
      ],
      (options) => options,
    );
    return SelectCountryCodeState(
      listCountries: countries,
      countryCodeOptionSelected: SetupOnmiproSdk().getConfig().getDefaultCountry(),
    );
  }

  void updateCountryCode(DropdownOptionCountryCode countryCode) {
    state = state.copyWith(countryCodeOptionSelected: countryCode);
  }
}
