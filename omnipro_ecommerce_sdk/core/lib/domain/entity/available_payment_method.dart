import 'package:equatable/equatable.dart';

class AvailablePaymentMethod extends Equatable {
  final String code;

  final String title;

  AvailablePaymentMethod({
    required this.code,
    required this.title,
  });

  @override
  List<Object?> get props => [code, title];
}
