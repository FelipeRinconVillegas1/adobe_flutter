
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

/// Enum for birthDate validation errors
enum BirthDateValidationError { invalid }

class BirthDate extends FormzInput<String, BirthDateValidationError> {
  const BirthDate.pure([super.value = '']) : super.pure();

  const BirthDate.dirty({String value = ''}) : super.dirty(value);

  static final _birthDateRegex = RegExp(r'^(0[1-9]|1\d|2\d|3[01])-(0[1-9]|1[0-2])-\d{4}$');

  @override
  BirthDateValidationError? validator(String value) {
    return _birthDateRegex.hasMatch(value) ? null : BirthDateValidationError.invalid;
  }
}


