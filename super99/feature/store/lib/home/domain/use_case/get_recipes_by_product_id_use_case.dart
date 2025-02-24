import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:store/home/domain/entity/recipe_item.dart';

import '../../data/repository/recipes_repository.dart';

class GetRecipesByProductIdUseCase {
  GetRecipesByProductIdUseCase(this._recipeRepository);

  final RecipesRepository _recipeRepository;

  Future<Either<ErrorHandler, List<RecipeItem>>> call({
    required int entityId,
    required int pageSize,
    required int currentPage,
  }) async {
    return await _recipeRepository.fetchRecipes(entityId: entityId, pageSize: pageSize, currentPage: currentPage);
  }
}
