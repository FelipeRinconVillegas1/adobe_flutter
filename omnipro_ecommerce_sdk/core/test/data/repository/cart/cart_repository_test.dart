import 'package:core/data/datasource/cart/cart_datasource_impl.dart';
import 'package:core/data/dto/cart/add_to_cart_oms_options_dto.fr.dart';
import 'package:core/data/dto/cart/cart_dto.fr.dart';
import 'package:core/data/dto/cart/cart_item_input_dto.fr.dart';
import 'package:core/data/dto/cart/enabled_shipping_method_dto.fr.dart';
import 'package:core/data/dto/cart/send_tip_dto.dart';
import 'package:core/data/repository/cart/cart_repository_impl.dart';
import 'package:core/domain/entity/available_payment_method.dart';
import 'package:core/domain/entity/cart/add_product_to_cart.dart';
import 'package:core/domain/entity/cart/add_product_to_cart_oms_options.dart';
import 'package:core/domain/entity/cart/cart.fr.dart';
import 'package:core/domain/entity/cart/cart_item_input.dart';
import 'package:core/domain/entity/cart/config_shipping_method.dart';
import 'package:core/domain/entity/cart/input_set_payment_method_on_cart_entity.fr.dart';
import 'package:core/domain/entity/cart/send_tip.dart';
import 'package:core/domain/entity/cart/set_shipping_address_oms_options.dart';
import 'package:core/domain/entity/cart/update_cart_items.dart';
import 'package:core/domain/entity/products.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/extension.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/data/dto/cart/add_product_to_cart_dto.fr.dart';
import 'package:core/data/repository/cart/mapper.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/data/repository/address_mapper.dart';

import '../../datasource/cart/cart_fake_data.dart';

class MockCartDataSource extends Mock implements CartDatasourceImpl {}

