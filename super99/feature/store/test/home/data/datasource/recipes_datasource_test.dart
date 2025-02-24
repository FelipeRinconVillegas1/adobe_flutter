import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/network/graphql_helper_test.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:store/home/data/datasource/recipes_datasource.dart';
import 'package:store/home/data/datasource/recipes_datasource_impl.dart';
import 'package:store/home/data/dto/response/recipe_item_dto.fr.dart';

import '../fake_data/recipes_face_data.dart';

class MockGraphQLService extends Mock implements GraphQLService {}

void main() {
  late RecipesDatasource recipesDatasource;
  late MockGraphQLService mockGraphQLService;
  late MockGraphQLClient mockGraphQLClient;

  setUp(() async {
    mockGraphQLClient = generateMockGraphQLClient();
    mockGraphQLService = MockGraphQLService();
    recipesDatasource = RecipesDatasourceImpl(mockGraphQLService);
  });

  group(
    'getStoresLocation',
    () {
      test('returns StoreLocationDTO when the server call is successful', () async {
        // arrange
        final resultQuery = generateMockQuery<List<RecipeItemDTO>>(
          mockGraphQLClient,
          response: RecipesFakeDate.successfulData,
        );

        final resultStoreLocation = RecipesFakeDate.successfulData['recipes']["items"] as List;

        final storesList = List.generate(
          resultStoreLocation.length,
          (index) => RecipeItemDTO.fromJson(
            resultStoreLocation[index],
          ),
        );

        when(() => mockGraphQLService.query(any())).thenAnswer((invocation) async => Right(resultQuery));

        // act
        final result = await recipesDatasource.getRecipes(entityId: 0, pageSize: 10, currentPage: 1);

        // assert
        verify(() => mockGraphQLService.query(any())).called(1);
        expect(result.isRight(), true);
        result.fold((l) => null, (r) => expect(r, storesList));
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
        final result = await recipesDatasource.getRecipes(entityId: 0, pageSize: 10, currentPage: 1);

        // assert
        verify(() => mockGraphQLService.query(any())).called(1);
        expect(result, expected);
      });
    },
  );
}
