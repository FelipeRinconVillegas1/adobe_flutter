import 'package:core/domain/entity/money.fr.dart';
import 'package:equatable/equatable.dart';

class SelectedShippingMethod extends Equatable {
  final String carrierCode;
  final String carrierTitle;
  final String methodCode;
  final String methodTitle;
  final Money amount;


  const SelectedShippingMethod(
      {required this.carrierCode,
      required this.carrierTitle,
      required this.methodCode,
      required this.methodTitle,
      required this.amount});

  @override
  List<Object?> get props => [carrierCode, carrierTitle, methodCode, methodTitle, amount];
}
