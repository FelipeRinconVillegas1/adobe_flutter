import 'package:core/data/datasource/secure_call_datasource.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:store/home/data/datasource/recipes_datasource.dart';
import 'package:store/home/data/datasource/recipes_query.dart';
import 'package:store/home/data/dto/response/recipe_item_dto.fr.dart';

class RecipesDatasourceImpl extends RecipesDatasource {
  RecipesDatasourceImpl(this._graphQLServiceNoAuthenticated);

  final GraphQLService _graphQLServiceNoAuthenticated;

  @override
  Future<Either<ErrorHandler, List<RecipeItemDTO>>> getRecipes(
      {required int entityId, required int pageSize, required int currentPage}) {
    return secureServerCall(
      () async {
        final response = await _graphQLServiceNoAuthenticated.query(recipesQuery(
          entityId: entityId,
          pageSize: pageSize,
          currentPage: currentPage,
        ));

        return response.fold((l) => left(l), (recipesData) {
          final List<dynamic> recipes = recipesData.data!['recipes']['items'];
          return right(
            recipes.map((e) => RecipeItemDTO.fromJson(e)).toList(),
          );
        });
      },
    );
  }
}
