import 'package:core/domain/entity/dropdown_manager/dropdown_option.dart';

class SelectCountryCodeState {
  DropdownOptionCountryCode countryCodeOptionSelected;
  final List<DropdownOptionCountryCode> listCountries;

  SelectCountryCodeState({
    required this.countryCodeOptionSelected,
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
