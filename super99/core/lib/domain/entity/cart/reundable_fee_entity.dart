import 'package:equatable/equatable.dart';

///Custom attribute of the cart prices that contains the amount saved by loyalty program
class RefundableFeeEntity extends Equatable {
  final double value;

  const RefundableFeeEntity({
    required this.value,
  });

  @override
  List<Object?> get props => [value];
}
