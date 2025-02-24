import 'package:core/data/dto/wishlist_dto.fr.dart';
import 'package:core/data/mapper.dart';
import 'package:core/data/repository/wishlist/wishlist_repository.dart';
import 'package:core/domain/entity/wishlist.fr.dart';
import 'package:core/domain/entity/wishlist/wishlist_product_entity.dart';
import 'package:core/domain/use_case/wishlist/add_products_wishlist_use_case.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../data/datasource/wishlist/fake_data/wishlist_fake_data.dart';

class MockWishListRepository extends Mock implements WishListRepository {}

void main() {
  late MockWishListRepository mockWishListRepository;
  late AddProductsWishlistUseCase addProductsWishlistUseCase;
  final wishlistProducts = <WishListProductAddInfo>[];
  final wishlistId = 0;
  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockWishListRepository = MockWishListRepository();
    addProductsWishlistUseCase = AddProductsWishlistUseCase(mockWishListRepository);
  });
  group('addProductWishList', () {
    test('returns WishList when the repository call is succesfull', () async {
      //arrange

      final resultWishListData =
          WishlistFakeData.addProductToWishlistSuccesfullData['addProductsToWishlist']["wishlist"];
      final resultWishListDTO = WishListDTO.fromJson(resultWishListData);
      when(() => mockWishListRepository.addProductWishList(wishlistId: wishlistId, wishlistProducts: wishlistProducts))
          .thenAnswer((_) async => Right<ErrorHandler, WishList>(resultWishListDTO.toDomain()));
      //act
      final result = await addProductsWishlistUseCase.call(wishlistId: wishlistId, wishlistProducts: wishlistProducts);
      //assert
      verify(() =>
              mockWishListRepository.addProductWishList(wishlistId: wishlistId, wishlistProducts: wishlistProducts))
          .called(1);
      expect(result.isRight(), true);
      expect(result, Right<ErrorHandler, WishList>(resultWishListDTO.toDomain()));
    });
    test('returns ErrorHandler when the repository fails', () async {
      //arrange
      final error = ErrorHandlerInternal(errorMessage: 'error message');

      when(() => mockWishListRepository.addProductWishList(wishlistId: wishlistId, wishlistProducts: wishlistProducts))
          .thenAnswer((_) async => Left(error));
      //act
      final result = await addProductsWishlistUseCase.call(wishlistId: wishlistId, wishlistProducts: wishlistProducts);
      //assert
      verify(() =>
              mockWishListRepository.addProductWishList(wishlistId: wishlistId, wishlistProducts: wishlistProducts))
          .called(1);
      expect(result.isLeft(), true);
    });
  });
}
