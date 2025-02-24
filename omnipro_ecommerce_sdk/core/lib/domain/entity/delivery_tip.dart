import 'package:equatable/equatable.dart';

class DeliveryTip extends Equatable {
  final String labelTip;
  final double value;

  const DeliveryTip({
    required this.labelTip,
    required this.value,
  });

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
