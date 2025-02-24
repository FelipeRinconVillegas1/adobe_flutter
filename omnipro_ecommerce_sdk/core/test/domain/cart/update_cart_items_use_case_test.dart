import 'package:core/data/dto/cart/cart_dto.fr.dart';
import 'package:core/domain/entity/cart/update_cart_items.dart';
import 'package:core/domain/entity/products.dart';
import 'package:core/domain/use_case/cart/get_cart_id_use_case.dart';
import 'package:core/domain/use_case/cart/update_cart_items_use_case.dart';
import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/data/repository/cart/mapper.dart';
import 'package:core/data/repository/cart/cart_repository.dart';
import '../../data/datasource/cart/cart_fake_data.dart';

class MockCartRepository extends Mock implements CartRepository {}

class MockGetCartIdUseCase extends Mock implements GetCartIdUseCase {}

class IsCustomerLoggedInMock extends Mock implements IsCustomerLoggedIn {}

void main() {
  late MockCartRepository cartRepository;
  late MockGetCartIdUseCase getCartIdUseCase;
  late UpdateCartItemsUseCase updateCartItemsUseCase;
  late IsCustomerLoggedIn isCustomerLoggedInMock;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    cartRepository = MockCartRepository();
    getCartIdUseCase = MockGetCartIdUseCase();
    isCustomerLoggedInMock = IsCustomerLoggedInMock();
    updateCartItemsUseCase = UpdateCartItemsUseCase(cartRepository, getCartIdUseCase, isCustomerLoggedInMock);
  });

  test('returns Cart when updating cart items is successful', () async {
    // Arrange
    const cartId = 'your_cart_id';
    final cartItemUpdateInput = CartItemUpdateInput(
        cartItemUid: 'your_cart_item_uid',
        quantityToSubtract: 1,
        quantity: 5,
        price: 10.0,
        sku: 'sku',
        product: ProductsItems(
            name: 'p1',
            sku: 's1',
            image: ProductsImage(label: 'test'),
            typeId: "simple",
            margin: 1,
            tags: [],
            id: 1,
            minSaleQty: 1));
    final items = [cartItemUpdateInput];
    final updateItems = UpdateCartItemsInput(cartId: cartId, cartItems: items);
    final cart = CartDTO.fromJson(CartFakeData.successfulAddCartData['addProductsToCart']['cart']).toDomain();

    when(() => getCartIdUseCase()).thenAnswer((_) async => cartId);
    when(() => cartRepository.updateCartItems(updateCartItemsInput: updateItems, isGuestUser: false))
        .thenAnswer((_) async => Right(cart));

    // Act
    final result = await updateCartItemsUseCase(items: items);

    // Assert
    expect(result, equals(right(cart)));
    verify(() => getCartIdUseCase()).called(1);
    verify(() => cartRepository.updateCartItems(updateCartItemsInput: updateItems, isGuestUser: false)).called(1);
  });

  test('returns ErrorHandler when updating cart items fails', () async {
    // Arrange
    final expectedError = ErrorHandlerInternal(
      errorMessage: 'Error updating cart items',
    );
    final cartItemUpdateInput = CartItemUpdateInput(
        cartItemUid: 'your_cart_item_uid',
        quantity: 5,
        price: 10.0,
        quantityToSubtract: 1,
        sku: 'sku',
        product: ProductsItems(
            name: 'p1',
            sku: 's1',
            margin: 1,
            image: ProductsImage(label: 'test'),
            typeId: "simple",
            tags: [],
            id: 1,
            minSaleQty: 1));
    final items = [cartItemUpdateInput];
    final updateItems = UpdateCartItemsInput(cartId: 'cartId', cartItems: items);

    when(() => getCartIdUseCase()).thenAnswer((_) async => 'cartId');
    when(() => cartRepository.updateCartItems(updateCartItemsInput: updateItems, isGuestUser: false))
        .thenAnswer((_) async => Left(expectedError));

    // Act
    final result = await updateCartItemsUseCase(items: items);

    // Assert
    expect(result, equals(left(expectedError)));
    verify(() => getCartIdUseCase()).called(1);
    verify(() => cartRepository.updateCartItems(updateCartItemsInput: updateItems, isGuestUser: false)).called(1);
  });
}
