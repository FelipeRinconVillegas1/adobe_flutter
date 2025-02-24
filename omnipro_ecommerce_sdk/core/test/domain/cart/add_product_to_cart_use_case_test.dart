import 'package:core/data/dto/cart/cart_dto.fr.dart';
import 'package:core/domain/entity/cart/add_product_to_cart_oms_options.dart';
import 'package:core/domain/entity/cart/cart.fr.dart';
import 'package:core/domain/entity/cart/cart_item_input.dart';
import 'package:core/domain/entity/products.dart';
import 'package:core/domain/use_case/cart/create_cart_use_case.dart';
import 'package:core/domain/use_case/cart/get_cart_id_use_case.dart';
import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/data/repository/cart/mapper.dart';
import 'package:core/data/repository/cart/cart_repository.dart';
import 'package:core/domain/entity/cart/add_product_to_cart.dart';
import 'package:core/domain/use_case/cart/add_product_to_cart_use_case.dart';

import '../../data/datasource/cart/cart_fake_data.dart';

class MockCartRepository extends Mock implements CartRepository {}

class MockGetCartIdUseCase extends Mock implements GetCartIdUseCase {}

class MockCreateEmptyCartUseCase extends Mock implements CreateCartUseCase {}

class IsCustomerLoggedInMock extends Mock implements IsCustomerLoggedIn {}

void main() {
  late AddProductToCartUseCase addProductToCartUseCase;
  late MockGetCartIdUseCase mockGetCartIdUseCase;
  late MockCreateEmptyCartUseCase mockCreateEmptyCartUseCase;
  late CartRepository mockCartRepository;
  late AddProductToCart addProductToCart;
  late IsCustomerLoggedInMock isCustomerLoggedInMock;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    isCustomerLoggedInMock = IsCustomerLoggedInMock();
    mockGetCartIdUseCase = MockGetCartIdUseCase();
    mockCartRepository = MockCartRepository();
    mockCreateEmptyCartUseCase = MockCreateEmptyCartUseCase();
    addProductToCartUseCase = AddProductToCartUseCase(
        mockCartRepository, mockGetCartIdUseCase, mockCreateEmptyCartUseCase, isCustomerLoggedInMock);
    addProductToCart = AddProductToCart(
        productItem: ProductsItems(
            name: 'p1',
            sku: 's1',
            image: ProductsImage(label: 'test'),
            typeId: "simple",
            tags: [],
            margin: 1,
            id: 1,
            minSaleQty: 1),
        cartId: 'test',
        cartItem: CartItemInput(quantity: 1, price: 1, sku: "1"),
        omsOptions: AddToCartOmsOptions(omsCid: '1', omsCode: '1', omsShippingMethod: '1'));
  });

  group('addToCart', () {
    const cartID = 'cartId';
    final cartDTO = CartDTO.fromJson(CartFakeData.successfulAddCartData['addProductsToCart']['cart']);
    final cart = cartDTO.toDomain();
    test('returns Cart  when cartId is not empty and  the repository call is successful', () async {
      //arrange
      when(() => mockGetCartIdUseCase()).thenAnswer((_) async => cartID);
      when(() => mockCartRepository.addProductToCart([addProductToCart], isGuestUser: false))
          .thenAnswer((_) async => Right<ErrorHandler, Cart>(cart));
      //act
      final result = await addProductToCartUseCase.call([addProductToCart]);
      //assert
      verify(() => mockCartRepository.addProductToCart([addProductToCart], isGuestUser: false)).called(1);
      verify(() => mockGetCartIdUseCase()).called(1);
      verifyNever(() => mockCreateEmptyCartUseCase());
      expect(result.isRight(), true);
      expect(addProductToCart.cartId, cartID);
      expect(result, Right<ErrorHandler, Cart>(cart));
    });

    test(
        'returns Cart  when cartId is EMPTY and  the repository call is successful'
        'and createEmptyCartUseCase is called return cartId', () async {
      //arrange
      when(() => mockGetCartIdUseCase()).thenAnswer((_) async => '');
      when(() => mockCreateEmptyCartUseCase()).thenAnswer((_) async => const Right<ErrorHandler, String>(cartID));
      when(() => mockCartRepository.addProductToCart([addProductToCart], isGuestUser: false))
          .thenAnswer((_) async => Right<ErrorHandler, Cart>(cart));

      //act
      final result = await addProductToCartUseCase.call([addProductToCart]);

      //assert
      verify(() => mockCartRepository.addProductToCart([addProductToCart], isGuestUser: false)).called(1);
      verify(() => mockGetCartIdUseCase()).called(1);
      verify(() => mockCreateEmptyCartUseCase()).called(1);
      expect(result.isRight(), true);
      expect(addProductToCart.cartId, cartID);
      expect(result, Right<ErrorHandler, Cart>(cart));
    });

    test('returns ErrorHandler when the cartRepository  call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Server error',
      );
      when(() => mockCartRepository.addProductToCart([addProductToCart], isGuestUser: false))
          .thenAnswer((_) async => Left(expected));
      when(() => mockGetCartIdUseCase()).thenAnswer((_) async => cartID);

      //act
      final result = await addProductToCartUseCase.call([addProductToCart]);

      //assert
      verify(() => mockCartRepository.addProductToCart([addProductToCart], isGuestUser: false)).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l, expected), (r) => expect(r, null));
    });

    test('returns ErrorHandler when the CreateEmptyCart call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Server error',
      );

      when(() => mockGetCartIdUseCase()).thenAnswer((_) async => '');
      when(() => mockCreateEmptyCartUseCase.call()).thenAnswer((_) async => Left(expected));

      //act
      final result = await addProductToCartUseCase.call([addProductToCart]);

      //assert
      verify(() => mockGetCartIdUseCase()).called(1);
      verify(() => mockCreateEmptyCartUseCase()).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l, expected), (r) => expect(r, null));
    });
  });
}
