import 'package:core/data/datasource/cart/cart_query.dart';
import 'package:core/data/dto/cart/cart_item_input_dto.fr.dart';
import 'package:core/data/dto/cart/config_shipping_method_dto.fr.dart';
import 'package:core/data/dto/cart/send_tip_dto.dart';
import 'package:core/data/dto/cart/update_cart_items_dto.fr.dart';
import 'package:core/domain/entity/cart/input_set_payment_method_on_cart_entity.fr.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:core/data/datasource/cart/cart_mutation.dart';
import 'package:core/data/dto/cart/add_product_to_cart_dto.fr.dart';
import 'package:core/utils/test_helpers.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/data/repository/address_mapper.dart';
import 'cart_fake_data.dart';

void main() {
  group('AddProductToCartDTO', () {
    test('toMutation() should return a valid mutation string', () {
      // Arrange
      const dto = AddProductToCartDTO(
        cartId: '1234',
        cartItems: CartItemInputDTO(
          quantity: 2,
          sku: 'ABC123',
          enteredOptions: [
            EnteredOptionInputDTO(uid: '1234', value: 'Option A'),
            EnteredOptionInputDTO(uid: '5678', value: 'Option B'),
          ],
        ),
      );

      // Act
      String mutationString = dto.toParamMutation();

      // Assert
      expect(mutationString, isA<String>());

      expect(mutationString, contains('quantity:2'));
      expect(mutationString, contains('sku:"ABC123"'));
      expect(mutationString, contains('uid:"1234"'));
      expect(mutationString, contains('value:"Option A"'));
      expect(mutationString, contains('uid:"5678"'));
      expect(mutationString, contains('value:"Option B"'));
    });
  });

  group('addProductToCartMutation', () {
    test('returns a valid GraphQL mutation string', () {
      const dto = AddProductToCartDTO(
        cartId: '1234',
        cartItems: CartItemInputDTO(
          quantity: 2,
          sku: 'ABC123',
          enteredOptions: [
            EnteredOptionInputDTO(uid: '1234', value: 'Option A'),
            EnteredOptionInputDTO(uid: '5678', value: 'Option B'),
          ],
        ),
      );
      final expectedMutation = '''
      mutation {
        addProductsToCart(
          cartId: "1234",
          cartItems: [
            {
              quantity: 2,
              sku: "ABC123",
              entered_options: [
                {uid: "1234", value: "Option A"},
                {uid: "5678", value: "Option B"}
              ],
              parent_sku: null,
              selected_options: null
            }
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
      expect(addProductToCartMutation([dto]).replaceAll(RegExp(r'\s'), ''),
          equals(expectedMutation.replaceAll(RegExp(r'\s'), '')));
    });

    test('removeProductFromCartMutation test', () {
      String expectedMutation = ''' mutation {
      removeItemFromCart(
          input: {
            cart_id: "1"
            cart_item_uid: "2"
          }
       ) {
       cart {
          ${queryGetCartInfo()}
       }
      }
    }
    ''';

      expect(removeProductFromCartMutation('1', '2').replaceAll(RegExp(r'\s'), ''),
          equals(expectedMutation.replaceAll(RegExp(r'\s'), '')));
    });
  });

  group('setShippingAddressesOnCart and  setBillingAddressesOnCart', () {
    const addressDTO = CartFakeData.customerFakeAddress;
    String cartId = '1234';

    String newAddressInMutation = '''
       address: {
                  firstname: "${addressDTO.firstname}"
                  lastname: "${addressDTO.lastname}"
                  street: ["${addressDTO.street[0]}"]
                  city: "${addressDTO.city}"
                  region: "${addressDTO.region.code}"
                  region_id: ${addressDTO.region.regionId}
                  postcode: "${addressDTO.postcode}"
                  country_code: "${addressDTO.countryCode}"
                  telephone: "${addressDTO.telephone}"
                  save_in_address_book: false
                 } 
      ''';
    test('setShippingAddressesOnCart', () {
      final expectedMutation = '''
        mutation {
          setShippingAddressesOnCart(
            input: {
              cart_id: "1234"
              shipping_addresses: [
                {
                   $newAddressInMutation
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
      expect(
          setShippingAddressesOnCartMutation(cartId, addressDTO)
              .replaceAll(RegExp(r'\s'), ''),
          equals(expectedMutation.replaceAll(RegExp(r'\s'), '')));
    });

    test('setBillingAddressesOnCart', () {
      final expectedMutation = '''
        mutation {
        setBillingAddressOnCart(
          input: {
            cart_id: "1234"
            billing_address: {
               $newAddressInMutation
            }
          }
        ) {
          cart {
            ${queryGetCartInfo()}
          }
        }
      }
      ''';
      expect(
          setBillingAddressesOnCartMutation(cartId, addressDTO)
              .replaceAll(RegExp(r'\s'), ''),
          equals(expectedMutation.replaceAll(RegExp(r'\s'), '')));
    });
  });

  test('setShippingMethodsOnCartMutation without schedule information', () {
    const cartId = '1234';

    final dtoShippingMethod = ConfigShippingMethodDTO(methodCode: 'code', carrierCode: 'carrierCode');

    final expectedMutation = '''
    mutation {
     setShippingMethodsOnCart(input: {
      cart_id: "$cartId"
      shipping_methods: [
        {
          carrier_code: "${dtoShippingMethod.methodCode}"
          method_code: "${dtoShippingMethod.methodCode}"
         }
        ]
      })  {
        cart {
          ${queryGetCartInfo()}
        }
      }
   }
    ''';
    expect(setShippingMethodsOnCartMutation(cartId, dtoShippingMethod).replaceAll(RegExp(r'\s'), ''),
        equals(expectedMutation.replaceAll(RegExp(r'\s'), '')));
  });

  test('setPaymentMethodsOnCartMutation', () {
    const cartId = '1234';

    final availablePaymentMethod =
        InputSetPaymentMethodOnCartEntity(cartId: '1234', paymentMethod: PaymentMethod(code: "checkmo"));

    final expectedMutation = '''
mutation {
  setPaymentMethodOnCart(input: {
      cart_id: "$cartId"
      payment_method: {
          code: "${availablePaymentMethod.paymentMethod.code}"
      }
  }) {
    cart {
      ${queryGetCartInfo()}
    }
  }
}
    ''';
    expect(setPaymentMethodsOnCartMutation(availablePaymentMethod).replaceAll(RegExp(r'\s'), ''),
        equals(expectedMutation.replaceAll(RegExp(r'\s'), '')));
  });

  test('setGuestEmailOnCartMutation', () {
    const cartId = '1234';

    const email = 'jhon@gmail.com';

    final expectedMutation = '''
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
    expect(setGuestEmailOnCartMutation(cartId, email).replaceAll(RegExp(r'\s'), ''),
        equals(expectedMutation.replaceAll(RegExp(r'\s'), '')));
  });

  test('applyCouponToCartMutation', () {
    const cartId = '1234';
    const couponCode = 'couponId';

    final expectedMutation = '''
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
    expect(applyCouponToCartMutation(cartId: cartId, couponCode: couponCode).replaceAll(RegExp(r'\s'), ''),
        equals(expectedMutation.replaceAll(RegExp(r'\s'), '')));
  });

  test('removeCouponFromCartMutation', () {
    const cartId = '1234';

    final expectedMutation = '''
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
    expect(removeCouponFromCartMutation(cartId: cartId).replaceAll(RegExp(r'\s'), ''),
        equals(expectedMutation.replaceAll(RegExp(r'\s'), '')));
  });

  group('updateItemProductCartMutation', () {
    test('should generate the correct mutation', () {
      // Arrange
      final updateCartItemsInputDTO = UpdateCartItemsInputDTO(
        cartId: '1',
        cartItems: [
          CartItemUpdateInputDTO(
            cartItemUid: 'UID',
            quantity: 2.0,
            price: 10.0,
            sku: 'SKU',
          )
        ],
      );

      // Act
      final mutation = updateItemProductCartMutation(updateCartItemsInputDTO);

      // Assert
      final expectedMutation = '''
mutation {
  updateCartItems(
    input: {
      cart_id: "1"
      cart_items: [
        {
          cart_item_uid: "UID"
          quantity: 2.0
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
      expect(mutation.replaceAll(RegExp(r'\s'), ''), equals(expectedMutation.replaceAll(RegExp(r'\s'), '')));
    });
  });

  group('addTipToCartMutation', () {
    test('should return correct GraphQL mutation string', () {
      // Arrange
      final mockTip = SendTipDTO(cartId: '211', tip: '79.31');
      final expectedMutationString = '''
      mutation {
        addTipCheckout(input:  {
              cart_id: "211", tip: "79.31"
          }) {
          message,
          code,
          cart_id
        }
      }
      ''';

      // Act
      final result = addTipToCartMutation(tip: mockTip);

      // Assert
      TestHelpers.expectMutation(result, expectedMutationString);
    });
  });
}
