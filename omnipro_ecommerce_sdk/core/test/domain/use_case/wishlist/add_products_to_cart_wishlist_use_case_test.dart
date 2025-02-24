import 'package:core/data/dto/wishlist_dto.fr.dart';
import 'package:core/data/mapper.dart';
import 'package:core/data/repository/wishlist/wishlist_repository.dart';
import 'package:core/domain/entity/wishlist.fr.dart';
import 'package:core/domain/use_case/wishlist/add_products_to_cart_wishlist_use_case.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../data/datasource/wishlist/fake_data/wishlist_fake_data.dart';

class MockWishListRepository extends Mock implements WishListRepository {}

void main() {
  late AddProductsToCartFromWishListUseCase addProductsToCartFromWishListUseCase;
  late MockWishListRepository mockWishListRepository;
  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockWishListRepository = MockWishListRepository();
    addProductsToCartFromWishListUseCase = AddProductsToCartFromWishListUseCase(mockWishListRepository);
  });

  group('addProductsToCartFromWishList', () {
    test('returns WishList when the repository call is succesfull', () async {
      //arrange
      final wishlistId = 1;
      final wishlistItemIds = [1, 2, 3];
      final resultWishListData =
          WishlistFakeData.addProductsToCartFromWishListSuccesfullData['addWishlistItemsToCart']["wishlist"];
      final resultWishListDTO = WishListDTO.fromJson(resultWishListData);
      when(() => mockWishListRepository.addProductsToCartFromWishList(
              wishlistId: wishlistId, wishlistItemIds: wishlistItemIds))
          .thenAnswer((_) async => Right<ErrorHandler, WishList>(resultWishListDTO.toDomain()));
      //act
      final result =
          await addProductsToCartFromWishListUseCase.call(wishlistId: wishlistId, wishlistItemIds: wishlistItemIds);
      //assert
      verify(() => mockWishListRepository.addProductsToCartFromWishList(
          wishlistId: wishlistId, wishlistItemIds: wishlistItemIds)).called(1);
      expect(result.isRight(), true);
      expect(result, Right<ErrorHandler, WishList>(resultWishListDTO.toDomain()));
    });

    test('returns ErrorHandler when the repository fails', () async {
      //arrange
      final error = ErrorHandlerInternal(errorMessage: 'error message');
      final wishlistId = 1;
      final wishlistItemIds = [1, 2, 3];
      when(() => mockWishListRepository.addProductsToCartFromWishList(
          wishlistId: wishlistId, wishlistItemIds: wishlistItemIds)).thenAnswer((_) async => Left(error));
      //act
      final result =
          await addProductsToCartFromWishListUseCase.call(wishlistId: wishlistId, wishlistItemIds: wishlistItemIds);
      //assert
      verify(() => mockWishListRepository.addProductsToCartFromWishList(
          wishlistId: wishlistId, wishlistItemIds: wishlistItemIds)).called(1);
      expect(result.isLeft(), true);
    });
  });
}
