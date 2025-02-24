import 'package:equatable/equatable.dart';

class SendTip extends Equatable {
  final String cartId;
  final String tip;

  SendTip({required this.cartId, required this.tip});

  @override
  List<Object?> get props => [cartId, tip];
}

class SendTipResponse {
  final String message;
  final String code;
  final String cartId;

  SendTipResponse({required this.message, required this.code, required this.cartId});
}
