import 'package:equatable/equatable.dart';

class BalanceLoyaltyWallet extends Equatable {
  final String balance;

  const BalanceLoyaltyWallet({required this.balance});

  @override
  List<Object?> get props => [balance];
}
