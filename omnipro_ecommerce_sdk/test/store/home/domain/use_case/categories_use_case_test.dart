import 'package:core/domain/entity/categories.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:omnipro_ecommerce_sdk/store/home/data/dto/response/categories_dto.fr.dart';
import 'package:omnipro_ecommerce_sdk/store/home/data/mapper/categories_mapper.dart';
import 'package:omnipro_ecommerce_sdk/store/home/data/repository/categories_repository.dart';
import 'package:omnipro_ecommerce_sdk/store/home/domain/use_case/get_categoriesby_filter_use_case.dart';
import '../../../categories_fake_data.dart';

class MockCategoriesRepository extends Mock implements CategoriesRepository {}

void main() {
  late GetCategoriesByFilterUseCase getcategoriesUseCase;
  late CategoriesRepository mockCategoriesRepository;

  setUp(() async {
    mockCategoriesRepository = MockCategoriesRepository();
    getcategoriesUseCase = GetCategoriesByFilterUseCase(mockCategoriesRepository);
  });
  group('getCategories', () {
    test('returns Categories when the repository call is succesfull', () async {
      //arrange
      final categoriesDTO = CategoriesDTO.fromJson(CategoriesFakeData.succesfullData['categories']);
      final categories = categoriesDTO.toDomain();
      when(() => mockCategoriesRepository.getCategoriesByFilter(filter: {}))
          .thenAnswer((_) async => Right<ErrorHandler, Categories>(categories));

      //act
      final result = await getcategoriesUseCase.call(filter: {});

      //assert
      verify(() => mockCategoriesRepository.getCategoriesByFilter(filter: {})).called(1);
      expect(result.isRight(), true);
      expect(result, Right<ErrorHandler, Categories>(categories));
    });

    test('returns ErrorHandler when the repository fails', () async {
      //arrange
      final error = ErrorHandlerInternal(errorMessage: 'error message');
      when(() => mockCategoriesRepository.getCategoriesByFilter(filter: {})).thenAnswer((_) async => Left(error));

      //act
      final result = await getcategoriesUseCase.call(filter: {});

      //assert
      verify(() => mockCategoriesRepository.getCategoriesByFilter(filter: {})).called(1);
      expect(result.isLeft(), true);
    });
  });
}
