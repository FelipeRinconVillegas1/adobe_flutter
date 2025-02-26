import 'package:core/data/dto/customer_address_dto.fr.dart';
import 'package:core/data/dto/cart/add_product_to_cart_dto.fr.dart';
import 'package:core/data/dto/cart/cart_dto.fr.dart';
import 'package:core/data/dto/cart/config_shipping_method_dto.fr.dart';
import 'package:core/data/dto/cart/enabled_shipping_method_dto.fr.dart';
import 'package:core/data/dto/cart/send_tip_dto.dart';
import 'package:core/data/dto/cart/update_cart_items_dto.fr.dart';
import 'package:core/data/dto/products_dto.fr.dart';
import 'package:core/domain/entity/stores/warehouse_address_entity.fr.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:core/data/datasource/cart/cart_datasource.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/data/datasource/secure_call_datasource.dart';
import 'package:core/utils/extension.dart';
import '../../../domain/entity/cart/input_set_payment_method_on_cart_entity.fr.dart';
import '../../../domain/entity/customer.fr.dart';
import 'cart_mutation.dart';
import 'cart_query.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql/src/core/query_result.dart';

class CartDatasourceImpl extends CartDatasource {
  CartDatasourceImpl(this._graphQLService, this._graphQLServiceNoAuthenticated);

  final GraphQLService _graphQLService;
  final GraphQLService _graphQLServiceNoAuthenticated;

  @override
  Future<Either<ErrorHandler, CartDTO>> addProductToCart(
    List<AddProductToCartDTO> addProductsToCartDTO, {
    bool isGuestUser = false,
  }) async {
    return secureServerCall(() async {
      late Either<ErrorHandler, QueryResult<Object?>> response;

      String mutation = addProductToCartMutation(addProductsToCartDTO);

      if (isGuestUser) {
        response = await _graphQLServiceNoAuthenticated.mutation(mutation);
      } else {
        response = await _graphQLService.mutation(mutation);
      }
      final mutationResponse = response.getRight();
      if (mutationResponse == null) {
        return left(response.getLeft()!);
      }

      if ((mutationResponse.data?['addProductsToCart']['user_errors']?.length ?? 0) > 0) {
        String errorMessageOutOfStock = "Some of the products are out of stock.";
        dynamic errorCode = ErrorCode.addProductCart;
        if ((mutationResponse.data?['addProductsToCart']['user_errors'][0]['message'] ?? "").contains(
          errorMessageOutOfStock,
        )) {
          errorCode = ErrorCode.errorInsufficientStock;
        } else {
          errorCode = mutationResponse.data?['addProductsToCart']['user_errors'][0]['code'] ?? ErrorCode.addProductCart;
        }

        return left(
          ErrorHandlerExternal(
            errorCode: errorCode,
            errorMessage:
                mutationResponse.data?['addProductsToCart']['user_errors'][0]['message'] ?? ErrorCode.addProductCart,
          ),
        );
      }

      return right(CartDTO.fromJson(mutationResponse.data?['addProductsToCart']['cart']));
    });
  }

  @override
  Future<Either<ErrorHandler, CartDTO>> updateCartItems({
    required UpdateCartItemsInputDTO updateCartItemsInputDTO,
    required bool isGuestUser,
  }) {
    return secureServerCall(() async {
      final mutation = updateItemProductCartMutation(updateCartItemsInputDTO);
      late Either<ErrorHandler, QueryResult<Object?>> response;
      if (isGuestUser) {
        response = await _graphQLServiceNoAuthenticated.mutation(mutation);
      } else {
        response = await _graphQLService.mutation(mutation);
      }

      final mutationResponse = response.getRight();
      if (mutationResponse == null) {
        return left(response.getLeft()!);
      }

      return right(CartDTO.fromJson(mutationResponse.data?['updateCartItems']['cart']));
    });
  }

