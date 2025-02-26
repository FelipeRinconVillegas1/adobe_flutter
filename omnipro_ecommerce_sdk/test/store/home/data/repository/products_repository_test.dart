import 'package:core/data/dto/products_dto.fr.dart';
import 'package:core/data/dto/products_mapper.dart';
import 'package:core/data/repository/products/products_repository_impl.dart';
import 'package:core/domain/entity/products.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/data/datasource/product/producst_data_source.dart';
import 'package:core/data/repository/products/products_repository.dart';

import '../../../products_fake_data.dart';

class MockProductsDataSource extends Mock implements ProductsDataSource {}

void main() {
  late ProductsDataSource mockProductsDataSource;
  late ProductsRepository productsRepository;
  setUp(() async {
    mockProductsDataSource = MockProductsDataSource();
    productsRepository = ProductsRepositoryImpl(mockProductsDataSource);
  });
  group('getProductsByCatUid', () {
    test('returns Products when the datasource call is succesfull', () async {
      //arrange
      final productsDTO = ProductsDTO.fromJson(ProductsFakeData.succesfullData['products']);
      final products = productsDTO.toDomain();
      when(() => mockProductsDataSource.getProductsByCategoryUid('any'))
          .thenAnswer((_) async => Right<ErrorHandler, ProductsDTO>(productsDTO));

      //act
      final result = await productsRepository.getProductsByCategoryUid('any');

      //assert
      verify(() => mockProductsDataSource.getProductsByCategoryUid('any')).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right<ErrorHandler, Products>(products));
    });

    test('returns ErrorHandler when the datasource fails', () async {
      //arrange
      final error = ErrorHandlerInternal(errorMessage: 'error message');
      when(() => mockProductsDataSource.getProductsByCategoryUid('any')).thenAnswer((_) async => Left(error));

      //act
      final result = await productsRepository.getProductsByCategoryUid('any');

      //assert
      verify(() => mockProductsDataSource.getProductsByCategoryUid('any')).called(1);
      expect(result.isLeft(), true);
    });
  });
}
