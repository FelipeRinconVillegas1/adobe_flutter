import 'package:core/domain/entity/categories.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:omnipro_ecommerce_sdk/store/home/data/datasource/categories_data_source.dart';
import 'package:omnipro_ecommerce_sdk/store/home/data/dto/response/categories_dto.fr.dart';
import 'package:omnipro_ecommerce_sdk/store/home/data/mapper/categories_mapper.dart';
import 'package:omnipro_ecommerce_sdk/store/home/data/repository/categories_repository.dart';
import 'package:omnipro_ecommerce_sdk/store/home/data/repository/categories_repository_impl.dart';
import '../../../categories_fake_data.dart';

class MockCategoriesDataSource extends Mock implements CategoriesDataSource {}

void main() {
  late CategoriesDataSource mockCategoriesDataSource;
  late CategoriesRepository categoriesRepository;

  setUp(() async {
    mockCategoriesDataSource = MockCategoriesDataSource();
    categoriesRepository = CategoriesRepositoryImpl(mockCategoriesDataSource);
  });
  group('getCategories', () {
    test('returns Categories when the datasource call is succesfull', () async {
      //arrange
      final categoriesDTO = CategoriesDTO.fromJson(CategoriesFakeData.succesfullData['categories']);
      final categories = categoriesDTO.toDomain();
      when(() => mockCategoriesDataSource.getCategoriesByFilter(filter: {}))
          .thenAnswer((_) async => Right<ErrorHandler, CategoriesDTO>(categoriesDTO));

      //act
      final result = await categoriesRepository.getCategoriesByFilter(filter: {});

      //assert
      verify(() => mockCategoriesDataSource.getCategoriesByFilter(filter: {})).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right<ErrorHandler, Categories>(categories));
    });

    test('returns ErrorHandler when the datasource fails', () async {
      //arrange
      final error = ErrorHandlerInternal(errorMessage: 'error message');
      when(() => mockCategoriesDataSource.getCategoriesByFilter(filter: {})).thenAnswer((_) async => Left(error));

      //act
      final result = await categoriesRepository.getCategoriesByFilter(filter: {});

      //assert
      verify(() => mockCategoriesDataSource.getCategoriesByFilter(filter: {})).called(1);
      expect(result.isLeft(), true);
    });
  });
}
