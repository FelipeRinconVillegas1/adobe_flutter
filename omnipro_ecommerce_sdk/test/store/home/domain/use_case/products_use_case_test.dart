import 'package:core/data/dto/products_dto.fr.dart';
import 'package:core/data/dto/products_mapper.dart';
import 'package:core/domain/entity/products.dart';
import 'package:core/domain/use_case/products/get_products_by_category_uid_use_case.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/data/repository/products/products_repository.dart';

import '../../../products_fake_data.dart';

class MockProductsRepository extends Mock implements ProductsRepository {}

void main() {
  late GetProductsByCategoryUidUseCase getproductsByCategoryUidUseCase;
  late ProductsRepository mockProductsRepository;
  setUp(() async {
    mockProductsRepository = MockProductsRepository();
    getproductsByCategoryUidUseCase = GetProductsByCategoryUidUseCase(mockProductsRepository);
  });
  group('getProductsByCatUid', () {
    test('returns Products when the repository call is succesfull', () async {
      //arrange
      final productsDTO = ProductsDTO.fromJson(ProductsFakeData.succesfullData['products']);
      final products = productsDTO.toDomain();
      when(() => mockProductsRepository.getProductsByCategoryUid('any'))
          .thenAnswer((_) async => Right<ErrorHandler, Products>(products));

      //act
      final result = await getproductsByCategoryUidUseCase.call('any');

      //assert
      verify(() => mockProductsRepository.getProductsByCategoryUid('any')).called(1);
      expect(result.isRight(), true);
      expect(result, Right<ErrorHandler, Products>(products));
    });

    test('returns ErrorHandler when the repository fails', () async {
      //arrange
      final error = ErrorHandlerInternal(errorMessage: 'error message');
      when(() => mockProductsRepository.getProductsByCategoryUid('any')).thenAnswer((_) async => Left(error));

      //act
      final result = await getproductsByCategoryUidUseCase.call('any');

      //assert
      verify(() => mockProductsRepository.getProductsByCategoryUid('any')).called(1);
      expect(result.isLeft(), true);
    });
  });
  group(
      'getProductsByNameUseCase',
      () => test('return products', () async {
            final productsDTO = ProductsDTO.fromJson(ProductsFakeData.succesfullData['products']);
          }));
}
