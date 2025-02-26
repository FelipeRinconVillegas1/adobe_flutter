import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/domain/entity/dropdown_manager/dropdown_option.dart';
import 'package:core/domain/entity/dropdown_manager/options_dropdown_names.dart';
import 'package:core/domain/form_model/phone_number.dart';
import 'package:core/utils/custom_attribute_code.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../common_services/ui/dropdown_manager/dropdown_manager.dart';
import 'form_edit_profile_state.fr.dart';

part 'form_edit_profile_notifier.fr.g.dart';

@riverpod
class FormEditProfileNotifier extends _$FormEditProfileNotifier {
  @override
  FormEditProfileState build() {
    final DropdownOption documetTypeSelected = DropdownManager().getOptions(DropdownOptionType.documentTypes).first;
    return FormEditProfileState(
      documentTypeSelected: documetTypeSelected,
      countryCodeSelected:
          const DropdownOptionCountryCode(code: 'PA', nameEs: 'Panamá', nameEn: 'Panama', countryCode: '507'),
    );
  }

  void updateFirstName(String firstName) {
    state = state.copyWith(
      firstName: firstName,
    );
  }

  void updateLastName(String lastName) {
    state = state.copyWith(
      lastName: lastName,
    );
  }

  void updateDocumentNumber(String documentNumber) {
    state = state.copyWith(
      documentNumber: documentNumber,
    );
  }

  bool isValidForm() {
    return state.isValidState();
  }

  void updateGenderSelected(DropdownOption genderSelected) {
    state = state.copyWith(
      genderSelected: genderSelected,
    );
  }

  void updateBirthDate(DateTime birthDate) {
    state = state.copyWith(
      birthDate: birthDate,
      showErrorDob: true,
    );
  }

  void validateFields(bool validateFields) {
    state = state.copyWith(
      validateFields: validateFields,
    );
  }

  void showErrorMobileNumber(bool showError) {
    if (state.mobileNumber.value.isNotEmpty) {
      state = state.copyWith(showErrorMobileNumber: showError);
    }
  }

  void setCountry(DropdownOptionCountryCode newValue) {
    state = state.copyWith(countryCodeSelected: newValue);
  }

  void setMobileNumber(String newValue) {
    state = state.copyWith(mobileNumber: PhoneNumber.dirty(value: newValue));
  }

  void setDocumentTypeSelected(DropdownOption newValue) {
    state = state.copyWith(documentTypeSelected: newValue);
  }

  String get firstName => state.firstName;

  String get lastName => state.lastName;

  DropdownOption? get genderSelected => state.genderSelected;

  DateTime? get birthDate => state.birthDate;

  PhoneNumber get mobileNumber => state.mobileNumber;

  String get mobileNumberValue => state.mobileNumber.value;

  String get documentType => state.documentTypeSelected.code;

  String get documentNumber => state.documentNumber;

  String get countryCode => state.countryCodeSelected.countryCode;

  void updateFromCustomer(Customer customer) {
    final optionSelectedCountryCode = DropdownManager()
        .getOptions(DropdownOptionType.countryCodes)
        .map((e) => e as DropdownOptionCountryCode)
        .toList()
        .firstWhere(
            (element) =>
                element.countryCode ==
                customer.customAttributesRequired[CustomAttributeCode.customerAreaCodeTelephone]!.value,
            orElse: () =>
                const DropdownOptionCountryCode(code: 'PA', nameEs: 'Panamá', nameEn: 'Panama', countryCode: '507'));

    final DropdownOption genderSelected = DropdownManager().getOptions(DropdownOptionType.genders).firstWhere(
        (gender) => gender.code == customer.gender.toString(),
        orElse: () => const DropdownOption(code: '', nameEn: '', nameEs: ''));

    final docTypeOption = DropdownManager().getOptions(DropdownOptionType.documentTypes).firstWhere(
        (element) => element.code == customer.customAttributesRequired[CustomAttributeCode.identidicationType]?.value,
        orElse: () => const DropdownOption(code: '', nameEn: '', nameEs: ''));

    state = state.copyWith(
        firstName: customer.firstName,
        lastName: customer.lastName,
        birthDate: customer.dateOfBirth,
        documentNumber: customer.customAttributesRequired[CustomAttributeCode.customerIdentification]!.value,
        countryCodeSelected: optionSelectedCountryCode,
        mobileNumber:
            PhoneNumber.dirty(value: customer.customAttributesRequired[CustomAttributeCode.customeTelephone]!.value),
        genderSelected: genderSelected.code.isNotEmpty ? genderSelected : null,
        documentTypeSelected: docTypeOption);
  }

  void updateImage(String imageBase64) {
    state = state.copyWith(
      image: imageBase64,
    );
  }

  void updateResultChangeImage(String resultChangeImage) {
    state = state.copyWith(
      resultChangeImage: resultChangeImage,
    );
  }
}
