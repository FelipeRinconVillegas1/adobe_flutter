import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../domain/entity/recipe_item.dart';

abstract class RecipesRepository {
  Future<Either<ErrorHandler, List<RecipeItem>>> fetchRecipes({
    required int entityId,
    required int pageSize,
    required int currentPage,
  });
}
