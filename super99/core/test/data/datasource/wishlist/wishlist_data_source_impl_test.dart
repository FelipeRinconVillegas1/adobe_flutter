import 'package:core/data/datasource/wishlist/wishlist_data_source.dart';
import 'package:core/data/datasource/wishlist/wishlist_data_source_impl.dart';
import 'package:core/data/dto/wishlist_dto.fr.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/network/graphql_helper_test.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'fake_data/wishlist_fake_data.dart';

class MockGraphQLService extends Mock implements GraphQLService {}

void main() {
  late MockGraphQLService mockGraphQLService;
  late MockGraphQLClient mockGraphQLClient;
  late WishListDataSource wishListDataSource;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockGraphQLClient = generateMockGraphQLClient();
    mockGraphQLService = MockGraphQLService();
    wishListDataSource = WishListDataSourceImpl(mockGraphQLService);
  });

  group('addProductWishList', () {
    test('returns WishListDTO when the server call is successfull', () async {
      // arrange
      final resultQuery = generateMockQuery<WishListDTO>(
        mockGraphQLClient,
        response: WishlistFakeData.addProductToWishlistSuccesfullData,
      );

      final resultWishList = WishlistFakeData.addProductToWishlistSuccesfullData['addProductsToWishlist']["wishlist"];

      final wishList = WishListDTO.fromJson(resultWishList);

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultQuery));

      // act
      final result = await wishListDataSource.addProductWishList(
        wishlistProducts: [],
        wishlistId: 1,
      );

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isRight(), true);
      result.fold((l) => null, (r) => expect(r, wishList));
    });

    test('returns ErrorHandler when the server call fails', () async {
      // arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Internal Server Error',
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Left(ErrorHandlerInternal(
            errorMessage: 'Internal Server Error',
          )));

      // act
      final result = await wishListDataSource.addProductWishList(
        wishlistProducts: [],
        wishlistId: 1,
      );

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l, expected), (r) => null);
    });

    test('returns ErrorHandler when the data is wrong', () async {
      //arrange
      final resultQuery = generateMockQuery<WishListDTO>(
        mockGraphQLClient,
        response: WishlistFakeData.addProductTOWishlistWrongData,
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultQuery));

      //act
      final result = await wishListDataSource.addProductWishList(
        wishlistProducts: [],
        wishlistId: 1,
      );

      //assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l, isA<ErrorHandlerInternal>()), (r) => null);
    });
  });

  group('addProductsToCartFromWishList', () {
    test('returns WishListDTO when the server call is successfull', () async {
      // arrange
      final resultQuery = generateMockQuery<WishListDTO>(
        mockGraphQLClient,
        response: WishlistFakeData.addProductsToCartFromWishListSuccesfullData,
      );

      final resultWishList =
          WishlistFakeData.addProductsToCartFromWishListSuccesfullData['addWishlistItemsToCart']["wishlist"];

      final wishList = WishListDTO.fromJson(resultWishList);

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultQuery));

      // act
      final result = await wishListDataSource.addProductsToCartFromWishList(
        wishlistId: 1,
        wishlistItemIds: [],
      );

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isRight(), true);
      result.fold((l) => null, (r) => expect(r, wishList));
    });

    test('returns ErrorHandler when the server call fails', () async {
      // arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Internal Server Error',
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Left(expected));

      // act
      final result = await wishListDataSource.addProductsToCartFromWishList(
        wishlistId: 1,
        wishlistItemIds: [],
      );

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l, expected), (r) => null);
    });

    test('returns ErrorHandler when the data is wrong', () async {
      //arrange
      final resultQuery = generateMockQuery<WishListDTO>(
        mockGraphQLClient,
        response: WishlistFakeData.addProductsToCartFromWishListWrongData,
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultQuery));

      //act
      final result = await wishListDataSource.addProductsToCartFromWishList(
        wishlistId: 1,
        wishlistItemIds: [],
      );

      //assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l, isA<ErrorHandlerInternal>()), (r) => null);
    });
  });

  group('createWishList', () {
    test('returns WishListDTO when the server call is successfull', () async {
      // arrange
      final resultQuery = generateMockQuery<WishListDTO>(
        mockGraphQLClient,
        response: WishlistFakeData.createWishListSuccesfullData,
      );

      final resultWishList = WishlistFakeData.createWishListSuccesfullData['createWishlist']["wishlist"];

      final wishList = WishListDTO.fromJson(resultWishList);

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultQuery));

      // act
      final result = await wishListDataSource.createWishList(
        name: '',
      );

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isRight(), true);
      result.fold((l) => null, (r) => expect(r, wishList));
    });

    test('returns ErrorHandler when the server call fails', () async {
      // arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Internal Server Error',
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Left(expected));

      // act
      final result = await wishListDataSource.createWishList(
        name: '',
      );

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l, expected), (r) => null);
    });

    test('returns ErrorHandler when the data is wrong', () async {
      //arrange
      final resultQuery = generateMockQuery<WishListDTO>(
        mockGraphQLClient,
        response: WishlistFakeData.createWishListWrongData,
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultQuery));

      //act
      final result = await wishListDataSource.createWishList(
        name: '',
      );

      //assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l, isA<ErrorHandlerInternal>()), (r) => null);
    });
  });

  group('rewmoveProductFromWishList', () {
    test('returns WishListDTO when the server call is successfull', () async {
      // arrange
      final resultQuery = generateMockQuery<WishListDTO>(
        mockGraphQLClient,
        response: WishlistFakeData.rewmoveProductFromWishListSuccesfullData,
      );

      final resultWishList =
          WishlistFakeData.rewmoveProductFromWishListSuccesfullData['removeProductsFromWishlist']["wishlist"];

      final wishList = WishListDTO.fromJson(resultWishList);

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultQuery));

      // act
      final result = await wishListDataSource.removeProductFromWishList(
        wishlistId: 1,
        ids: [],
      );

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isRight(), true);
      result.fold((l) => null, (r) => expect(r, wishList));
    });

    test('returns ErrorHandler when the server call fails', () async {
      // arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Internal Server Error',
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Left(expected));

      // act
      final result = await wishListDataSource.removeProductFromWishList(
        wishlistId: 1,
        ids: [],
      );

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l, expected), (r) => null);
    });

    test('returns ErrorHandler when the data is wrong', () async {
      //arrange
      final resultQuery = generateMockQuery<WishListDTO>(
        mockGraphQLClient,
        response: WishlistFakeData.rewmoveProductFromWishListWrongData,
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultQuery));

      //act
      final result = await wishListDataSource.removeProductFromWishList(
        wishlistId: 1,
        ids: [],
      );

      //assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l, isA<ErrorHandlerInternal>()), (r) => null);
    });
  });

  group('deleteWishList', () {
    test('returns list of WishListDTO when the server call is successfull', () async {
      // arrange
      final resultQuery = generateMockQuery<WishListDTO>(
        mockGraphQLClient,
        response: WishlistFakeData.deleteWishListSuccesfullData,
      );

      final resultWishList = WishlistFakeData.deleteWishListSuccesfullData['deleteWishlist']["wishlists"] as List;

      final wishList = List.generate(
        resultWishList.length,
        (index) => WishListDTO.fromJson(
          resultWishList[index],
        ),
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultQuery));

      // act
      final result = await wishListDataSource.deleteWishList(
        wishlistIds: "1",
      );

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isRight(), true);
      result.fold((l) => null, (r) => expect(r, wishList));
    });

    test('returns ErrorHandler when the server call fails', () async {
      // arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Internal Server Error',
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Left(expected));

      // act
      final result = await wishListDataSource.deleteWishList(
        wishlistIds: "1",
      );

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l, expected), (r) => null);
    });

    test('returns ErrorHandler when the data is wrong', () async {
      //arrange
      final resultQuery = generateMockQuery<WishListDTO>(
        mockGraphQLClient,
        response: WishlistFakeData.deleteWishListWrongData,
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultQuery));

      //act
      final result = await wishListDataSource.deleteWishList(
        wishlistIds: "1",
      );

      //assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isLeft(), true);
      result.fold((l) => expect(l, isA<ErrorHandlerInternal>()), (r) => null);
    });
  });

  group('updateWishlist', () {
    test('returns None when the server call is successfull', () async {
      // arrange
      final resultQuery = generateMockQuery<WishListDTO>(
        mockGraphQLClient,
        response: WishlistFakeData.updateWishlistData,
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultQuery));

      // act
      final result = await wishListDataSource.updateWishlist(
        wishlistId: 1,
        name: '',
      );

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result, const None());
    });

    test('returns Some Error when server call fails', () async {
      // arrange
      final expected = ErrorHandlerInternal(
        errorMessage: 'Internal Server Error',
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Left(expected));

      // act
      final result = await wishListDataSource.updateWishlist(
        wishlistId: 1,
        name: '',
      );

      // assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result, Some(expected));
    });
  });
}
