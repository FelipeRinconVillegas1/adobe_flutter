import 'package:store/home/domain/entity/recipe_item.dart';

import '../dto/response/recipe_item_dto.fr.dart';

extension RecipesMapperDTO on RecipeItemDTO {
  RecipeItem toDomain() => RecipeItem(
        name: name,
        image: image,
        productLink: productLink,
        sku: sku,
      );
}
