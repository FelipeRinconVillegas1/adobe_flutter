import 'package:core/utils/extension.dart';
import 'package:equatable/equatable.dart';

///  MoneyInfo is a value object that contains a label and a Money object.
class MoneyInfo extends Equatable {
  final String label;
  final Money money;

  const MoneyInfo({
    required this.label,
    required this.money,
  });

  @override
  List<Object?> get props => [label, money];
}

/// Money is a value object that contains a value and a currency.
class Money extends Equatable {
  final double value;
  final String currency;

  const Money({
    required this.value,
    required this.currency,
  });

  String get valueInCurrency => value.toCurrency();

  @override
  List<Object?> get props => [value, currency];

  Map<String, dynamic> toJson() {
    final result = <String, dynamic>{};

    result.addAll({'value': value});
    result.addAll({'currency': currency});

    return result;
  }

  factory Money.fromJson(Map<String, dynamic> map) {
    return Money(
      value: map['value']?.toDouble() ?? 0.0,
      currency: map['currency'] ?? '',
    );
  }

  //Copy with
  Money copyWith({
    double? value,
    String? currency,
  }) {
    return Money(
      value: value ?? this.value,
      currency: currency ?? this.currency,
    );
  }
}
