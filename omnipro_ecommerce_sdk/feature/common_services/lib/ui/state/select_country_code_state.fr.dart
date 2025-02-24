import 'package:core/domain/entity/dropdown_manager/dropdown_option.dart';
import 'package:core/utils/constants.dart';

class SelectCountryCodeState {
  DropdownOptionCountryCode countryCodeOptionSelected;
  final List<DropdownOptionCountryCode> listCountries;

  SelectCountryCodeState({
    this.countryCodeOptionSelected = Constants.defaultCountry,
    this.listCountries = const [],
  });

  SelectCountryCodeState copyWith({
    DropdownOptionCountryCode? countryCodeOptionSelected,
    List<DropdownOptionCountryCode>? listCountries,
  }) {
    return SelectCountryCodeState(
      countryCodeOptionSelected: countryCodeOptionSelected ?? this.countryCodeOptionSelected,
      listCountries: listCountries ?? this.listCountries,
    );
  }
}
