import 'package:equatable/equatable.dart';

class LoyaltyWalletTransaction extends Equatable {
  final String date;
  final String name;
  final String spent;
  final String earned;

  LoyaltyWalletTransaction({
    required this.date,
    required this.name,
    required this.spent,
    required this.earned,
  });

  @override
  List<Object?> get props => [date, name, spent, earned];
}
