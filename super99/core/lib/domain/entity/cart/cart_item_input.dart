import 'entered_option_input.dart';

class CartItemInput {
  final List<EnteredOptionInput>? enteredOptions;

  final String? parentSku;

  final double quantity;

  final List<String>? selectedOptions;

  final String sku;

  final double price;

  CartItemInput({
    required this.quantity,
    required this.sku,
    required this.price,
    this.enteredOptions,
    this.parentSku,
    this.selectedOptions,
  });
}
