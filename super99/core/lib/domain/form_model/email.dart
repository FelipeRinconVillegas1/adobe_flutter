import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

/// Enum for email validation errors
enum EmailValidationError { invalid }

/// Define input validation email, is invalid according to these rules:
/// - It must match the standard email format: example@example.com
class Email extends FormzInput<String, EmailValidationError> with FormzInputErrorCacheMixin {
  Email.pure([super.value = '']) : super.pure();

  Email.dirty([super.value = '']) : super.dirty();

  /// Regular expression for email
  /// - It must match the standard email format: example@example.com
  static final _emailRegExp = RegExp(r'^[a-zA-Z\d.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z\d-]+(?:\.[a-zA-Z\d-]+)*$');

  @override
  EmailValidationError? validator(String value) {
    return _emailRegExp.hasMatch(value) ? null : EmailValidationError.invalid;
  }
}
