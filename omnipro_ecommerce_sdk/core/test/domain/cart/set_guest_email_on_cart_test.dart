import 'package:core/data/dto/cart/cart_dto.fr.dart';
import 'package:core/data/repository/cart/mapper.dart';
import 'package:core/domain/use_case/cart/get_cart_id_use_case.dart';
import 'package:core/domain/use_case/cart/set_guest_email_on_cart.dart';
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

void main() {
  late SetGuestEmailOnCartUseCase setGuestEmailOnCartUseCase;
  late MockCartRepository mockCartRepository;
  late MockGetCartIdUseCase mockGetCartIdUseCase;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockCartRepository = MockCartRepository();
    mockGetCartIdUseCase = MockGetCartIdUseCase();
    setGuestEmailOnCartUseCase = SetGuestEmailOnCartUseCase(
      mockCartRepository,
      mockGetCartIdUseCase,
    );
  });

  group('SetGuestEmailOnCartUseCase', () {
    const newEmail = 'test@example.com';
    test('should return the updated cart when successfully set guest email', () async {
      // Mock data

      const currentCartId = 'your_current_cart_id';
      final updatedCart = CartDTO.fromJson(CartFakeData.cartSuccessFakeData).toDomain();

      // Mock dependencies' behavior
      when(() => mockGetCartIdUseCase()).thenAnswer((_) async => (currentCartId));
      when(() => mockCartRepository.setGuestEmailOnCart(email: newEmail, cartId: currentCartId))
          .thenAnswer((_) async => Right(updatedCart));

      // Call the use case
      final result = await setGuestEmailOnCartUseCase.call(newEmail);

      // Verify the result
      expect(result, Right(updatedCart));
      verify(() => mockGetCartIdUseCase());
      verify(() => mockCartRepository.setGuestEmailOnCart(email: newEmail, cartId: currentCartId));
      verifyNoMoreInteractions(mockGetCartIdUseCase);
      verifyNoMoreInteractions(mockCartRepository);
    });

    test('should return an ErrorHandler when cartId is empty', () async {
      // Mock data
      const newEmail = 'test@example.com';
      const currentCartId = '';

      // Mock dependencies' behavior
      when(() => mockGetCartIdUseCase()).thenAnswer((_) async => currentCartId);

      // Call the use case
      final result = await setGuestEmailOnCartUseCase.call(newEmail);

      // Verify the result
      expect(
        result,
        left(ErrorHandlerExternal(
          errorCode: ErrorCode.emptyCartIdSetPaymentMethod,
          errorMessage: "Cart id is empty",
        )),
      );
      verify(() => mockGetCartIdUseCase());
      verifyNoMoreInteractions(mockGetCartIdUseCase);
      verifyZeroInteractions(mockCartRepository);
    });
  });
}
