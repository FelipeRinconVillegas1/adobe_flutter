import 'package:equatable/equatable.dart';

class LoyaltyWalletCredential extends Equatable {
  final String cardNumber;
  final String cardBirthDate;
  final String customerEmail;

  const LoyaltyWalletCredential({
    required this.cardNumber,
    required this.cardBirthDate,
    required this.customerEmail,
  });

  @override
  List<Object?> get props => [
        cardNumber,
        cardBirthDate,
        customerEmail,
      ];
}
