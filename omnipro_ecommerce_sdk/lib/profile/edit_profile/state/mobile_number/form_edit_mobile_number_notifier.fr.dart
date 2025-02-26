import 'package:core/domain/entity/dropdown_manager/dropdown_option.dart';
import 'package:core/domain/form_model/phone_number.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'form_edit_mobile_number_state.fr.dart';

part 'form_edit_mobile_number_notifier.fr.g.dart';

@riverpod
class FormEditMobileNumberNotifier extends _$FormEditMobileNumberNotifier {

  @override
  FormEditMobileNumberState build() {
    return FormEditMobileNumberState();
  }

  void updateCountry(DropdownOptionCountryCode country) {
    state = state.copyWith(
      country: country,
    );
  }

  void updateMobileNumber(String mobileNumber) {
    state = state.copyWith(
      mobileNumber: PhoneNumber.dirty(value: mobileNumber),
    );
  }

  void setValidateFields(bool validateFields) {
    state = state.copyWith(
      validateFields: validateFields,
    );
  }

  bool get validateFields => state.validateFields;

  bool isValidForm() {
    return state.isValidState();
  }

  PhoneNumber get mobileNumber => state.mobileNumber;
}
