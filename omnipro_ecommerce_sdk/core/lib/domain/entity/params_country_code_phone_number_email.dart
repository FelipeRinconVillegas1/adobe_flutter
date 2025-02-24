import 'package:core/domain/entity/dropdown_manager/dropdown_option.dart';
import 'package:core/domain/form_model/phone_number.dart';
import 'package:core/utils/constants.dart';

enum FromPageForValidateCode { login, registerFormSignUp, changeEmail }

class ParamsValidateAccountWithCode {
  ParamsValidateAccountWithCode({
    this.countryCode = Constants.defaultCountry,
    this.phoneNumber = const PhoneNumber.dirty(),
    required this.fromPage,
    required this.email,
  });

  final DropdownOptionCountryCode countryCode;
  final PhoneNumber phoneNumber;
  final FromPageForValidateCode fromPage;
  final String email;

  @override
  String toString() {
    return ' +${countryCode.countryCode} ${phoneNumber.value}';
  }
}
