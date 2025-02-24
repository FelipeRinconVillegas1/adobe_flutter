import 'package:core/data/repository/wishlist/wishlist_repository.dart';
import 'package:core/domain/use_case/wishlist/update_wishlist_use_case.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockWishListRepository extends Mock implements WishListRepository {}

void main() {
  late MockWishListRepository mockWishListRepository;
  late UpdateWishlistUseCase updateWishlistUseCase;
  final wishlistId = 1;
  final name = 'name';
  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockWishListRepository = MockWishListRepository();
    updateWishlistUseCase = UpdateWishlistUseCase(mockWishListRepository);
  });
  group('createWishlist', () {
    test('returns None when the repository call is succesfull', () async {
      //arrange

      when(() => mockWishListRepository.updateWishlist(wishlistId: wishlistId, name: name))
          .thenAnswer((_) async => None());
      //act
      final result = await updateWishlistUseCase.call(wishlistId: wishlistId, name: name);
      //assert
      verify(() => mockWishListRepository.updateWishlist(wishlistId: wishlistId, name: name)).called(1);
      expect(result.isNone(), true);
    });
    test('returns Some ErrorHandler when the repository fails', () async {
      //arrange
      final error = ErrorHandlerInternal(errorMessage: 'error message');

      when(() => mockWishListRepository.updateWishlist(wishlistId: wishlistId, name: name))
          .thenAnswer((_) async => Some(error));
      //act
      final result = await updateWishlistUseCase.call(wishlistId: wishlistId, name: name);
      //assert
      verify(() => mockWishListRepository.updateWishlist(wishlistId: wishlistId, name: name)).called(1);
      expect(result.isSome(), true);
    });
  });
}
