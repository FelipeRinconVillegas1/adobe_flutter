import 'package:core/domain/entity/dropdown_manager/dropdown_option.dart';
import 'package:core/domain/form_model/phone_number.dart';
import 'package:core/utils/date_util.dart';

class FormEditProfileState {
  FormEditProfileState({
    this.firstName = '',
    this.lastName = '',
    this.validateFields = false,
    this.genderSelected,
    this.documentNumber = '',
    this.mobileNumber = const PhoneNumber.dirty(),
    this.birthDate,
    this.showErrorDob = false,
    this.showErrorMobileNumber = false,
    this.resultChangeImage = '',
    required this.documentTypeSelected,
    required this.countryCodeSelected,
  });

  final String firstName;
  final String lastName;
  final bool validateFields;
  final DropdownOption? genderSelected;
  final String resultChangeImage;
  final String documentNumber;
  final PhoneNumber mobileNumber;
  final DropdownOptionCountryCode countryCodeSelected;
  final DropdownOption documentTypeSelected;
  final DateTime? birthDate;

  final bool showErrorDob;
  final bool showErrorMobileNumber;

  bool get isValidBirthDate => DateUtil.isOver18YearsOld(birthDate);

  bool isValidState() {
    bool isPhoneValid = mobileNumber.isValid;
    return firstName.isNotEmpty &&
        lastName.isNotEmpty &&
        documentNumber.isNotEmpty &&
        birthDate != null &&
        isPhoneValid &&
        isValidBirthDate;
  }

  FormEditProfileState copyWith({
    String? firstName,
    String? lastName,
    bool? validateFields,
    DropdownOption? genderSelected,
    DateTime? birthDate,
    bool? showErrorDob,
    String? image,
    String? resultChangeImage,
    String? documentNumber,
    PhoneNumber? mobileNumber,
    DropdownOptionCountryCode? countryCodeSelected,
    DropdownOption? documentTypeSelected,
    bool? showErrorMobileNumber,
  }) {
    return FormEditProfileState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      validateFields: validateFields ?? this.validateFields,
      genderSelected: genderSelected ?? this.genderSelected,
      birthDate: birthDate ?? this.birthDate,
      showErrorDob: showErrorDob ?? this.showErrorDob,
      resultChangeImage: resultChangeImage ?? '',
      documentNumber: documentNumber ?? this.documentNumber,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      countryCodeSelected: countryCodeSelected ?? this.countryCodeSelected,
      documentTypeSelected: documentTypeSelected ?? this.documentTypeSelected,
      showErrorMobileNumber: showErrorMobileNumber ?? this.showErrorMobileNumber,
    );
  }

  @override
  String toString() {
    return 'FormEditProfileState('
        'firstName: $firstName, '
        'lastName: $lastName, '
        'validateFields: $validateFields, '
        'genderSelected: $genderSelected, '
        'birthDate: $birthDate, '
        'showErrorDob: $showErrorDob, '
        'resultChangeImage: $resultChangeImage, '
        'documentNumber: $documentNumber, '
        'mobileNumber: $mobileNumber, '
        'countryCodeSelected: $countryCodeSelected, '
        'documentTypeSelected: $documentTypeSelected)';
  }
}
