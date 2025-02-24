import 'package:core/data/dto/cart/cart_dto.fr.dart';
import 'package:core/data/repository/cart/mapper.dart';
import 'package:core/domain/use_case/cart/get_cart_id_use_case.dart';
import 'package:core/domain/use_case/cart/remove_product_to_cart_use_case.dart';
import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/data/repository/cart/cart_repository.dart';

import '../../data/datasource/cart/cart_fake_data.dart';

class MockCartRepository extends Mock implements CartRepository {}

class MockGetCartIdUseCase extends Mock implements GetCartIdUseCase {}

class IsCustomerLoggedInMock extends Mock implements IsCustomerLoggedIn {}

void main() {
  late RemoveProductToCartUseCase removeProductToCartUseCase;
  late MockCartRepository mockCartRepository;
  late GetCartIdUseCase getCartIdUseCase;
  late IsCustomerLoggedIn isCustomerLoggedInMock;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockCartRepository = MockCartRepository();
    getCartIdUseCase = MockGetCartIdUseCase();
    isCustomerLoggedInMock = IsCustomerLoggedInMock();
    removeProductToCartUseCase =
        RemoveProductToCartUseCase(mockCartRepository, getCartIdUseCase, isCustomerLoggedInMock);
  });

  group('RemoveProductToCartUseCase', () {
    test('Success removeCartFromItem', () async {
      final cartDTO = CartDTO.fromJson(CartFakeData.successfulAddCartData['addProductsToCart']['cart']);
      final cart = cartDTO.toDomain();
      final expectedCart = cart;

      when(() => getCartIdUseCase.call()).thenAnswer((_) async => '1');
      when(() => mockCartRepository.removeProductFromCart(
          cartId: any(named: 'cartId'),
          cartItemId: any(named: 'cartItemId'),
          isGuestUser: false)).thenAnswer((_) async => Right(expectedCart));

      final result = await removeProductToCartUseCase.call(cartItemUID: '2');

      verify(() => mockCartRepository.removeProductFromCart(cartId: '1', cartItemId: '2', isGuestUser: false))
          .called(1);

      expect(result, equals(Right(expectedCart)));
    });

    test('Failure removeCartFromItem', () async {
      final expected = ErrorHandlerInternal(
        errorMessage: 'Server error',
      );

      when(() => getCartIdUseCase.call()).thenAnswer((_) async => '1');
      when(() => mockCartRepository.removeProductFromCart(
          cartId: any(named: 'cartId'),
          cartItemId: any(named: 'cartItemId'),
          isGuestUser: false)).thenAnswer((_) async => Left(expected));

      when(() => mockCartRepository.removeProductFromCart(
          cartId: any(named: 'cartId'),
          cartItemId: any(named: 'cartItemId'),
          isGuestUser: false)).thenAnswer((_) async => Left(expected));

      final result = await removeProductToCartUseCase.call(cartItemUID: '2');

      verify(() => mockCartRepository.removeProductFromCart(cartId: '1', cartItemId: '2', isGuestUser: false))
          .called(1);

      expect(result, equals(Left(expected)));
    });
  });
}
