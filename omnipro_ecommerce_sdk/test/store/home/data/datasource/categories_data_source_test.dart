import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/network/graphql_helper_test.dart';
import 'package:omnipro_ecommerce_sdk/store/home/data/datasource/categories_data_source_impl.dart';
import 'package:omnipro_ecommerce_sdk/store/home/data/dto/response/categories_dto.fr.dart';
import '../../../categories_fake_data.dart';

class MockGraphQLService extends Mock implements GraphQLService {}

void main() {
  late CategoriesDataSourceImpl categoriesDataSourceImpl;
  late MockGraphQLService mockGraphQLService;
  late MockGraphQLClient mockGraphQLClient;

  setUp(() async {
    mockGraphQLClient = generateMockGraphQLClient();
    mockGraphQLService = MockGraphQLService();
    categoriesDataSourceImpl = CategoriesDataSourceImpl(mockGraphQLService);
  });

  group('getCategories', () {
    test('returns CategoriesDTO when the server call is successful', () async {
      // arrange
      final resultQuery = generateMockQuery<CategoriesDTO>(
        mockGraphQLClient,
        response: CategoriesFakeData.succesfullData,
      );
      final resultCategoriesDto = CategoriesDTO.fromJson(CategoriesFakeData.succesfullData['categories']);

      when(() => mockGraphQLService.query(any())).thenAnswer((invocation) async => Right(resultQuery));

      // act
      final result = await categoriesDataSourceImpl.getCategoriesByFilter(filter: {});

      // assert
      verify(() => mockGraphQLService.query(any())).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right(resultCategoriesDto));
    });

    test('returns ErrorHandler when the server call fails', () async {
      // arrange
      final expected = left(ErrorHandlerInternal(
        errorMessage: 'Server error',
      ));
      when(() => mockGraphQLService.query(any())).thenAnswer((_) async => Left(ErrorHandlerInternal(
            errorMessage: 'Server error',
          )));

      // act
      final result = await categoriesDataSourceImpl.getCategoriesByFilter(filter: {});

      // assert
      verify(() => mockGraphQLService.query(any())).called(1);
      expect(result, expected);
    });
  });

  test('returns ErrorHandler when the data is wrong', () async {
    //arrange
    final resultQuery = generateMockQuery<CategoriesDTO>(
      mockGraphQLClient,
      response: CategoriesFakeData.wrongData,
    );

    when(() => mockGraphQLService.query(any())).thenAnswer((invocation) async => Right(resultQuery));
    //act
    final result = await categoriesDataSourceImpl.getCategoriesByFilter(filter: {});

    // // assert
    verify(() => mockGraphQLService.query(any())).called(1);
    expect(result.isLeft(), true);
    result.fold((l) => expect(l.errorMessage, 'Type Error'), (r) => null);
  });

  test('returns ErrorHandler when the data has a cast error', () async {
    //arrange
    final resultQuery = generateMockQuery<CategoriesDTO>(
      mockGraphQLClient,
      response: CategoriesFakeData.wrongTypeData,
    );

    when(() => mockGraphQLService.query(any())).thenAnswer((invocation) async => Right(resultQuery));
    //act
    final result = await categoriesDataSourceImpl.getCategoriesByFilter(filter: {});

    // // assert
    verify(() => mockGraphQLService.query(any())).called(1);
    expect(result.isLeft(), true);
    result.fold((l) => expect(l.errorMessage, 'Type Error'), (r) => null);
  });
}
