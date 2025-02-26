import '../products.dart';
import 'cart_item_input.dart';

/// The input object used to add a product to the cart
class AddProductToCart {
  //The unique ID that identifies the customers cart
  String cartId;

  //Contains the cart item IDs and quantity of each item
  final CartItemInput cartItem;
  final ProductsItems productItem;

  AddProductToCart({
    this.cartId = "",
    required this.cartItem,
    required this.productItem,
  });
}
