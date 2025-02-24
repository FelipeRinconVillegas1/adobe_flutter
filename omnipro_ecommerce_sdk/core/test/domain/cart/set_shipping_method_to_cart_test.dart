import 'package:core/data/dto/cart/cart_dto.fr.dart';
import 'package:core/domain/entity/cart/config_shipping_method.dart';
import 'package:core/domain/use_case/cart/get_cart_id_use_case.dart';
import 'package:core/domain/use_case/cart/set_shipping_method_to_cart.dart';
import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/cart/mapper.dart';
import 'package:core/data/repository/cart/cart_repository.dart';

import '../../data/datasource/cart/cart_fake_data.dart';

// Mock for the CartRepository
class MockCartRepository extends Mock implements CartRepository {}

// Mock for the GetCartIdUseCase
class MockGetCartIdUseCase extends Mock implements GetCartIdUseCase {}

class IsCustomerLoggedInMock extends Mock implements IsCustomerLoggedIn {}

void main() {
  late SetShippingMethodToCart setShippingMethodToCart;
  late MockCartRepository mockCartRepository;
  late MockGetCartIdUseCase mockGetCartIdUseCase;
  late IsCustomerLoggedIn isCustomerLoggedInMock;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockCartRepository = MockCartRepository();
    mockGetCartIdUseCase = MockGetCartIdUseCase();
    isCustomerLoggedInMock = IsCustomerLoggedInMock();
    setShippingMethodToCart = SetShippingMethodToCart(mockCartRepository, mockGetCartIdUseCase, isCustomerLoggedInMock);
  });

  group('SetShippingMethodToCart', () {
    final shippingMethod = ConfigShippingMethod(carrierCode: 'carrierCode', methodCode: 'methodCode');
    test('should return the updated cart when successfully set shipping method', () async {
      // Mock data

      const cartId = 'your_cart_id';
      final updatedCart = CartDTO.fromJson(CartFakeData.cartSuccessFakeData).toDomain();

      // Mock dependencies' behavior
      when(() => mockGetCartIdUseCase.call()).thenAnswer((_) async => cartId);
      when(() => mockCartRepository.setShippingMethodOnCart(shippingMethod, cartId,isGuestUser: false))
          .thenAnswer((_) async => Right(updatedCart));

      // Call the use case
      final result = await setShippingMethodToCart.call(shippingMethod);

      // Verify the result
      expect(result, Right(updatedCart));
      verify(() => mockGetCartIdUseCase.call());
      verify(() => mockCartRepository.setShippingMethodOnCart(shippingMethod, cartId,isGuestUser: false));
      verifyNoMoreInteractions(mockGetCartIdUseCase);
      verifyNoMoreInteractions(mockCartRepository);
    });

    test('should return an ErrorHandler when cartId is empty', () async {
      // Mock data

      const cartId = '';

      // Mock dependencies' behavior
      when(() => mockGetCartIdUseCase.call()).thenAnswer((_) async => cartId);

      // Call the use case
      final result = await setShippingMethodToCart.call(shippingMethod);

      // Verify the result
      expect(
        result,
        left(ErrorHandlerExternal(
          errorCode: ErrorCode.emptyCartIdSetShippingMethod,
          errorMessage: "Cart id is empty",
        )),
      );
      verify(() => mockGetCartIdUseCase.call());
      verifyNoMoreInteractions(mockGetCartIdUseCase);
      verifyZeroInteractions(mockCartRepository);
    });
  });
}
