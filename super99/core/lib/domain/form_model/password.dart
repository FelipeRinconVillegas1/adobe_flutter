import 'package:flutter/widgets.dart';
import 'package:formz/formz.dart';

/// Define password input validation errors
enum PasswordValidationError { empty, invalid }

/// Define input validation password, is invalid according to these rules:
/// - It must contain at least one lowercase letter
/// - It must contain at least one uppercase letter
/// - It must have a minimum of 8 characters
class Password extends FormzInput<String, PasswordValidationError> {
  // Call super.pure to represent an unmodified form input.
  const Password.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const Password.dirty({String value = ''}) : super.dirty(value);

  static final RegExp _passwordRegExp = RegExp(r'^(?=.*[a-z])(?=.*[A-Z]).*$');

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return PasswordValidationError.empty;
    }

    if (value.length < 8) {
      return PasswordValidationError.invalid;
    }

    return _passwordRegExp.hasMatch(value) ? null : PasswordValidationError.invalid;
  }
}
