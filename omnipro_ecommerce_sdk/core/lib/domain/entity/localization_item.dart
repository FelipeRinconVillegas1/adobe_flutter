import 'package:equatable/equatable.dart';

/// Represents a localization item like a city or a country.
class LocalizationItem extends Equatable {
  final String code;
  final String label;

  LocalizationItem({
    required this.code,
    required this.label,
  });

  @override
  List<Object?> get props => [code, label];
}
