import 'package:core/domain/entity/dropdown_manager/dropdown_option.dart';
import 'package:core/domain/form_model/phone_number.dart';
import 'package:core/utils/constants.dart';

class FormEditMobileNumberState {
  final DropdownOptionCountryCode? countrySelected;
  final PhoneNumber mobileNumber;
  final bool validateFields;

  FormEditMobileNumberState({
    this.countrySelected = Constants.defaultCountry,
    this.mobileNumber = const PhoneNumber.dirty(),
    this.validateFields = false,
  });

  FormEditMobileNumberState copyWith({
    DropdownOptionCountryCode? country,
    PhoneNumber? mobileNumber,
    bool? validateFields,
    List<DropdownOptionWithShortName>? listCountries,
  }) {
    return FormEditMobileNumberState(
      countrySelected: country ?? countrySelected,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      validateFields: validateFields ?? this.validateFields,
    );
  }

  bool isValidState() {
    return mobileNumber.isValid;
  }

  //To String
  @override
  String toString() {
    return 'FormEditMobileNumberState(country: $countrySelected, mobileNumber: $mobileNumber, validateFields: $validateFields)';
  }
}
