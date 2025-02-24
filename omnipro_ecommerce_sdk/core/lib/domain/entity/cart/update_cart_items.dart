import 'package:core/domain/entity/products.dart';
import 'package:equatable/equatable.dart';

class UpdateCartItemsInput extends Equatable {
  final String cartId;
  final List<CartItemUpdateInput> cartItems;

  const UpdateCartItemsInput({
    required this.cartId,
    required this.cartItems,
  });

  @override
  List<Object?> get props => [cartId, cartItems];
}

class CartItemUpdateInput extends Equatable {
  final String cartItemUid;
  final double quantity;
  final double quantityToSubtract;
  final double price;
  final ProductsItems product;
  final String sku;

  const CartItemUpdateInput({
    required this.cartItemUid,
    required this.quantityToSubtract,
    required this.quantity,
    required this.product,
    required this.price,
    required this.sku,
  });

  @override
  List<Object?> get props => [cartItemUid, quantity, price, sku];
}
