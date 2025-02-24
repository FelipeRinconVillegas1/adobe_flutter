
import 'package:flutter/services.dart';
import 'package:formz/formz.dart';

/// Enum for phone number validation errors
enum PhoneNumberValidatorError { empty, invalid }

/// Define input validation number phone, is invalid according to these rules:
/// - it must accept only numbers
/// - must not be empty
class PhoneNumber extends FormzInput<String, PhoneNumberValidatorError> {
  // Call super.pure to represent an unmodified form input.
  const PhoneNumber.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const PhoneNumber.dirty({String value = ''}) : super.dirty(value);

  /// Regular expression for phone number only numbers
  static final _onlyNumberRegExp = RegExp(r'^\d+$');

  @override
  PhoneNumberValidatorError? validator(String value) {
    if (value.isEmpty) {
      return PhoneNumberValidatorError.empty;
    }
    //TODO FALTA CUAL EL MINIMO DE NUMEROS
    return _onlyNumberRegExp.hasMatch(value) && value.length <= 11 ? null : PhoneNumberValidatorError.invalid;
  }
}

/// Format phone number to (xxx) xxx-xxxx
String formatPhoneNumber(String phoneNumber) {
  // Create a regular expression pattern to match a 10-digit number.
  final RegExp regex = RegExp(r'^(\d{3})(\d{3})(\d{4})$');

  // Extract the three groups of digits from the phone number.
  final RegExpMatch? match = regex.firstMatch(phoneNumber);

  if (match != null) {
    // Format the phone number using parentheses and hyphens.
    final formattedNumber = '(${match.group(1)}) ${match.group(2)}-${match.group(3)}';

    return formattedNumber;
  }

  // Return the original number if it doesn't match the expected format.
  return phoneNumber;
}

class PhoneNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String formattedText = _formatPhoneNumber(newValue.text);
    return newValue.copyWith(text: formattedText, selection: _updateCursorPosition(formattedText, newValue));
  }

  String _formatPhoneNumber(String etPhoneNumber) {
    int length = etPhoneNumber.length;

    if (length == 1 && !etPhoneNumber.contains("(")) {
      etPhoneNumber = "($etPhoneNumber";
    } else if (length == 5 && !etPhoneNumber.contains(")")) {
      etPhoneNumber = etPhoneNumber.substring(0, 4) + (") ") + (etPhoneNumber.substring(4));
    } else if (length == 10 && !etPhoneNumber.contains("-")) {
      etPhoneNumber = etPhoneNumber.substring(0, 9) + ("-") + (etPhoneNumber.substring(9));
    }

    return etPhoneNumber;
  }

  TextSelection _updateCursorPosition(String formattedText, TextEditingValue newValue) {
    return TextSelection.collapsed(offset: formattedText.length);
  }
}
