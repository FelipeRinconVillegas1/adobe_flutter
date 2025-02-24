import 'package:core/data/dto/cart/cart_dto.fr.dart';
import 'package:core/data/repository/cart/mapper.dart';
import 'package:core/domain/entity/cart/input_set_payment_method_on_cart_entity.fr.dart';
import 'package:core/domain/use_case/cart/get_cart_id_use_case.dart';
import 'package:core/domain/use_case/cart/set_payment_method_to_cart_use_case.dart';
import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/cart/cart_repository.dart';

import '../../data/datasource/cart/cart_fake_data.dart';

// Mock for the CartRepository
class MockCartRepository extends Mock implements CartRepository {}

// Mock for the GetCartIdUseCase
class MockGetCartIdUseCase extends Mock implements GetCartIdUseCase {}

class IsCustomerLoggedInMock extends Mock implements IsCustomerLoggedIn {}

void main() {
  late SetPaymentMethodOnCartUseCase setPaymentMethodOnCart;
  late MockCartRepository mockCartRepository;
  late IsCustomerLoggedIn isCustomerLoggedInMock;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockCartRepository = MockCartRepository();
    isCustomerLoggedInMock = IsCustomerLoggedInMock();
    setPaymentMethodOnCart = SetPaymentMethodOnCartUseCase(
      mockCartRepository,
      isCustomerLoggedInMock,
    );
  });

  group('SetPaymentMethodOnCart', () {
    final availablePaymentMethod = InputSetPaymentMethodOnCartEntity(
        cartId: 'your_current_cart_id', paymentMethod: PaymentMethod(code: "checkmo"));
    test('should return the updated cart when successfully set payment method', () async {
      // Mock data

      final updatedCart = CartDTO.fromJson(CartFakeData.cartSuccessFakeData).toDomain();
      const currentCartId = 'your_current_cart_id';

      // Mock dependencies' behavior
      when(() => mockCartRepository.setPaymentMethodOnCart(availablePaymentMethod, isGuestUser: false))
          .thenAnswer((_) async => Right(updatedCart));

      // Call the use case
      final result = await setPaymentMethodOnCart.call(availablePaymentMethod);

      // Verify the result
      expect(result, Right(updatedCart));
      verify(() => mockCartRepository.setPaymentMethodOnCart(availablePaymentMethod, isGuestUser: false));
      verifyNoMoreInteractions(mockCartRepository);
    });
  });
}
