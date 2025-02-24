import 'package:equatable/equatable.dart';

class CardIDLoyaltyWallet extends Equatable {
  final String cardID;

  CardIDLoyaltyWallet({required this.cardID});

  @override
  List<Object?> get props => [cardID];
}