  @override
  Future<Either<ErrorHandler, CartDTO>> removeProductFromCart({
    required String cartId,
    required String cartItemId,
    required bool isGuestUser,
  }) {
    return secureServerCall(() async {
      final mutation = removeProductFromCartMutation(cartId, cartItemId);
      late Either<ErrorHandler, QueryResult<Object?>> response;
      if (isGuestUser) {
        response = await _graphQLServiceNoAuthenticated.mutation(mutation);
      } else {
        response = await _graphQLService.mutation(mutation);
      }
      final queryResponse = response.getRight();
      if (queryResponse == null) {
        return left(response.getLeft()!);
      }

      return right(CartDTO.fromJson(queryResponse.data?['removeItemFromCart']['cart']));
    });
  }

  @override
  Future<Either<ErrorHandler, CartDTO>> getCartInfo(String cartId, {required bool isGuestUser}) {
    return secureServerCall(() async {
      final query = getCartInfoQuery(cartId);
      late Either<ErrorHandler, QueryResult<Object?>> response;
      if (isGuestUser) {
        response = await _graphQLServiceNoAuthenticated.query(query);
      } else {
        response = await _graphQLService.query(query);
      }
      final queryResponse = response.getRight();
      if (queryResponse == null) {
        return left(response.getLeft()!);
      }

      return right(CartDTO.fromJson(queryResponse.data?['cart']));
    });
  }

  @override
  Future<Either<ErrorHandler, String>> createCustomerCart({required bool isGuestUser}) {
    return secureServerCall(() async {
      final mutation = createCartMutation();
      late Either<ErrorHandler, QueryResult<Object?>> response;
      if (isGuestUser) {
        response = await _graphQLServiceNoAuthenticated.mutation(mutation);
      } else {
        response = await _graphQLService.mutation(mutation);
      }

      final queryResponse = response.getRight();
      if (queryResponse == null) {
        return left(response.getLeft()!);
      }

      String cartId = queryResponse.data?['customerCart']['id'];
      if (cartId.isEmpty) {
        return left(
          ErrorHandlerExternal(errorCode: ErrorCode.customerCartID, errorMessage: 'CUSTOMER CART ID IS EMPTY'),
        );
      }

      return right(cartId);
    });
  }

  @override
  Future<Either<ErrorHandler, CartDTO>> setShippingAddressesOnCart(
    CustomerAddressDTO orderAddressDTO,
    String cartId, {
    required bool isGuestUser,
  }) {
    return secureServerCall(() async {
      final mutation = setShippingAddressesOnCartMutation(cartId, orderAddressDTO);
      late Either<ErrorHandler, QueryResult<Object?>> response;
      if (isGuestUser) {
        response = await _graphQLServiceNoAuthenticated.mutation(mutation);
      } else {
        response = await _graphQLService.mutation(mutation);
      }

      final queryResponse = response.getRight();
      if (queryResponse == null) {
        LoggerApp().error(
          message: 'Error setting shipping address on cart. ORDER ADDRESS: $orderAddressDTO',
          error: response.getLeft()!,
          errorCode: ErrorCode.errorSetShippingAddressOnCart.message,
        );
        return left(response.getLeft()!);
      }

      return right(CartDTO.fromJson(queryResponse.data?['setShippingAddressesOnCart']['cart']));
    });
  }

  @override
  Future<Either<ErrorHandler, CartDTO>> setBillingAddressesOnCart(
    CustomerAddressDTO orderAddressDTO,
    String cartId, {
    required bool isGuestUser,
  }) {
    return secureServerCall(() async {
      final mutation = setBillingAddressesOnCartMutation(cartId, orderAddressDTO);
      late Either<ErrorHandler, QueryResult<Object?>> response;
      if (isGuestUser) {
        response = await _graphQLServiceNoAuthenticated.mutation(mutation);
      } else {
        response = await _graphQLService.mutation(mutation);
      }

      final queryResponse = response.getRight();
      if (queryResponse == null) {
        return left(response.getLeft()!);
      }

      return right(CartDTO.fromJson(queryResponse.data?['setBillingAddressOnCart']['cart']));
    });
  }

  @override
  Future<Either<ErrorHandler, CartDTO>> setShippingMethodOnCart(
    ConfigShippingMethodDTO newShippingMethod,
    String cartId, {
    required bool isGuestUser,
  }) {
    return secureServerCall(() async {
      late final String mutation;
      late Either<ErrorHandler, QueryResult<Object?>> response;

      mutation = setShippingMethodsOnCartMutation(cartId, newShippingMethod);

      if (isGuestUser) {
        response = await _graphQLServiceNoAuthenticated.mutation(mutation);
      } else {
        response = await _graphQLService.mutation(mutation);
      }

      final queryResponse = response.getRight();
      if (queryResponse == null) {
        return left(response.getLeft()!);
      }

      return right(CartDTO.fromJson(queryResponse.data?['setShippingMethodsOnCart']['cart']));
    });
  }

