import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:store/home/data/mapper/recipes_mapper.dart';
import 'package:store/home/data/repository/recipes_repository.dart';

import '../../domain/entity/recipe_item.dart';
import '../datasource/recipes_datasource.dart';

class RecipesRepositoryImpl extends RecipesRepository {
  RecipesRepositoryImpl(this._recipesDatasource);

  final RecipesDatasource _recipesDatasource;

  @override
  Future<Either<ErrorHandler, List<RecipeItem>>> fetchRecipes(
      {required int entityId, required int pageSize, required int currentPage}) {
    return _recipesDatasource
        .getRecipes(entityId: entityId, pageSize: pageSize, currentPage: currentPage)
        .then((value) => value.map((r) => r.map((e) => e.toDomain()).toList()));
  }
}
