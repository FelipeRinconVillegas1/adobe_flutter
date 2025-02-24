import 'package:core/data/dto/cart/cart_dto.fr.dart';
import 'package:core/data/repository/cart/cart_repository.dart';
import 'package:core/data/repository/cart/mapper.dart';
import 'package:core/domain/use_case/cart/get_cart_id_use_case.dart';
import 'package:core/domain/use_case/cart/remove_all_items_from_cart_use_case.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';

import '../../data/datasource/cart/cart_fake_data.dart';

class MockCartRepository extends Mock implements CartRepository {}

class MockGetCartIdUseCase extends Mock implements GetCartIdUseCase {}

void main() {
  late RemoveAllItemsFromCartUseCase removeAllItemsFromCartUseCase;
  late GetCartIdUseCase getCartIdUseCase;
  late MockCartRepository mockCartRepository;

  setUp(() async {
    await LoggerApp().init(isDebug: false);
    mockCartRepository = MockCartRepository();
    getCartIdUseCase = MockGetCartIdUseCase();
    removeAllItemsFromCartUseCase = RemoveAllItemsFromCartUseCase(mockCartRepository, getCartIdUseCase);
  });

  group('RemoveAllItemsFromCartUseCase', () {
    test('returns Cart when repository call is successful', () async {
      // Arrange
      final mockCart = CartDTO.fromJson(CartFakeData.cartSuccessFakeData).toDomain();

      when(() => getCartIdUseCase.call()).thenAnswer((_) async => 'test');
      when(() => mockCartRepository.removeAllItemsFromCart(cartId: any(named: 'cartId')))
          .thenAnswer((_) async => Right(mockCart));

      // Act
      final result = await removeAllItemsFromCartUseCase.call();

      // Assert
      verify(() => mockCartRepository.removeAllItemsFromCart(cartId: 'test')).called(1);
      expect(result, Right(mockCart));
    });

    test('returns ErrorHandler when repository call fails', () async {
      // Arrange
      final expectedError = ErrorHandlerExternal(errorCode: 'errorCode', errorMessage: 'errorMessage');
      when(() => getCartIdUseCase.call()).thenAnswer((_) async => 'test');
      when(() => mockCartRepository.removeAllItemsFromCart(cartId: any(named: 'cartId')))
          .thenAnswer((_) async => Left(expectedError));

      // Act
      final result = await removeAllItemsFromCartUseCase.call();

      // Assert
      verify(() => mockCartRepository.removeAllItemsFromCart(cartId: 'test')).called(1);
      expect(result, Left(expectedError));
    });
  });
}