  @override
  Future<Either<ErrorHandler, CartDTO>> setPaymentMethodOnCart(
    InputSetPaymentMethodOnCartEntity input, {
    required bool isGuestUser,
  }) {
    return secureServerCall(() async {
      late Either<ErrorHandler, QueryResult<Object?>> response;
      final mutation = setPaymentMethodsOnCartMutation(input);

      if (isGuestUser) {
        response = await _graphQLServiceNoAuthenticated.mutation(mutation);
      } else {
        response = await _graphQLService.mutation(mutation);
      }

      final queryResponse = response.getRight();
      if (queryResponse == null) {
        return left(response.getLeft()!);
      }

      return right(CartDTO.fromJson(queryResponse.data?['setPaymentMethodOnCart']['cart']));
    });
  }

  @override
  Future<Either<ErrorHandler, CartDTO>> setGuestEmailOnCart({required String email, required String cartId}) {
    return secureServerCall(() async {
      final mutation = setGuestEmailOnCartMutation(cartId, email);
      final response = await _graphQLServiceNoAuthenticated.mutation(mutation);

      final queryResponse = response.getRight();
      if (queryResponse == null) {
        return left(response.getLeft()!);
      }

      return right(CartDTO.fromJson(queryResponse.data?['setGuestEmailOnCart']['cart']));
    });
  }

  @override
  Future<Either<ErrorHandler, CartDTO>> appliedCoupon({
    required String cartId,
    required String couponCode,
    required bool isGuestUser,
  }) {
    return secureServerCall(() async {
      final mutation = applyCouponToCartMutation(cartId: cartId, couponCode: couponCode);
      late Either<ErrorHandler, QueryResult<Object?>> response;

      if (isGuestUser) {
        response = await _graphQLServiceNoAuthenticated.mutation(mutation);
      } else {
        response = await _graphQLService.mutation(mutation);
      }

      final queryResponse = response.getRight();
      if (queryResponse == null) {
        return left(response.getLeft()!);
      }

      return right(CartDTO.fromJson(queryResponse.data?['applyCouponToCart']['cart']));
    });
  }

  @override
  Future<Either<ErrorHandler, CartDTO>> deleteCouponFromCart({required String cartId, required bool isGuestUser}) {
    return secureServerCall(() async {
      final mutation = removeCouponFromCartMutation(cartId: cartId);
      late Either<ErrorHandler, QueryResult<Object?>> response;

      if (isGuestUser) {
        response = await _graphQLServiceNoAuthenticated.mutation(mutation);
      } else {
        response = await _graphQLService.mutation(mutation);
      }

      final queryResponse = response.getRight();
      if (queryResponse == null) {
        return left(response.getLeft()!);
      }

      return right(CartDTO.fromJson(queryResponse.data?['removeCouponFromCart']['cart']));
    });
  }

  @override
  Future<Either<ErrorHandler, String>> createEmptyCart({required bool isGuestUser}) {
    return secureServerCall(() async {
      final mutation = createEmptyCartMutation();
      late Either<ErrorHandler, QueryResult<Object?>> response;
      if (isGuestUser) {
        response = await _graphQLServiceNoAuthenticated.mutation(mutation);
      } else {
        response = await _graphQLService.mutation(mutation);
      }

      final queryResponse = response.getRight();
      if (queryResponse == null) {
        return left(response.getLeft()!);
      }
      String cartId = queryResponse.data?['createEmptyCart'];
      if (cartId.isEmpty) {
        return left(ErrorHandlerExternal(errorCode: ErrorCode.guestCartID, errorMessage: 'GUEST CART ID IS EMPTY'));
      }
      return right(cartId);
    });
  }

