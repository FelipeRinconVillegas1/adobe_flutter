import 'package:equatable/equatable.dart';

class DeliveryTip extends Equatable {
  const DeliveryTip({
    required this.labelTip,
    required this.value,
  });

  final String labelTip;
  final double value;

  DeliveryTip copyWith({
    String? labelTip,
    double? value,
  }) {
    return DeliveryTip(
      labelTip: labelTip ?? this.labelTip,
      value: value ?? this.value,
    );
  }

  @override
  List<Object?> get props => [labelTip, value];
}
