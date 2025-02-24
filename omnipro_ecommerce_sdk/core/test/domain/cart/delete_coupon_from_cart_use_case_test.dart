import 'package:core/data/dto/cart/cart_dto.fr.dart';
import 'package:core/data/repository/cart/mapper.dart';
import 'package:core/domain/use_case/cart/delete_coupon_from_cart_use_case.dart';
import 'package:core/domain/use_case/cart/get_cart_id_use_case.dart';
import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/cart/cart_repository.dart';

import '../../data/datasource/cart/cart_fake_data.dart';

// Mock for the CartRepository
class MockCartRepository extends Mock implements CartRepository {}

// Mock for the GetCartIdUseCase
class MockGetCartIdUseCase extends Mock implements GetCartIdUseCase {}

class IsCustomerLoggedInMock extends Mock implements IsCustomerLoggedIn {}

void main() {
  late DeleteCouponFromCartUseCase deleteCouponFromCartUseCase;
  late MockCartRepository mockCartRepository;
  late MockGetCartIdUseCase mockGetCartIdUseCase;
  late IsCustomerLoggedInMock isCustomerLoggedInMock;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockCartRepository = MockCartRepository();
    mockGetCartIdUseCase = MockGetCartIdUseCase();
    isCustomerLoggedInMock = IsCustomerLoggedInMock();
    deleteCouponFromCartUseCase = DeleteCouponFromCartUseCase(
      mockCartRepository,
      mockGetCartIdUseCase,
      isCustomerLoggedInMock,
    );
  });

  group('DeleteCouponFromCartUseCase', () {
    test(
        'should return the update cart without when _deleteCouponFromCartUseCase to cart is successfully and default cartId ',
        () async {
      // Mock data
      const currentCartId = 'your_current_cart_id';
      final updatedCart = CartDTO.fromJson(CartFakeData.cartSuccessFakeDataWithoutCoupon).toDomain();

      // Mock dependencies' behavior
      when(() => mockGetCartIdUseCase()).thenAnswer((_) async => (currentCartId));
      when(() => mockCartRepository.deleteCouponFromCart(cartId: currentCartId,isGuestUser: false))
          .thenAnswer((_) async => Right(updatedCart));

      // Call the use case
      final result = await deleteCouponFromCartUseCase.call();

      // Verify the result
      expect(result, Right(updatedCart));
      verify(() => mockGetCartIdUseCase());
      verify(() => mockCartRepository.deleteCouponFromCart(cartId: currentCartId,isGuestUser: false));
      verifyNoMoreInteractions(mockGetCartIdUseCase);
      verifyNoMoreInteractions(mockCartRepository);
    });

    test(
        'should return the update cart without coupon  when _deleteCouponFromCartUseCase  to cart is successfully with custom cartId ',
        () async {
      // Mock data

      const currentCartId = 'your_current_cart_id';
      const customCartId = 'your_custom_cart_id';
      final updatedCart = CartDTO.fromJson(CartFakeData.cartSuccessFakeDataWithoutCoupon).toDomain();

      // Mock dependencies' behavior
      when(() => mockCartRepository.deleteCouponFromCart(cartId: customCartId,isGuestUser: false))
          .thenAnswer((_) async => Right(updatedCart));

      // Call the use case
      final result = await deleteCouponFromCartUseCase.call(customCartId: customCartId);

      // Verify the result
      expect(result, Right(updatedCart));
      verifyNever(() => mockGetCartIdUseCase());
      verifyNever(() => mockCartRepository.deleteCouponFromCart(cartId: currentCartId,isGuestUser: false));
      verify(() => mockCartRepository.deleteCouponFromCart(cartId: customCartId,isGuestUser: false));
      verifyNoMoreInteractions(mockGetCartIdUseCase);
      verifyNoMoreInteractions(mockCartRepository);
    });

    test('should return an ErrorHandler when cartId is empty', () async {
      // Mock data
      const currentCartId = '';

      // Mock dependencies' behavior
      when(() => mockGetCartIdUseCase()).thenAnswer((_) async => currentCartId);

      // Call the use case
      final result = await deleteCouponFromCartUseCase.call();

      // Verify the result
      expect(
        result,
        left(ErrorHandlerExternal(
          errorCode: ErrorCode.emptyCartIdDeleteCoupon,
          errorMessage: "Cart id is empty",
        )),
      );
      verify(() => mockGetCartIdUseCase());
      verifyNoMoreInteractions(mockGetCartIdUseCase);
      verifyZeroInteractions(mockCartRepository);
    });
  });
}