void main() {
  late CartDatasourceImpl cartDataSourceImpl;
  late CartRepositoryImpl cartRepositoryImpl;
  late AddProductToCart addProductToCart;
  late AddProductToCartDTO addProductToCartDTO;
  late SetShippingAddressOmsOptions setShippingOmsOptions;
  late AddressOmsOptions addressOmsOptions;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    cartDataSourceImpl = MockCartDataSource();
    cartRepositoryImpl = CartRepositoryImpl(cartDataSourceImpl);
    addProductToCartDTO = const AddProductToCartDTO(
      cartId: 'test',
      cartItems: CartItemInputDTO(sku: '1', quantity: 1),
      omsOptions: AddToCartOmsOptionsDTO(
        omsCid: '1',
        omsCode: '1',
        omsShippingMethod: '1',
      ),
    );
    addProductToCart = AddProductToCart(
      productItem: ProductsItems(
          name: 'p1',
          sku: 's1',
          image: ProductsImage(label: 'test'),
          typeId: "simple",
          tags: [],
          id: 1,
          minSaleQty: 1,
          margin: 1),
      cartId: 'test',
      cartItem: CartItemInput(quantity: 1, price: 1, sku: "1"),
      omsOptions: AddToCartOmsOptions(omsCid: '1', omsCode: '1', omsShippingMethod: '1'),
    );
    setShippingOmsOptions = SetShippingAddressOmsOptions(
      cityCustom: "08",
      stateCustom: "87",
      zoneCustom: "097",
      latitude: "1234",
      longitude: "12324",
    );
    addressOmsOptions = AddressOmsOptions(
      cityCustom: "08",
      stateCustom: "87",
      zoneCustom: "097",
      latitude: "1234",
      longitude: "12324",
    );
  });

  group('addToCart', () {
    test('returns Cart when datasource call is successful', () async {
      //arrange
      final cartDTO = CartDTO.fromJson(CartFakeData.successfulAddCartData['addProductsToCart']['cart']);
      final cart = cartDTO.toDomain();
      when(() => cartDataSourceImpl.addProductToCart([addProductToCartDTO]))
          .thenAnswer((_) async => Right<ErrorHandler, CartDTO>(cartDTO));
      //act
      final result = await cartRepositoryImpl.addProductToCart([addProductToCart], isGuestUser: false);
      //assert
      verify(() => cartDataSourceImpl.addProductToCart([addProductToCartDTO])).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right<ErrorHandler, Cart>(cart));
    });

    test('returns ErrorHandler when datasource call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Server error',
      );
      when(() => cartDataSourceImpl.addProductToCart([addProductToCartDTO])).thenAnswer((_) async => Left(expected));
      //act
      final result = await cartRepositoryImpl.addProductToCart([addProductToCart], isGuestUser: false);
      //assert
      verify(() => cartDataSourceImpl.addProductToCart([addProductToCartDTO])).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l, expected), (r) => expect(r, null));
    });
  });

  group('updateCart items test', () {
    // Arrange
    final cartDTO = CartDTO.fromJson(CartFakeData.successUpdateItemCart['updateCartItems']['cart']);
    final updateCartItemsInput = UpdateCartItemsInput(
      cartId: 'your_cart_id',
      cartItems: [
        CartItemUpdateInput(
            cartItemUid: 'UI',
            quantityToSubtract: 1,
            quantity: 1.0,
            price: 1.0,
            sku: 'sku',
            product: ProductsItems(
                name: 'p1',
                margin: 1,
                sku: 's1',
                image: ProductsImage(label: 'test'),
                typeId: "simple",
                tags: [],
                id: 1,
                minSaleQty: 1))
      ],
    );
    test('returns Cart when DataSource call is successful', () async {
      when(() => cartDataSourceImpl.updateCartItems(
          updateCartItemsInputDTO: updateCartItemsInput.toDto(),
          isGuestUser: false)).thenAnswer((_) async => Right(cartDTO));

      // Act
      final result =
          await cartRepositoryImpl.updateCartItems(updateCartItemsInput: updateCartItemsInput, isGuestUser: false);

      // Assert
      expect(result.getRight()!, cartDTO.toDomain());
      verify(() => cartDataSourceImpl.updateCartItems(
          updateCartItemsInputDTO: updateCartItemsInput.toDto(), isGuestUser: false)).called(1);
    });

    test('returns ErrorHandler when DataSource call fails', () async {
      // Arrange
      final expectedError = ErrorHandlerInternal(
        errorMessage: 'Server error',
      );

      when(() => cartDataSourceImpl.updateCartItems(
          updateCartItemsInputDTO: updateCartItemsInput.toDto(),
          isGuestUser: false)).thenAnswer((_) async => Left(expectedError));

      // Act
      final result =
          await cartRepositoryImpl.updateCartItems(updateCartItemsInput: updateCartItemsInput, isGuestUser: false);

      // Assert
      expect(result, equals(left(expectedError)));
      verify(() => cartDataSourceImpl.updateCartItems(
          updateCartItemsInputDTO: updateCartItemsInput.toDto(), isGuestUser: false)).called(1);
    });
  });

  group('Remove item from cart', () {
    test('returns Cart when datasource call is successful', () async {
      //arrange
      final cartDTO = CartDTO.fromJson(CartFakeData.successfulAddCartData['addProductsToCart']['cart']);
      final cart = cartDTO.toDomain();
      when(() => cartDataSourceImpl.removeProductFromCart(cartId: '1', cartItemId: '2', isGuestUser: false))
          .thenAnswer((_) async => Right<ErrorHandler, CartDTO>(cartDTO));
      //act
      final result = await cartRepositoryImpl.removeProductFromCart(cartId: '1', cartItemId: '2', isGuestUser: false);
      //assert
      verify(() => cartDataSourceImpl.removeProductFromCart(cartId: '1', cartItemId: '2', isGuestUser: false))
          .called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right<ErrorHandler, Cart>(cart));
    });

    test('returns ErrorHandler when datasource call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Server error',
      );
      when(() => cartDataSourceImpl.removeProductFromCart(cartId: '1', cartItemId: '2', isGuestUser: false))
          .thenAnswer((_) async => Left(expected));
      //act
      final result = await cartRepositoryImpl.removeProductFromCart(cartId: '1', cartItemId: '2', isGuestUser: false);
      //assert
      verify(() => cartDataSourceImpl.removeProductFromCart(cartId: '1', cartItemId: '2', isGuestUser: false))
          .called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l, expected), (r) => expect(r, null));
    });
  });

  group('getCartInfo', () {
    test('returns Cart when datasource call is successful', () async {
      //arrange
      final cartDTO = CartDTO.fromJson(CartFakeData.successfulAddCartData['addProductsToCart']['cart']);
      final cart = cartDTO.toDomain();
      when(() => cartDataSourceImpl.getCartInfo('test', isGuestUser: false))
          .thenAnswer((_) async => Right<ErrorHandler, CartDTO>(cartDTO));
      //act
      final result = await cartRepositoryImpl.getCartInfo('test', isGuestUser: false);
      //assert
      verify(() => cartDataSourceImpl.getCartInfo('test', isGuestUser: false)).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right<ErrorHandler, Cart>(cart));
    });

    test('returns ErrorHandler when datasource call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Server error',
      );
      when(() => cartDataSourceImpl.getCartInfo('test', isGuestUser: false)).thenAnswer((_) async => Left(expected));
      //act
      final result = await cartRepositoryImpl.getCartInfo('test', isGuestUser: false);
      //assert
      verify(() => cartDataSourceImpl.getCartInfo('test', isGuestUser: false)).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l, expected), (r) => expect(r, null));
    });
  });

  group('setShippingAddressesOnCart', () {
    const cartIdMock = 'cartId';
    final mockCart = CartDTO.fromJson(CartFakeData.cartSuccessFakeData);
    const addressDTO = CartFakeData.customerFakeAddress;
    test('return Cart  when _cartDatasource.setShippingAddressesOnCart success ', () async {
      when(() => cartDataSourceImpl.setShippingAddressesOnCart(addressDTO, cartIdMock,
          isGuestUser: false,
          setShippingAddressOmsOptionsDTO: setShippingOmsOptions.toDTO())).thenAnswer((_) async => Right(mockCart));
      //act
      final result = await cartRepositoryImpl.setShippingAddressesOnCart(addressDTO.toDomain(), cartIdMock,
          isGuestUser: false, setShippingAddressOmsOptions: setShippingOmsOptions);
      //assert
      verify(() => cartDataSourceImpl.setShippingAddressesOnCart(addressDTO, cartIdMock,
          isGuestUser: false, setShippingAddressOmsOptionsDTO: setShippingOmsOptions.toDTO())).called(1);
      expect(result.fold((l) => null, (r) => r), mockCart);
    });

    test('setShippingAddressesOnCart returns ErrorHandler when datasource call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Server error',
      );
      when(() => cartDataSourceImpl.setShippingAddressesOnCart(addressDTO, cartIdMock,
          isGuestUser: false,
          setShippingAddressOmsOptionsDTO: setShippingOmsOptions.toDTO())).thenAnswer((_) async => Left(expected));
      //act
      final result = await cartRepositoryImpl.setShippingAddressesOnCart(addressDTO.toDomain(), cartIdMock,
          isGuestUser: false, setShippingAddressOmsOptions: setShippingOmsOptions);
      //assert
      verify(() => cartDataSourceImpl.setShippingAddressesOnCart(addressDTO, cartIdMock,
          isGuestUser: false, setShippingAddressOmsOptionsDTO: setShippingOmsOptions.toDTO())).called(1);

      expect(result.fold((l) => l, (r) => null), expected);
    });
  });

  group('setBillingAddressesOnCart', () {
    const addressDTO = CartFakeData.customerFakeAddress;

    const cartIdMock = 'cartId';

    final mockCart = CartDTO.fromJson(CartFakeData.cartSuccessFakeData);

    test('setBillingAddressesOnCart return Cart when _cartDatasource.setBillingAddressesOnCart success ', () async {
      when(() => cartDataSourceImpl.setBillingAddressesOnCart(addressDTO, cartIdMock,
          isGuestUser: false,
          setBillingAddressOmsOptionsDTO: addressOmsOptions.toDTO())).thenAnswer((_) async => Right(mockCart));
      //act
      final result = await cartRepositoryImpl.setBillingAddressesOnCart(addressDTO.toDomain(), cartIdMock,
          isGuestUser: false, addressOmsOptions: addressOmsOptions);
      //assert
      verify(() => cartDataSourceImpl.setBillingAddressesOnCart(addressDTO, cartIdMock,
          isGuestUser: false, setBillingAddressOmsOptionsDTO: addressOmsOptions.toDTO())).called(1);
      expect(result.fold((l) => null, (r) => r), mockCart.toDomain());
    });

    test('setBillingAddressesOnCart returns ErrorHandler when datasource call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Server error',
      );
      when(() => cartDataSourceImpl.setBillingAddressesOnCart(addressDTO, cartIdMock,
          isGuestUser: false,
          setBillingAddressOmsOptionsDTO: addressOmsOptions.toDTO())).thenAnswer((_) async => Left(expected));
      //act
      final result = await cartRepositoryImpl.setBillingAddressesOnCart(addressDTO.toDomain(), cartIdMock,
          isGuestUser: false, addressOmsOptions: addressOmsOptions);
      //assert
      verify(() => cartDataSourceImpl.setBillingAddressesOnCart(addressDTO, cartIdMock,
          isGuestUser: false, setBillingAddressOmsOptionsDTO: addressOmsOptions.toDTO())).called(1);

      expect(result.fold((l) => l, (r) => null), expected);
    });
  });

  group('setShippingMethodOnCart', () {
    final mockShippingMethod = ConfigShippingMethod(carrierCode: 'carrierCode', methodCode: 'methodCode');
    AvailablePaymentMethod(code: 'code', title: 'title');

    const cartIdMock = 'cartId';

    final mockCart = CartDTO.fromJson(CartFakeData.cartSuccessFakeData);

    test('setShippingMethodOnCart return Cart  when _cartDatasource.setShippingMethodOnCart success ', () async {
      when(() => cartDataSourceImpl.setShippingMethodOnCart(mockShippingMethod.toDTO(), cartIdMock, isGuestUser: false))
          .thenAnswer((_) async => Right(mockCart));
      //act
      final result =
          await cartRepositoryImpl.setShippingMethodOnCart(mockShippingMethod, cartIdMock, isGuestUser: false);
      //assert
      verify(() =>
              cartDataSourceImpl.setShippingMethodOnCart(mockShippingMethod.toDTO(), cartIdMock, isGuestUser: false))
          .called(1);
      expect(result.fold((l) => null, (r) => r), mockCart.toDomain());
    });

    test('setPaymentMethodOnCart returns ErrorHandler when datasource call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Server error',
      );
      when(() => cartDataSourceImpl.setShippingMethodOnCart(mockShippingMethod.toDTO(), cartIdMock, isGuestUser: false))
          .thenAnswer((_) async => Left(expected));
      //act
      final result =
          await cartRepositoryImpl.setShippingMethodOnCart(mockShippingMethod, cartIdMock, isGuestUser: false);
      //assert
      verify(() =>
              cartDataSourceImpl.setShippingMethodOnCart(mockShippingMethod.toDTO(), cartIdMock, isGuestUser: false))
          .called(1);

      expect(result.fold((l) => l, (r) => null), expected);
    });
  });

  group('setPaymentMethodOnCart', () {
    final availablePaymentMethod = InputSetPaymentMethodOnCartEntity(
        cartId: 'your_current_cart_id', paymentMethod: PaymentMethod(code: "checkmo"));

    final mockCart = CartDTO.fromJson(CartFakeData.cartSuccessFakeData);

    test('return Cart  when _cartDatasource.setPaymentMethodOnCart success ', () async {
      when(() => cartDataSourceImpl.setPaymentMethodOnCart(availablePaymentMethod, isGuestUser: false))
          .thenAnswer((_) async => Right(mockCart));
      //act
      final result = await cartRepositoryImpl.setPaymentMethodOnCart(availablePaymentMethod, isGuestUser: false);
      //assert
      verify(() => cartDataSourceImpl.setPaymentMethodOnCart(availablePaymentMethod, isGuestUser: false)).called(1);
      expect(result.fold((l) => null, (r) => r), mockCart.toDomain());
    });

    test('setPaymentMethodOnCart returns ErrorHandler when datasource call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Server error',
      );
      when(() => cartDataSourceImpl.setPaymentMethodOnCart(availablePaymentMethod, isGuestUser: false))
          .thenAnswer((_) async => Left(expected));
      //act
      final result = await cartRepositoryImpl.setPaymentMethodOnCart(availablePaymentMethod, isGuestUser: false);
      //assert
      verify(() => cartDataSourceImpl.setPaymentMethodOnCart(availablePaymentMethod, isGuestUser: false)).called(1);

      expect(result.fold((l) => l, (r) => null), expected);
    });
  });

  group('setGuestEmailOnCart', () {
    const mockEmail = 'jhon.doe@gmail.com';

    const cartIdMock = 'cartId';

    final mockCart = CartDTO.fromJson(CartFakeData.cartSuccessFakeData);

    test('return Cart  when _cartDatasource.setGuestEmailOnCart success ', () async {
      when(() => cartDataSourceImpl.setGuestEmailOnCart(email: mockEmail, cartId: cartIdMock))
          .thenAnswer((_) async => Right(mockCart));
      //act
      final result = await cartRepositoryImpl.setGuestEmailOnCart(email: mockEmail, cartId: cartIdMock);
      //assert
      verify(() => cartDataSourceImpl.setGuestEmailOnCart(email: mockEmail, cartId: cartIdMock)).called(1);
      expect(result.fold((l) => null, (r) => r), mockCart.toDomain());
    });

    test('setPaymentMethodOnCart returns ErrorHandler when datasource call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Server error',
      );
      when(() => cartDataSourceImpl.setGuestEmailOnCart(email: mockEmail, cartId: cartIdMock))
          .thenAnswer((_) async => Left(expected));
      //act
      final result = await cartRepositoryImpl.setGuestEmailOnCart(email: mockEmail, cartId: cartIdMock);
      //assert
      verify(() => cartDataSourceImpl.setGuestEmailOnCart(email: mockEmail, cartId: cartIdMock)).called(1);

      expect(result.fold((l) => l, (r) => null), expected);
    });
  });

  group('setGuestEmailOnCart', () {
    const mockEmail = 'jhon.doe@gmail.com';

    const cartIdMock = 'cartId';

    final mockCart = CartDTO.fromJson(CartFakeData.cartSuccessFakeData);

    test('return Cart  when _cartDatasource.setGuestEmailOnCart success ', () async {
      when(() => cartDataSourceImpl.setGuestEmailOnCart(email: mockEmail, cartId: cartIdMock))
          .thenAnswer((_) async => Right(mockCart));
      //act
      final result = await cartRepositoryImpl.setGuestEmailOnCart(email: mockEmail, cartId: cartIdMock);
      //assert
      verify(() => cartDataSourceImpl.setGuestEmailOnCart(email: mockEmail, cartId: cartIdMock)).called(1);
      expect(result.fold((l) => null, (r) => r), mockCart.toDomain());
    });

    test('setPaymentMethodOnCart returns ErrorHandler when datasource call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Server error',
      );
      when(() => cartDataSourceImpl.setGuestEmailOnCart(email: mockEmail, cartId: cartIdMock))
          .thenAnswer((_) async => Left(expected));
      //act
      final result = await cartRepositoryImpl.setGuestEmailOnCart(email: mockEmail, cartId: cartIdMock);
      //assert
      verify(() => cartDataSourceImpl.setGuestEmailOnCart(email: mockEmail, cartId: cartIdMock)).called(1);

      expect(result.fold((l) => l, (r) => null), expected);
    });
  });

  group('appliedCoupon', () {
    const mockCouponCode = 'couponCode';
    const cartIdMock = 'cartId';

    final mockCart = CartDTO.fromJson(CartFakeData.cartSuccessFakeData);

    test('return Cart  when _cartDatasource.setGuestEmailOnCart success ', () async {
      when(() => cartDataSourceImpl.appliedCoupon(couponCode: mockCouponCode, cartId: cartIdMock, isGuestUser: false))
          .thenAnswer((_) async => Right(mockCart));
      //act
      final result =
          await cartRepositoryImpl.appliedCoupon(couponCode: mockCouponCode, cartId: cartIdMock, isGuestUser: false);
      //assert
      verify(() => cartDataSourceImpl.appliedCoupon(couponCode: mockCouponCode, cartId: cartIdMock, isGuestUser: false))
          .called(1);
      expect(result.fold((l) => null, (r) => r), mockCart.toDomain());
      expect(result.fold((l) => null, (r) => r.appliedCoupons.length), 1);
    });

    test('appliedCoupon returns ErrorHandler when datasource call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Server error',
      );
      when(() => cartDataSourceImpl.appliedCoupon(couponCode: mockCouponCode, cartId: cartIdMock, isGuestUser: false))
          .thenAnswer((_) async => Left(expected));
      //act
      final result =
          await cartRepositoryImpl.appliedCoupon(couponCode: mockCouponCode, cartId: cartIdMock, isGuestUser: false);
      //assert
      verify(() => cartDataSourceImpl.appliedCoupon(couponCode: mockCouponCode, cartId: cartIdMock, isGuestUser: false))
          .called(1);

      expect(result.fold((l) => l, (r) => null), expected);
    });
  });

  group('deleteCouponFromCart', () {
    const cartIdMock = 'cartId';

    final mockCart = CartDTO.fromJson(CartFakeData.cartSuccessFakeData);

    test('return Cart  when _cartDatasource.deleteCouponFromCart success ', () async {
      when(() => cartDataSourceImpl.deleteCouponFromCart(cartId: cartIdMock, isGuestUser: false))
          .thenAnswer((_) async => Right(mockCart));
      //act
      final result = await cartRepositoryImpl.deleteCouponFromCart(cartId: cartIdMock, isGuestUser: false);
      //assert
      verify(() => cartDataSourceImpl.deleteCouponFromCart(cartId: cartIdMock, isGuestUser: false)).called(1);
      expect(result.fold((l) => null, (r) => r), mockCart.toDomain());
      expect(result.fold((l) => null, (r) => r.appliedCoupons.length), 1);
    });

    test('deleteCouponFromCart returns ErrorHandler when datasource call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Server error',
      );
      when(() => cartDataSourceImpl.deleteCouponFromCart(cartId: cartIdMock, isGuestUser: false))
          .thenAnswer((_) async => Left(expected));
      //act
      final result = await cartRepositoryImpl.deleteCouponFromCart(cartId: cartIdMock, isGuestUser: false);
      //assert
      verify(() => cartDataSourceImpl.deleteCouponFromCart(cartId: cartIdMock, isGuestUser: false)).called(1);

      expect(result.fold((l) => l, (r) => null), expected);
    });
  });

  group('sendTip', () {
    final mockSendTip = SendTip(cartId: '211', tip: '23');

    test('should return ErrorHandler when there is an error', () async {
      final mockError = ErrorHandlerInternal(errorMessage: 'Test Error');
      when(() => cartDataSourceImpl.addTipToCart(sendTipDTO: mockSendTip.toDto()))
          .thenAnswer((_) async => left(mockError));

      final result = await cartRepositoryImpl.sendTip(sendTip: mockSendTip);

      expect(result.isLeft(), true);
      expect(result.getLeft(), isA<ErrorHandler>());
    });

    test('should return SendTipResponse when the request is successful', () async {
      final mockDtoResponse =
          SendTipResponseDTO(cartId: '211', message: 'La propina fue agregada de \$211', code: '200');

      when(() => cartDataSourceImpl.addTipToCart(sendTipDTO: mockSendTip.toDto()))
          .thenAnswer((_) async => right(mockDtoResponse));

      final result = await cartRepositoryImpl.sendTip(sendTip: mockSendTip);

      expect(result.isRight(), true);
      expect(result.getRight(), isA<SendTipResponse>());
    });
  });

  group('getEnabledShippingMethods', () {
    test('returns a list of EnabledShippingMethod on successful response', () async {
      final mockDtoList = [EnabledShippingMethodDTO(methodCode: 'instore', methodLabel: 'In-Store Pickup Delivery')];
      final expectedList = mockDtoList.map((dto) => dto.toDomain()).toList();

      when(() => cartDataSourceImpl.getEnabledShippingMethods()).thenAnswer((_) async => right(mockDtoList));

      final result = await cartRepositoryImpl.getEnabledShippingMethods();

      expect(result.isRight(), true);
      expect(result.getOrElse(() => []), expectedList);
    });

    test('returns ErrorHandler when the datasource call fails', () async {
      final expectedError = ErrorHandlerInternal(errorMessage: 'Datasource error');

      when(() => cartDataSourceImpl.getEnabledShippingMethods()).thenAnswer((_) async => left(expectedError));

      final result = await cartRepositoryImpl.getEnabledShippingMethods();

      expect(result.isLeft(), true);
      expect(result.fold((l) => l, (r) => null), expectedError);
    });
  });

  group('removeAllItemsFromCart', () {
    test('returns Cart when datasource call is successful', () async {
      // Arrange
      final cartDTO = CartDTO.fromJson(CartFakeData.successfulAddCartData['addProductsToCart']['cart']);
      final cart = cartDTO.toDomain();
      when(() => cartDataSourceImpl.removeAllItemsFromCart(cartId: any(named: 'cartId')))
          .thenAnswer((_) async => Right<ErrorHandler, CartDTO>(cartDTO));

      // Act
      final result = await cartRepositoryImpl.removeAllItemsFromCart(cartId: 'test');

      // Assert
      verify(() => cartDataSourceImpl.removeAllItemsFromCart(cartId: 'test')).called(1);
      expect(result.isRight(), true);
      expect(result.fold((l) => null, (r) => r), cart);
    });

    test('returns ErrorHandler when datasource call fails', () async {
      // Arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Server error',
      );
      when(() => cartDataSourceImpl.removeAllItemsFromCart(cartId: any(named: 'cartId')))
          .thenAnswer((_) async => Left(expected));

      // Act
      final result = await cartRepositoryImpl.removeAllItemsFromCart(cartId: 'test');

      // Assert
      verify(() => cartDataSourceImpl.removeAllItemsFromCart(cartId: 'test')).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l, expected), (r) => expect(r, null));
    });
  });
}
