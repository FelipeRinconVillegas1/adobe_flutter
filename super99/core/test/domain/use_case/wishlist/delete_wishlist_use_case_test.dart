import 'package:core/data/dto/wishlist_dto.fr.dart';
import 'package:core/data/mapper.dart';
import 'package:core/data/repository/wishlist/wishlist_repository.dart';
import 'package:core/domain/entity/wishlist.fr.dart';
import 'package:core/domain/use_case/wishlist/delete_wishlist_use_case.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../data/datasource/wishlist/fake_data/wishlist_fake_data.dart';

class MockWishListRepository extends Mock implements WishListRepository {}

void main() {
  late MockWishListRepository mockWishListRepository;
  late DeleteWishlistUseCase deleteWishlistUseCase;
  final wishlistId = 1;
  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockWishListRepository = MockWishListRepository();
    deleteWishlistUseCase = DeleteWishlistUseCase(mockWishListRepository);
  });
  group('createWishlist', () {
    test('returns list of WishList when the repository call is succesfull', () async {
      //arrange

      final resultWishListData = WishlistFakeData.deleteWishListSuccesfullData['deleteWishlist']["wishlists"] as List;
      final wishlistList = List.generate(
          resultWishListData.length, (index) => WishListDTO.fromJson(resultWishListData[index]).toDomain());
      final wishListDeleteEntity = WishListDeleteEntity(
        wishlists: wishlistList,
        status: true,
        deletedWishlistIds: [],
        errorMessages: [],
      );
      when(() => mockWishListRepository.deleteWishList(wishlistIds: "$wishlistId"))
          .thenAnswer((_) async => Right<ErrorHandler, WishListDeleteEntity>(wishListDeleteEntity));

      //act
      final result = await deleteWishlistUseCase.call("$wishlistId");
      //assert
      verify(() => mockWishListRepository.deleteWishList(wishlistIds: "$wishlistId")).called(1);
      expect(result.isRight(), true);
      expect(result, Right<ErrorHandler, List<WishList>>(wishlistList));
    });
    test('returns ErrorHandler when the repository fails', () async {
      //arrange
      final error = ErrorHandlerInternal(errorMessage: 'error message');

      when(() => mockWishListRepository.deleteWishList(wishlistIds: "$wishlistId"))
          .thenAnswer((_) async => Left(error));
      //act
      final result = await deleteWishlistUseCase.call("$wishlistId");
      //assert
      verify(() => mockWishListRepository.deleteWishList(wishlistIds: "$wishlistId")).called(1);
      expect(result.isLeft(), true);
    });
  });
}
