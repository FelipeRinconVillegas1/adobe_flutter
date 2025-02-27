import 'package:core/data/dto/customer_address_dto.fr.dart';
import 'package:core/data/dto/cart/config_shipping_method_dto.fr.dart';
import 'package:core/data/dto/cart/send_tip_dto.dart';
import 'package:core/data/dto/cart/update_cart_items_dto.fr.dart';
import 'package:core/data/dto/cart/add_product_to_cart_dto.fr.dart';
import '../../../domain/entity/cart/input_set_payment_method_on_cart_entity.fr.dart';
import 'cart_query.dart';

// __  __ _    _ _______    _______ _____ ____  _   _
// |  \/  | |  | |__   __|/\|__   __|_   _/ __ \| \ | |
// | \  / | |  | |  | |  /  \  | |    | || |  | |  \| |
// | |\/| | |  | |  | | / /\ \ | |    | || |  | | . ` |
// | |  | | |__| |  | |/ ____ \| |   _| || |__| | |\  |
// |_|  |_|\____/   |_/_/    \_\_|  |_____\____/|_| \_|

@Deprecated("Use addSimpleProductsToCartMutation instead")
String addSimpleProductsToCartMutation(AddProductToCartDTO addProductToCart) => '''
mutation {
  addSimpleProductsToCart(
    input: {
        cart_items: {
            data: { sku: "${addProductToCart.cartItems.sku}", quantity: ${addProductToCart.cartItems.quantity} }
        }
        cart_id: "${addProductToCart.cartId}"
    }
  ) {
    cart {
      ${queryGetCartInfo()}
    }
  }
}
''';

String addProductToCartMutation(List<AddProductToCartDTO> addProductToCart) => '''
mutation {
  addProductsToCart(
   cartId: "${addProductToCart.first.cartId}"
      cartItems: [
        ${addProductToCart.map((addProductToCart) => '''
        {
            sku: "${addProductToCart.cartItems.sku}",
            quantity: ${addProductToCart.cartItems.quantity} 
        }
        ''').join('\n')}
      ]
  ) {
    cart {
      ${queryGetCartInfo()}
    }
    user_errors {
      code
      message
    }
  }
}
''';

String removeProductFromCartMutation(String cartId, String cartItemUID) => '''
mutation {
  removeItemFromCart(
    input: {
      cart_id: "$cartId"
      cart_item_uid: "$cartItemUID"
    }
  ) {
    cart {
      ${queryGetCartInfo()}
    }
  }
}
''';

String updateItemProductCartMutation(UpdateCartItemsInputDTO updateCartItemsInputDTO) => '''
mutation {
  updateCartItems(
    input: {
      cart_id: "${updateCartItemsInputDTO.cartId}"
      cart_items: [
        ${updateCartItemsInputDTO.cartItems.map((e) => e.toMutation()).join('\n')}
      ]
    }
   ) {
    cart {
      ${queryGetCartInfo()}
    }
  }
}
''';

String createCartMutation() => '''
{
  customerCart{
    id
  }
}
    ''';

String createEmptyCartMutation() => '''
mutation {
  createEmptyCart
}
    ''';

String setShippingAddressesOnCartMutation(String cartId, CustomerAddressDTO orderAddressDTO) => '''
mutation {
  setShippingAddressesOnCart(
    input: {
      cart_id: "$cartId"
      shipping_addresses: [
       {
         customer_address_id: ${orderAddressDTO.id}
       }
     ]
    }
  ) {
    cart {
      ${queryGetCartInfo()}
    }
  }
}

''';

String setBillingAddressesOnCartMutation(String cartId, CustomerAddressDTO orderAddressDTO) => '''
  mutation {
  setBillingAddressOnCart(
    input: {
      cart_id: "$cartId"
      billing_address: {
        customer_address_id: ${orderAddressDTO.id}
      }
    }
  ) {
    cart {
      ${queryGetCartInfo()}
    }
  }
}
''';

String setShippingMethodsOnCartMutation(String cartId, ConfigShippingMethodDTO shippingMethodDTO) => '''
  mutation {
  setShippingMethodsOnCart(input: {
    cart_id: "$cartId"
    shipping_methods: [
      {
        carrier_code: "${shippingMethodDTO.methodCode}"
        method_code: "${shippingMethodDTO.methodCode}"
      }
    ]
  }) {
    cart {
      ${queryGetCartInfo()}
    }
  }
}
''';

String setPaymentMethodsOnCartMutation(InputSetPaymentMethodOnCartEntity input) => '''
mutation {
  setPaymentMethodOnCart(
      input: {${input.toParamMutation()}}
  ) {
    cart {
      ${queryGetCartInfo()}
    }
  }
}
''';

String setGuestEmailOnCartMutation(String cartId, String email) => '''
mutation {
  setGuestEmailOnCart(input: {
    cart_id: "$cartId"
    email: "$email"
  }) {
    cart {
      ${queryGetCartInfo()}
    }
  }
}
''';

String applyCouponToCartMutation({required String cartId, required String couponCode}) => '''
mutation {
  applyCouponToCart(
    input: {
      cart_id: "$cartId"
      coupon_code: "$couponCode"
    }
  ) {
    cart {
      ${queryGetCartInfo()}
    }
  }
}
''';

String removeCouponFromCartMutation({required String cartId}) => '''
mutation {
  removeCouponFromCart(
    input: {
      cart_id: "$cartId"
    }
  ) {
    cart {
      ${queryGetCartInfo()}
    }
  }
}
''';

String addTipToCartMutation({required SendTipDTO tip}) => '''
mutation {
  addTipCheckout(input:{
        ${tip.toParamMutation()}
    }) {
    message,
    code,
    cart_id
  }
}
''';

String removeAllItemsFromCartMutation({required String cartId}) => '''
mutation {
  removeAllItemsFromCart(
    input: {
      cart_id: "$cartId"
    }
  ) {
    cart {
      ${queryGetCartInfo()}
    }
  }
}
''';

String removeCartItemsFromCartMutation({required String cartId, required List<int> cartItemIds}) => '''
mutation {
    removeCartItems(
        cart_id: "$cartId",
        item_ids: [${cartItemIds.join(",")}]
    ) {
        ${queryGetCartInfo()}
    }
}
''';