  @override
  Future<Either<ErrorHandler, List<ProductsItemsDTO>>> getCrossSellingProducts({required List<String> skus}) {
    return secureServerCall(() async {
      final query = getCrossSellingProductsQuery(skus);
      final response = await _graphQLService.query(query);

      final queryResponse = response.getRight();
      if (queryResponse == null) {
        return left(response.getLeft()!);
      }
      List<ProductsItemsDTO> products = [];
      queryResponse.data?['products']['items'].forEach((element) {
        final crossSellList = element['crosssell_products'];
        if (crossSellList != null) {
          crossSellList.forEach((crossSell) {
            products.add(ProductsItemsDTO.fromJson(crossSell));
          });
        }
      });
      return right(products);
    });
  }

  @override
  Future<Either<ErrorHandler, SendTipResponseDTO>> addTipToCart({required SendTipDTO sendTipDTO}) {
    return secureServerCall(() async {
      final mutation = addTipToCartMutation(tip: sendTipDTO);
      final response = await _graphQLService.mutation(mutation);
      final queryResponse = response.getRight();
      if (queryResponse == null) {
        return left(response.getLeft()!);
      }
      final responseTip = SendTipResponseDTO.fromJson(queryResponse.data?['addTipCheckout']);

      if (responseTip.code == '200') {
        return right(responseTip);
      } else {
        return left(ErrorHandlerExternal(errorCode: ErrorCode.addTipToCart, errorMessage: responseTip.message));
      }
    });
  }

  @override
  Future<Either<ErrorHandler, List<EnabledShippingMethodDTO>>> getEnabledShippingMethods() {
    return secureServerCall(() async {
      final query = getEnabledShippingMethodQuery();
      final response = await _graphQLService.query(query);
      final queryResponse = response.getRight();
      if (queryResponse == null) {
        return left(response.getLeft()!);
      }
      List<EnabledShippingMethodDTO> shippingMethods = [];
      queryResponse.data?['getEnabledShippingMethods'].forEach((element) {
        shippingMethods.add(EnabledShippingMethodDTO.fromJson(element));
      });
      return right(shippingMethods);
    });
  }

  @override
  Future<Either<ErrorHandler, CartDTO>> removeAllItemsFromCart({required String cartId}) {
    return secureServerCall(() async {
      final mutation = removeAllItemsFromCartMutation(cartId: cartId);
      final response = await _graphQLService.mutation(mutation);
      final queryResponse = response.getRight();
      if (queryResponse == null) {
        return left(response.getLeft()!);
      }
      return right(CartDTO.fromJson(queryResponse.data?['removeAllItemsFromCart']['cart']));
    });
  }

  @override
  Future<Either<ErrorHandler, CartDTO>> removeCartItems({
    required String cartId,
    required List<int> cartItemIds,
    required bool isGuestUser,
  }) {
    return secureServerCall(() async {
      final mutation = removeCartItemsFromCartMutation(cartId: cartId, cartItemIds: cartItemIds);
      late Either<ErrorHandler, QueryResult<Object?>> response;
      if (isGuestUser) {
        response = await _graphQLServiceNoAuthenticated.mutation(mutation);
      } else {
        response = await _graphQLService.mutation(mutation);
      }
      final queryResponse = response.getRight();
      if (queryResponse == null) {
        return left(response.getLeft()!);
      }
      return right(CartDTO.fromJson(queryResponse.data?['removeCartItems']));
    });
  }

  @override
  Future<Either<ErrorHandler, CartDTO>> setWarehouseAddressOnCart(
    WareHouseAddressEntity wareHouseAddressEntity,
    String cartId, {
    required Customer customerLogged,
  }) {
    return secureServerCall(() async {
      final mutation = setWarehouseAddressOnCartMutation(
        customerLogged,
        cartId,
        wareHouseAddressEntity,
      );
      final response = await _graphQLService.mutation(mutation);

      final queryResponse = response.getRight();
      if (queryResponse == null) {
        LoggerApp().error(
          message: 'Error setting shipping address on cart. ORDER ADDRESS: $wareHouseAddressEntity',
          error: response.getLeft()!,
          errorCode: ErrorCode.errorSetShippingAddressOnCart.message,
        );
        return left(response.getLeft()!);
      }

      return right(CartDTO.fromJson(queryResponse.data?['setShippingAddressesOnCart']['cart']));
    });
  }
}
