import 'package:equatable/equatable.dart';

///Custom attribute of the cart prices that contains the amount saved by loyalty program
class AmountSaved extends Equatable {
  final double value;

  const AmountSaved({
    required this.value,
  });

  @override
  List<Object?> get props => [value];
}
