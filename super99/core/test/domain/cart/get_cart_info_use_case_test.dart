import 'package:core/data/dto/cart/cart_dto.fr.dart';
import 'package:core/data/repository/cart/mapper.dart';
import 'package:core/domain/entity/cart/cart.fr.dart';
import 'package:core/domain/use_case/cart/create_cart_use_case.dart';
import 'package:core/domain/use_case/cart/get_cart_id_use_case.dart';
import 'package:core/domain/use_case/cart/get_cart_info_use_case.dart';
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

class MockCreateEmptyCartUseCase extends Mock implements CreateCartUseCase {}

class IsCustomerLoggedInMock extends Mock implements IsCustomerLoggedIn {}

void main() {
  late GetCartIfoUseCase getCartIfoUseCase;
  late MockCreateEmptyCartUseCase mockCreateEmptyCartUseCase;
  late MockGetCartIdUseCase mockGetCartIdUseCase;
  late IsCustomerLoggedIn isCustomerLoggedInMock;

  late CartRepository mockCartRepository;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockCartRepository = MockCartRepository();
    mockCreateEmptyCartUseCase = MockCreateEmptyCartUseCase();
    mockGetCartIdUseCase = MockGetCartIdUseCase();
    isCustomerLoggedInMock = IsCustomerLoggedInMock();
    getCartIfoUseCase =
        GetCartIfoUseCase(mockCartRepository, mockCreateEmptyCartUseCase, mockGetCartIdUseCase, isCustomerLoggedInMock);
  });

  group('getCartInfo', () {
    test('returns Cart when the repository call is successful and cartId exist', () async {
      //arrange
      final cartDTO = CartDTO.fromJson(CartFakeData.successFullGetCartData['cart']);
      final cart = cartDTO.toDomain();

      const existCartId = 'existCartId';
      when(() => mockGetCartIdUseCase.call()).thenAnswer((_) async => existCartId);
      when(() => mockCartRepository.getCartInfo(existCartId, isGuestUser: false))
          .thenAnswer((_) async => Right<ErrorHandler, Cart>(cart));
      //act
      final result = await getCartIfoUseCase.call();
      //assert
      verify(() => mockCartRepository.getCartInfo(existCartId, isGuestUser: false)).called(1);
      verify(() => mockGetCartIdUseCase.call()).called(1);
      expect(result, Right<ErrorHandler, Cart>(cart));
    });

    test('returns Cart when the repository call is successful and cartId not exist', () async {
      //arrange
      final cartDTO = CartDTO.fromJson(CartFakeData.successFullGetCartData['cart']);
      final cart = cartDTO.toDomain();

      const notExistCartId = 'notExistCartId';
      when(() => mockGetCartIdUseCase.call()).thenAnswer((_) async => '');
      when(() => mockCreateEmptyCartUseCase.call())
          .thenAnswer((_) async => const Right<ErrorHandler, String>(notExistCartId));
      when(() => mockCartRepository.getCartInfo(notExistCartId, isGuestUser: false))
          .thenAnswer((_) async => Right<ErrorHandler, Cart>(cart));
      //act
      final result = await getCartIfoUseCase.call();
      //assert
      verify(() => mockCartRepository.getCartInfo(notExistCartId, isGuestUser: false)).called(1);
      verify(() => mockGetCartIdUseCase.call()).called(1);
      verify(() => mockCreateEmptyCartUseCase.call()).called(1);
      expect(result, Right<ErrorHandler, Cart>(cart));
    });

    test('returns ErrorHandler when the repository call fails', () async {
      //arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Server error',
      );

      const mockCardId = '1';

      when(() => mockGetCartIdUseCase.call()).thenAnswer((_) async => mockCardId);
      when(() => mockCartRepository.getCartInfo(mockCardId, isGuestUser: false))
          .thenAnswer((_) async => Left(expected));
      //act
      final result = await getCartIfoUseCase.call();
      //assert
      verify(() => mockCartRepository.getCartInfo(mockCardId, isGuestUser: false)).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l, expected), (r) => expect(r, null));
    });
  });
}
