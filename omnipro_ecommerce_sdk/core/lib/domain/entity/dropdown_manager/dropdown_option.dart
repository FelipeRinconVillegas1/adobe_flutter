import 'package:equatable/equatable.dart';

/// DropdownOptionDTO is a data transfer object that represents a dropdown option.
class DropdownOption extends Equatable {
  final String code;
  final String nameEn;
  final String nameEs;

  String name(String locale) {
    switch (locale) {
      case 'en':
        return nameEn;
      case 'es':
        return nameEs;
      default:
        return nameEs;
    }
  }

  const DropdownOption({required this.code, required this.nameEn, required this.nameEs});

  //To string
  @override
  String toString() {
    return 'DropdownOption{code: $code, nameEs: $nameEs}';
  }

  @override
  List<Object?> get props => [code, nameEn, nameEs];
}

class DropdownOptionWithShortName extends DropdownOption {
  final String shortNameEn;
  final String shortNameEs;

  String shortName(String locale) {
    switch (locale) {
      case 'en':
        return shortNameEn;
      case 'es':
        return shortNameEs;
      default:
        return shortNameEs;
    }
  }

  const DropdownOptionWithShortName({
    this.shortNameEn = '',
    this.shortNameEs = '',
    required super.code,
    required super.nameEn,
    required super.nameEs,
  });

  @override
  List<Object?> get props => [code, nameEn, nameEs, shortNameEn, shortNameEs];
}

class DropdownOptionCountryCode extends DropdownOption {
  final String countryCode;

  const DropdownOptionCountryCode({
    required this.countryCode,
    required super.code,
    required super.nameEn,
    required super.nameEs,
  });

  @override
  List<Object?> get props => [code, nameEn, nameEs, countryCode];
}

// DropdownOptionChild is a data transfer object that represents a dropdown option with a parent code.
// This is used for example in the case of cities, where the parent code is the country code.
class DropdownOptionChild extends DropdownOption {
  final String parentCode;

  const DropdownOptionChild({
    required this.parentCode,
    required super.code,
    required super.nameEn,
    required super.nameEs,
  });

  @override
  List<Object?> get props => [code, nameEn, nameEs, parentCode];
}
