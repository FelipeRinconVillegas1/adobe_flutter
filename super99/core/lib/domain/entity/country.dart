import 'package:equatable/equatable.dart';

@Deprecated('Use [DropdownOption] instead')
class Country extends Equatable {
  final String name;
  final String dialCode;
  final String code;

  const Country(this.name, this.dialCode, this.code);

  @override
  List<Object?> get props => [name, dialCode, code];
}
