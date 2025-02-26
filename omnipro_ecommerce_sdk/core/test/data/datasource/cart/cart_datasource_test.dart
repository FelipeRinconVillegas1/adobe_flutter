import 'package:core/data/dto/cart/cart_item_input_dto.fr.dart';
import 'package:core/data/dto/customer_address_dto.fr.dart';
import 'package:core/data/datasource/cart/cart_datasource_impl.dart';
import 'package:core/data/dto/cart/cart_dto.fr.dart';
import 'package:core/data/dto/cart/config_shipping_method_dto.fr.dart';
import 'package:core/data/dto/cart/enabled_shipping_method_dto.fr.dart';
import 'package:core/data/dto/cart/send_tip_dto.dart';
import 'package:core/data/dto/cart/update_cart_items_dto.fr.dart';
import 'package:core/domain/entity/cart/input_set_payment_method_on_cart_entity.fr.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/network/graphql_helper_test.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/extension.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/data/dto/cart/add_product_to_cart_dto.fr.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/data/repository/address_mapper.dart';
import 'cart_fake_data.dart';

class MockGraphQLService extends Mock implements GraphQLService {}

class MockGraphQLServiceNoAuthenticated extends Mock implements GraphQLService {}

void main() {
  late CartDatasourceImpl cartDataSourceImpl;
  late MockGraphQLService mockGraphQLService;
  late MockGraphQLServiceNoAuthenticated mockGraphQLServiceNoAuthenticated;
  late MockGraphQLClient mockGraphQLClient;
  late AddProductToCartDTO addProductToCartDTO;
  final mockCartDTO = CartDTO.fromJson(CartFakeData.cartSuccessFakeData);

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockGraphQLClient = generateMockGraphQLClient();
    mockGraphQLServiceNoAuthenticated = MockGraphQLServiceNoAuthenticated();
    mockGraphQLService = MockGraphQLService();
    cartDataSourceImpl = CartDatasourceImpl(mockGraphQLService, mockGraphQLServiceNoAuthenticated);
    addProductToCartDTO = const AddProductToCartDTO(cartId: 'test', cartItems: CartItemInputDTO(quantity: 1, sku: '1'));
  });

  group('addProductCart', () {
    test('addProductCart returns CartDTO when the server call is successful', () async {
      final resultQuery = generateMockQuery<CartDTO>(mockGraphQLClient, response: CartFakeData.successfulAddCartData);
      final resultCartDto = CartDTO.fromJson(CartFakeData.successfulAddCartData['addProductsToCart']['cart']);

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultQuery));

      // act
      final result = await cartDataSourceImpl.addProductToCart([addProductToCartDTO]);

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isRight(), true);
      expect(result.fold((l) => null, (r) => r), resultCartDto);
    });

    test('returns ErrorHandler when the server call fails', () async {
      // arrange
      final expected = left(ErrorHandlerInternal(errorMessage: 'Server error'));
      when(
        () => mockGraphQLService.mutation(any()),
      ).thenAnswer((_) async => Left(ErrorHandlerInternal(errorMessage: 'Server error')));

      // act
      final result = await cartDataSourceImpl.addProductToCart([addProductToCartDTO]);

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result, expected);
    });

    test('return ErrorHandler when the data is wrong', () async {
      //arrange
      final resultQuery = generateMockMutation<CartDTO>(mockGraphQLClient, response: CartFakeData.wrongAddCartData);

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultQuery));
      //act
      final result = await cartDataSourceImpl.addProductToCart([addProductToCartDTO]);

      // // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l.errorMessage, 'Type Error'), (r) => null);
    });

    test('returns ErrorHandler when the data has a cast error', () async {
      //arrange
      final resultQuery = generateMockMutation<CartDTO>(mockGraphQLClient, response: CartFakeData.wrongTypeAddCartData);

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultQuery));
      //act
      final result = await cartDataSourceImpl.addProductToCart([addProductToCartDTO]);

      // // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l.errorMessage, 'Type Error'), (r) => null);
    });
  });

  group('updateCartItems', () {
    final updateCartItemsInputDTO = UpdateCartItemsInputDTO(
      cartId: 'id',
      cartItems: [CartItemUpdateInputDTO(cartItemUid: 'UID', quantity: 1, price: 123.893, sku: 'sku')],
    );
    test('returns CartDTO on successful server call', () async {
      final resultMutation = mockMutation<CartDTO>(response: CartFakeData.successUpdateItemCart);
      // Arrange

      when(() => mockGraphQLService.mutation(any())).thenAnswer((_) async => Right(resultMutation));

      // Act
      final result = await cartDataSourceImpl.updateCartItems(
        updateCartItemsInputDTO: updateCartItemsInputDTO,
        isGuestUser: false,
      );

      // Assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isRight(), true);
      expect(result.fold((l) => null, (r) => r), isA<CartDTO>());
    });

    test('returns ErrorHandler on server call failure', () async {
      // Arrange
      final expectedError = ErrorHandlerInternal(errorMessage: 'Server error');
      final mockResponse = expectedError;

      when(() => mockGraphQLService.mutation(any())).thenAnswer((_) async => Left(mockResponse));

      // Act
      final result = await cartDataSourceImpl.updateCartItems(
        updateCartItemsInputDTO: updateCartItemsInputDTO,
        isGuestUser: false,
      );

      // Assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isLeft(), true);
      expect(result.fold((l) => l, (r) => null), expectedError);
    });
  });

  group('Remove product  to cart', () {
    test('Success remove item from cart', () async {
      final resultQuery = mockMutation<CartDTO>(response: CartFakeData.successRemoveItemFromCart);
      final resultCartDto = CartDTO.fromJson(CartFakeData.successRemoveItemFromCart['removeItemFromCart']['cart']);

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultQuery));

      // act
      final result = await cartDataSourceImpl.removeProductFromCart(cartId: '1', cartItemId: '2', isGuestUser: false);

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right(resultCartDto));
    });

    test('returns ErrorHandler when the server call fails', () async {
      // arrange
      final expected = left(ErrorHandlerInternal(errorMessage: 'Server error'));
      when(
        () => mockGraphQLService.mutation(any()),
      ).thenAnswer((_) async => Left(ErrorHandlerInternal(errorMessage: 'Server error')));

      // act
      final result = await cartDataSourceImpl.removeProductFromCart(cartId: '1', cartItemId: '2', isGuestUser: false);

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result, expected);
    });
  });

  group('getCartInfo', () {
    test('returns CartDTO when the server call is successful', () async {
      // arrange
      final resultQuery = generateMockQuery<CartDTO>(mockGraphQLClient, response: CartFakeData.successFullGetCartData);
      final resultCartDto = CartDTO.fromJson(CartFakeData.successFullGetCartData['cart']);

      when(() => mockGraphQLService.query(any())).thenAnswer((invocation) async => Right(resultQuery));

      // act
      final result = await cartDataSourceImpl.getCartInfo('test', isGuestUser: false);

      // assert
      verify(() => mockGraphQLService.query(any())).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right(resultCartDto));
    });

    test('returns ErrorHandler when the server call fails', () async {
      // arrange
      final expected = left(ErrorHandlerInternal(errorMessage: 'Server error'));
      when(
        () => mockGraphQLService.query(any()),
      ).thenAnswer((_) async => Left(ErrorHandlerInternal(errorMessage: 'Server error')));

      // act
      final result = await cartDataSourceImpl.getCartInfo('test', isGuestUser: false);

      // assert
      verify(() => mockGraphQLService.query(any())).called(1);
      expect(result, expected);
    });

    test('return ErrorHandler when the data is wrong', () async {
      //arrange
      final resultQuery = generateMockQuery<CartDTO>(mockGraphQLClient, response: CartFakeData.wrongGetCartData);

      when(() => mockGraphQLService.query(any())).thenAnswer((invocation) async => Right(resultQuery));
      //act
      final result = await cartDataSourceImpl.getCartInfo('test', isGuestUser: false);

      // // assert
      verify(() => mockGraphQLService.query(any())).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l.errorMessage, 'Type Error'), (r) => null);
    });

    test('returns ErrorHandler when the data has a cast error', () async {
      //arrange
      final resultQuery = generateMockQuery<CartDTO>(mockGraphQLClient, response: CartFakeData.wrongTypeGetCartData);

      when(() => mockGraphQLService.query(any())).thenAnswer((invocation) async => Right(resultQuery));
      //act
      final result = await cartDataSourceImpl.getCartInfo('test', isGuestUser: false);

      // // assert
      verify(() => mockGraphQLService.query(any())).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l.errorMessage, 'Type Error'), (r) => null);
    });
  });

  group('setShippingAddressesOnCart and setBillingAddressesOnCart', () {
    final customerAddressJson = {
      'id': 123,
      'firstname': 'John',
      'lastname': 'Doe',
      'region': {'region': 'California', 'region_code': 'CA', 'region_id': 456},
      'country_code': 'US',
      'street': ['123 Main St'],
      'telephone': '123-456-7890',
      'postcode': '12345',
      'city': 'Los Angeles',
      'category': 'Home',
      'latitude': '34.0522',
      'longitude': '-118.2437',
      'colony': 'Sample Colony',
      'municipality': 'Sample Municipality',
      'external_number': 'A1',
      'internal_number': 'B2',
      'between_first_street': 'First Ave',
      'between_second_street': 'Second Ave',
      'references': 'Near the park',
      'default_shipping': true,
      'default_billing': false,
    };
    final orderAddress = CustomerAddressDTO.fromJson(customerAddressJson);

    const cartId = 'cartId';
    test('setShippingAddressesOnCart success when server call is success', () async {
      final resultMockMutation = mockMutation(
        response: {
          'setShippingAddressesOnCart': {'cart': CartFakeData.cartSuccessFakeData},
        },
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultMockMutation));

      // act
      final result = await cartDataSourceImpl.setShippingAddressesOnCart(orderAddress, cartId, isGuestUser: false);

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isRight(), true);
      expect(result.fold((l) => null, (r) => r), mockCartDTO);
    });

    test('setShippingAddressesOnCart returns ErrorHandler when  the server call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(errorMessage: 'Server error');
      when(
        () => mockGraphQLService.mutation(any()),
      ).thenAnswer((_) async => Left(ErrorHandlerInternal(errorMessage: 'Server error')));
      //act
      final result = await cartDataSourceImpl.setShippingAddressesOnCart(orderAddress, cartId, isGuestUser: false);

      // // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.fold((l) => l, (r) => null), expected);
    });

    test('setBillingAddressesOnCart success when server call is success', () async {
      final setBillingAddressesMockMutation = mockMutation(
        response: {
          'setBillingAddressOnCart': {'cart': CartFakeData.cartSuccessFakeData},
        },
      );

      when(
        () => mockGraphQLService.mutation(any()),
      ).thenAnswer((invocation) async => Right(setBillingAddressesMockMutation));

      // act
      final result = await cartDataSourceImpl.setBillingAddressesOnCart(
        orderAddress,
        cartId,
        isGuestUser: false,
      );

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isRight(), true);
      expect(result.fold((l) => null, (r) => r), mockCartDTO);
    });

    test('setBillingAddressesOnCart returns ErrorHandler when  the server call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(errorMessage: 'Server error');
      when(
        () => mockGraphQLService.mutation(any()),
      ).thenAnswer((_) async => Left(ErrorHandlerInternal(errorMessage: 'Server error')));
      //act
      final result = await cartDataSourceImpl.setBillingAddressesOnCart(
        orderAddress,
        cartId,
        isGuestUser: false,
      );

      // // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.fold((l) => l, (r) => null), expected);
    });
  });

  group('setShippingMethodOnCart', () {
    final mockShippingMethod = ConfigShippingMethodDTO(methodCode: 'code', carrierCode: 'carrierCode');

    test('setShippingMethodOnCart success when server call is success', () async {
      final resultMockMutation = mockMutation(
        response: {
          'setShippingMethodsOnCart': {'cart': CartFakeData.cartSuccessFakeData},
        },
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultMockMutation));

      // act
      final result = await cartDataSourceImpl.setShippingMethodOnCart(mockShippingMethod, 'cartId', isGuestUser: false);

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.fold((l) => null, (r) => r), mockCartDTO);
    });

    test('setShippingMethodsOnCart returns ErrorHandler when  the server call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(errorMessage: 'Server error');
      when(
        () => mockGraphQLService.mutation(any()),
      ).thenAnswer((_) async => Left(ErrorHandlerInternal(errorMessage: 'Server error')));
      //act
      final result = await cartDataSourceImpl.setShippingMethodOnCart(mockShippingMethod, 'cartId', isGuestUser: false);

      // // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.fold((l) => l, (r) => null), expected);
    });
  });

  group('setPaymentMethodOnCart', () {
    final availablePaymentMethod = InputSetPaymentMethodOnCartEntity(
      cartId: 'your_current_cart_id',
      paymentMethod: PaymentMethod(code: "checkmo"),
    );

    test('setPaymentMethodOnCart success when server call is success', () async {
      final resultMockMutation = mockMutation(
        response: {
          'setPaymentMethodOnCart': {'cart': CartFakeData.cartSuccessFakeData},
        },
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultMockMutation));

      // act
      final result = await cartDataSourceImpl.setPaymentMethodOnCart(availablePaymentMethod, isGuestUser: false);

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.fold((l) => null, (r) => r), mockCartDTO);
    });

    test('setShippingMethodsOnCart returns ErrorHandler when  the server call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(errorMessage: 'Server error');
      when(
        () => mockGraphQLService.mutation(any()),
      ).thenAnswer((_) async => Left(ErrorHandlerInternal(errorMessage: 'Server error')));
      //act
      final result = await cartDataSourceImpl.setPaymentMethodOnCart(availablePaymentMethod, isGuestUser: false);

      // // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.fold((l) => l, (r) => null), expected);
    });
  });

  group('setGuestEmailOnCart', () {
    const mockEmailGuest = 'jhon.doe@gmail.com';

    test('setGuestEmailOnCart success when server call is success', () async {
      final resultMockMutation = mockMutation(
        response: {
          'setGuestEmailOnCart': {'cart': CartFakeData.cartSuccessFakeData},
        },
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultMockMutation));

      // act
      final result = await cartDataSourceImpl.setGuestEmailOnCart(email: mockEmailGuest, cartId: 'cartId');

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.fold((l) => null, (r) => r), mockCartDTO);
    });

    test('setGuestEmailOnCart returns ErrorHandler when  the server call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(errorMessage: 'Server error');
      when(
        () => mockGraphQLService.mutation(any()),
      ).thenAnswer((_) async => Left(ErrorHandlerInternal(errorMessage: 'Server error')));
      //act
      final result = await cartDataSourceImpl.setGuestEmailOnCart(email: mockEmailGuest, cartId: 'cartId');

      // // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.fold((l) => l, (r) => null), expected);
    });
  });

  group('applyCouponToCartMutation', () {
    const mockCouponCode = 'Watch20';

    test('applyCouponToCartMutation success when server call is success', () async {
      final resultMockMutation = mockMutation(
        response: {
          'applyCouponToCart': {'cart': CartFakeData.cartSuccessFakeData},
        },
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultMockMutation));

      // act
      final result = await cartDataSourceImpl.appliedCoupon(
        couponCode: mockCouponCode,
        cartId: 'cartId',
        isGuestUser: false,
      );

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.fold((l) => null, (r) => r), mockCartDTO);
    });

    test('applyCouponToCartMutation returns ErrorHandler when  the server call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(errorMessage: 'Server error');
      when(
        () => mockGraphQLService.mutation(any()),
      ).thenAnswer((_) async => Left(ErrorHandlerInternal(errorMessage: 'Server error')));
      //act
      final result = await cartDataSourceImpl.appliedCoupon(
        couponCode: mockCouponCode,
        cartId: 'cartId',
        isGuestUser: false,
      );

      // // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.fold((l) => l, (r) => null), expected);
    });
  });

  group('deleteCouponFromCart', () {
    const mockCartId = 'mockCartId';
    test('deleteCouponFromCart success when server call is success', () async {
      final mockCartDTO = CartDTO.fromJson(CartFakeData.cartSuccessFakeDataWithoutCoupon);
      final resultMockMutation = mockMutation(
        response: {
          'removeCouponFromCart': {'cart': CartFakeData.cartSuccessFakeDataWithoutCoupon},
        },
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultMockMutation));

      // act
      final result = await cartDataSourceImpl.deleteCouponFromCart(cartId: mockCartId, isGuestUser: false);

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.fold((l) => null, (r) => r), mockCartDTO);
    });

    test('deleteCouponFromCart returns ErrorHandler when  the server call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(errorMessage: 'Server error');
      when(
        () => mockGraphQLService.mutation(any()),
      ).thenAnswer((_) async => Left(ErrorHandlerInternal(errorMessage: 'Server error')));
      //act
      final result = await cartDataSourceImpl.deleteCouponFromCart(cartId: mockCartId, isGuestUser: false);

      // // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.fold((l) => l, (r) => null), expected);
    });
  });

  group('addTipToCart', () {
    final mockSendTipDTO = SendTipDTO(cartId: '211', tip: '34');

    test('should return ErrorHandler when there is a TypeError', () async {
      when(() => mockGraphQLService.mutation(any())).thenThrow(TypeError());

      final result = await cartDataSourceImpl.addTipToCart(sendTipDTO: mockSendTipDTO);

      expect(result.isLeft(), true);
      expect(result.getLeft(), isA<ErrorHandlerInternal>());
    });

    test('should return ErrorHandler when there is a GraphQLError', () async {
      when(() => mockGraphQLService.mutation(any())).thenThrow(GraphQLError(message: 'Test GraphQL Error'));

      final result = await cartDataSourceImpl.addTipToCart(sendTipDTO: mockSendTipDTO);

      expect(result.isLeft(), true);
      expect(result.getLeft(), isA<ErrorHandlerExternal>());
    });

    test('should return SendTipResponseDTO when the request is successful', () async {
      final mockResponseData = {
        'addTipCheckout': {'message': 'La propina fue agregada de \$79.31.', 'code': '200', 'cart_id': '211'},
      };
      final resultMockMutation = mockMutation(response: mockResponseData);

      when(() => mockGraphQLService.mutation(any())).thenAnswer((_) async => right(resultMockMutation));

      final result = await cartDataSourceImpl.addTipToCart(sendTipDTO: mockSendTipDTO);

      expect(result.isRight(), true);
      expect(result.getRight(), isA<SendTipResponseDTO>());
      expect(result.getRight()!.cartId, '211');
    });
  });

  group('getEnabledShippingMethods', () {
    test('returns a list of EnabledShippingMethodDTO on successful response', () async {
      final mockResponse = {
        'getEnabledShippingMethods': [
          {"method_code": "instore", "method_label": "In-Store Pickup Delivery"},
          {"method_code": "freeshipping", "method_label": "Entrega a Domicilio App"},
          {
            "method_code": "scheduled_delivery",
            "method_label": "Gratis",
            "schedule_information": [
              {
                "format": "2023-09-25",
                "full": "Lunes, 25 septiembre, 2023",
                "timestamp": 1695621600,
                "schedule": [
                  {
                    "range": "08:00AM-12:00PM",
                    "start_label": "08:00AM",
                    "start_minutes": 480,
                    "end_label": "12:00PM",
                    "end_minutes": 720,
                  },
                  {
                    "range": "12:00PM-07:00PM",
                    "start_label": "12:00PM",
                    "start_minutes": 720,
                    "end_label": "07:00PM",
                    "end_minutes": 1140,
                  },
                ],
              },
              {
                "format": "2023-09-26",
                "full": "Martes, 26 septiembre, 2023",
                "timestamp": 1695708000,
                "schedule": [
                  {
                    "range": "08:00AM-12:00PM",
                    "start_label": "08:00AM",
                    "start_minutes": 480,
                    "end_label": "12:00PM",
                    "end_minutes": 720,
                  },
                  {
                    "range": "12:00PM-07:00PM",
                    "start_label": "12:00PM",
                    "start_minutes": 720,
                    "end_label": "07:00PM",
                    "end_minutes": 1140,
                  },
                ],
              },
            ],
          },
        ],
      };

      final mockQuery = generateMockQuery<Map<String, dynamic>>(mockGraphQLClient, response: mockResponse);

      final expectedList =
          mockResponse['getEnabledShippingMethods']!.map((e) => EnabledShippingMethodDTO.fromJson(e)).toList();

      when(() => mockGraphQLService.query(any())).thenAnswer((_) async => right(mockQuery));

      final result = await cartDataSourceImpl.getEnabledShippingMethods();

      expect(result.isRight(), true);
      expect(result.getOrElse(() => []), expectedList);
    });

    test('returns ErrorHandler when the server call fails', () async {
      final expectedError = ErrorHandlerInternal(errorMessage: 'Server error');

      when(() => mockGraphQLService.query(any())).thenAnswer((_) async => left(expectedError));

      final result = await cartDataSourceImpl.getEnabledShippingMethods();

      expect(result.isLeft(), true);
      expect(result.fold((l) => l, (r) => null), expectedError);
    });
  });

  group('removeAllItemsFromCart', () {
    final cartId = 'testCartId';

    test('returns CartDTO when the server call is successful', () async {
      // Arrange
      final resultMockMutation = mockMutation(
        response: {
          'removeAllItemsFromCart': {'cart': CartFakeData.cartSuccessFakeData},
        },
      );
      final expectedCartDTO = CartDTO.fromJson(CartFakeData.cartSuccessFakeData);

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultMockMutation));

      // Act
      final result = await cartDataSourceImpl.removeAllItemsFromCart(cartId: cartId);

      // Assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isRight(), true);
      expect(result.fold((l) => null, (r) => r), expectedCartDTO);
    });

    test('returns ErrorHandler when the server call fails', () async {
      // Arrange
      final expectedError = ErrorHandlerInternal(errorMessage: 'Server error');
      when(() => mockGraphQLService.mutation(any())).thenAnswer((_) async => Left(expectedError));

      // Act
      final result = await cartDataSourceImpl.removeAllItemsFromCart(cartId: cartId);

      // Assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isLeft(), true);
      expect(result.fold((l) => l, (r) => null), expectedError);
    });
  });
}
