import 'package:equatable/equatable.dart';

/// InputLoyaltyWallet class is used to create a new loyalty wallet
class InputLoyaltyWallet extends Equatable {
  final String cardName;
  final String cardLastName;
  final String cardBirthDate;
  final String cardEmail;

  InputLoyaltyWallet({
    required this.cardName,
    required this.cardLastName,
    required this.cardBirthDate,
    required this.cardEmail,
  });

  @override
  List<Object?> get props => [cardName, cardLastName, cardBirthDate, cardEmail];
}
