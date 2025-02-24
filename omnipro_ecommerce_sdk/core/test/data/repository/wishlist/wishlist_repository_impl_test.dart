import 'package:core/data/datasource/wishlist/wishlist_data_source.dart';
import 'package:core/data/dto/wishlist_dto.fr.dart';
import 'package:core/data/mapper.dart';
import 'package:core/data/repository/wishlist/wishlist_repository.dart';
import 'package:core/data/repository/wishlist/wishlist_repository_impl.dart';
import 'package:core/domain/entity/wishlist/wishlist_product_entity.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../datasource/wishlist/fake_data/wishlist_fake_data.dart';

class MockWishListDataSource extends Mock implements WishListDataSource {}

void main() {
  late MockWishListDataSource mockWishListDataSource;
  late WishListRepository wishListRepositoryImpl;

  final wishlistProducts = <WishListProductAddInfo>[];
  final wishlistId = 0;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockWishListDataSource = MockWishListDataSource();
    wishListRepositoryImpl = WishListRepositoryImpl(mockWishListDataSource);
  });

  group('addProductWishList', () {
    test('returns WishList when the datasource call is succesfull', () async {
      //arrange
      final resultWishListData =
          WishlistFakeData.addProductToWishlistSuccesfullData['addProductsToWishlist']["wishlist"];
      final resultWishListDTO = WishListDTO.fromJson(resultWishListData);

      when(() => mockWishListDataSource.addProductWishList(wishlistProducts: wishlistProducts, wishlistId: wishlistId))
          .thenAnswer((_) async => Right<ErrorHandler, WishListDTO>(resultWishListDTO));

      //act
      final result =
          await wishListRepositoryImpl.addProductWishList(wishlistProducts: wishlistProducts, wishlistId: wishlistId);

      //assert
      verify(() =>
              mockWishListDataSource.addProductWishList(wishlistProducts: wishlistProducts, wishlistId: wishlistId))
          .called(1);
      expect(result.isRight(), true);
      result.fold((l) => null, (r) => expect(r, resultWishListDTO.toDomain()));
    });

    test('returns ErrorHandler when the datasource fails', () async {
      //arrange
      final error = ErrorHandlerInternal(errorMessage: 'error message');
      when(() => mockWishListDataSource.addProductWishList(wishlistProducts: wishlistProducts, wishlistId: wishlistId))
          .thenAnswer((_) async => Left(error));

      //act
      final result =
          await wishListRepositoryImpl.addProductWishList(wishlistProducts: wishlistProducts, wishlistId: wishlistId);

      //assert
      verify(() =>
              mockWishListDataSource.addProductWishList(wishlistProducts: wishlistProducts, wishlistId: wishlistId))
          .called(1);
      expect(result.isLeft(), true);
    });
  });

  group('addProductsToCartFromWishList', () {
    test('returns WishList when the datasource call is succesfull', () async {
      //arrange
      final resultWishListData =
          WishlistFakeData.addProductsToCartFromWishListSuccesfullData['addWishlistItemsToCart']["wishlist"];
      final resultWishListDTO = WishListDTO.fromJson(resultWishListData);

      when(() => mockWishListDataSource.addProductsToCartFromWishList(wishlistId: wishlistId, wishlistItemIds: []))
          .thenAnswer((_) async => Right<ErrorHandler, WishListDTO>(resultWishListDTO));

      //act
      final result =
          await wishListRepositoryImpl.addProductsToCartFromWishList(wishlistId: wishlistId, wishlistItemIds: []);

      //assert
      verify(() => mockWishListDataSource.addProductsToCartFromWishList(wishlistId: wishlistId, wishlistItemIds: []))
          .called(1);
      expect(result.isRight(), true);
      result.fold((l) => null, (r) => expect(r, resultWishListDTO.toDomain()));
    });

    test('returns ErrorHandler when the datasource fails', () async {
      //arrange
      final error = ErrorHandlerInternal(errorMessage: 'error message');
      when(() => mockWishListDataSource.addProductsToCartFromWishList(wishlistId: wishlistId, wishlistItemIds: []))
          .thenAnswer((_) async => Left(error));

      //act
      final result =
          await wishListRepositoryImpl.addProductsToCartFromWishList(wishlistId: wishlistId, wishlistItemIds: []);

      //assert
      verify(() => mockWishListDataSource.addProductsToCartFromWishList(wishlistId: wishlistId, wishlistItemIds: []))
          .called(1);
      expect(result.isLeft(), true);
    });
  });

  group('createWishList', () {
    test('returns WishList when the datasource call is succesfull', () async {
      //arrange
      final resultWishListData = WishlistFakeData.createWishListSuccesfullData['createWishlist']["wishlist"];
      final resultWishListDTO = WishListDTO.fromJson(resultWishListData);

      when(() => mockWishListDataSource.createWishList(name: 'name'))
          .thenAnswer((_) async => Right<ErrorHandler, WishListDTO>(resultWishListDTO));

      //act
      final result = await wishListRepositoryImpl.createWishList(name: 'name');

      //assert
      verify(() => mockWishListDataSource.createWishList(name: 'name')).called(1);
      expect(result.isRight(), true);
      result.fold((l) => null, (r) => expect(r, resultWishListDTO.toDomain()));
    });

    test('returns ErrorHandler when the datasource fails', () async {
      //arrange
      final error = ErrorHandlerInternal(errorMessage: 'error message');
      when(() => mockWishListDataSource.createWishList(name: 'name')).thenAnswer((_) async => Left(error));

      //act
      final result = await wishListRepositoryImpl.createWishList(name: 'name');

      //assert
      verify(() => mockWishListDataSource.createWishList(name: 'name')).called(1);
      expect(result.isLeft(), true);
    });
  });

  group('rewmoveProductFromWishList', () {
    test('returns WishList when the datasource call is succesfull', () async {
      //arrange
      final resultWishListData =
          WishlistFakeData.rewmoveProductFromWishListSuccesfullData['removeProductsFromWishlist']["wishlist"];
      final resultWishListDTO = WishListDTO.fromJson(resultWishListData);

      when(() => mockWishListDataSource.removeProductFromWishList(wishlistId: wishlistId, ids: []))
          .thenAnswer((_) async => Right<ErrorHandler, WishListDTO>(resultWishListDTO));

      //act
      final result = await wishListRepositoryImpl.removeProductFromWishList(wishlistId: wishlistId, ids: []);

      //assert
      verify(() => mockWishListDataSource.removeProductFromWishList(wishlistId: wishlistId, ids: [])).called(1);
      expect(result.isRight(), true);
      result.fold((l) => null, (r) => expect(r, resultWishListDTO.toDomain()));
    });

    test('returns ErrorHandler when the datasource fails', () async {
      //arrange
      final error = ErrorHandlerInternal(errorMessage: 'error message');
      when(() => mockWishListDataSource.removeProductFromWishList(wishlistId: wishlistId, ids: []))
          .thenAnswer((_) async => Left(error));

      //act
      final result = await wishListRepositoryImpl.removeProductFromWishList(wishlistId: wishlistId, ids: []);

      //assert
      verify(() => mockWishListDataSource.removeProductFromWishList(wishlistId: wishlistId, ids: [])).called(1);
      expect(result.isLeft(), true);
    });
  });

  group('deleteWishList', () {
    test('returns WishList when the datasource call is succesfull', () async {
      //arrange
      final resultWishListData = WishlistFakeData.deleteWishListSuccesfullData['deleteWishlist']["wishlists"] as List;
      final wishListDeleteDTO = WishListDeleteDTO(
        wishlists: List.generate(
          resultWishListData.length,
          (index) => WishListDTO.fromJson(
            resultWishListData[index],
          ),
        ),
        status: true,
      );
      final resultWishListDTO = List.generate(
        resultWishListData.length,
        (index) => WishListDTO.fromJson(
          resultWishListData[index],
        ),
      );

      when(() => mockWishListDataSource.deleteWishList(wishlistIds: "$wishlistId"))
          .thenAnswer((_) async => Right<ErrorHandler, WishListDeleteDTO>(wishListDeleteDTO));

      //act
      final result = await wishListRepositoryImpl.deleteWishList(wishlistIds: "$wishlistId");

      //assert
      verify(() => mockWishListDataSource.deleteWishList(wishlistIds: "$wishlistId")).called(1);
      expect(result.isRight(), true);
      result.fold((l) => null, (r) => expect(r, wishListDeleteDTO.toDomain()));
    });

    test('returns ErrorHandler when the datasource fails', () async {
      //arrange
      final error = ErrorHandlerInternal(errorMessage: 'error message');
      when(() => mockWishListDataSource.deleteWishList(wishlistIds: "$wishlistId")).thenAnswer((_) async => Left(error));

      //act
      final result = await wishListRepositoryImpl.deleteWishList(wishlistIds: "$wishlistId");

      //assert
      verify(() => mockWishListDataSource.deleteWishList(wishlistIds: "$wishlistId")).called(1);
      expect(result.isLeft(), true);
    });
  });

  group('updateWishlist', () {
    test('returns WishList when the datasource call is succesfull', () async {
      //arrange

      when(() => mockWishListDataSource.updateWishlist(wishlistId: wishlistId, name: 'name'))
          .thenAnswer((_) async => None());

      //act
      final result = await wishListRepositoryImpl.updateWishlist(wishlistId: wishlistId, name: 'name');

      //assert
      verify(() => mockWishListDataSource.updateWishlist(wishlistId: wishlistId, name: 'name')).called(1);
      expect(result.isNone(), true);
    });

    test('returns ErrorHandler when the datasource fails', () async {
      //arrange
      final error = ErrorHandlerInternal(errorMessage: 'error message');
      when(() => mockWishListDataSource.updateWishlist(wishlistId: wishlistId, name: 'name'))
          .thenAnswer((_) async => Some(error));

      //act
      final result = await wishListRepositoryImpl.updateWishlist(wishlistId: wishlistId, name: 'name');

      //assert
      verify(() => mockWishListDataSource.updateWishlist(wishlistId: wishlistId, name: 'name')).called(1);
      expect(result.isSome(), true);
    });
  });
}
