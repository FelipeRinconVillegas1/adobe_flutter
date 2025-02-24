import 'package:core/data/dto/wishlist_dto.fr.dart';
import 'package:core/data/mapper.dart';
import 'package:core/data/repository/wishlist/wishlist_repository.dart';
import 'package:core/domain/entity/wishlist.fr.dart';
import 'package:core/domain/use_case/wishlist/remove_product_wishlist_use_case.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../data/datasource/wishlist/fake_data/wishlist_fake_data.dart';

class MockWishListRepository extends Mock implements WishListRepository {}

void main() {
  late MockWishListRepository mockWishListRepository;
  late RemoveProductWishlistUseCase removeProductWishlistUseCase;
  final wishlistId = 1;
  final ids = <int>[];
  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockWishListRepository = MockWishListRepository();
    removeProductWishlistUseCase = RemoveProductWishlistUseCase(mockWishListRepository);
  });
  group('createWishlist', () {
    test('returns WishList when the repository call is succesfull', () async {
      //arrange

      final resultWishListData =
          WishlistFakeData.rewmoveProductFromWishListSuccesfullData['removeProductsFromWishlist']["wishlist"];
      final resultWishListDTO = WishListDTO.fromJson(resultWishListData);
      when(() => mockWishListRepository.removeProductFromWishList(ids: ids, wishlistId: wishlistId))
          .thenAnswer((_) async => Right<ErrorHandler, WishList>(resultWishListDTO.toDomain()));
      //act
      final result = await removeProductWishlistUseCase.call(ids: ids, wishlistId: wishlistId);
      //assert
      verify(() => mockWishListRepository.removeProductFromWishList(ids: ids, wishlistId: wishlistId)).called(1);
      expect(result.isRight(), true);
      expect(result, Right<ErrorHandler, WishList>(resultWishListDTO.toDomain()));
    });
    test('returns ErrorHandler when the repository fails', () async {
      //arrange
      final error = ErrorHandlerInternal(errorMessage: 'error message');

      when(() => mockWishListRepository.removeProductFromWishList(ids: ids, wishlistId: wishlistId))
          .thenAnswer((_) async => Left(error));
      //act
      final result = await removeProductWishlistUseCase.call(ids: ids, wishlistId: wishlistId);
      //assert
      verify(() => mockWishListRepository.removeProductFromWishList(ids: ids, wishlistId: wishlistId)).called(1);
      expect(result.isLeft(), true);
    });
  });
}
