import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_item_dto.fr.freezed.dart';
part 'recipe_item_dto.fr.g.dart';

@freezed
class RecipeItemDTO with _$RecipeItemDTO {
  const factory RecipeItemDTO({
    required String name,
    required String image,
    required String sku,
    @JsonKey(name: 'product_link') required String productLink,
  }) = _RecipeItemDTO;

  factory RecipeItemDTO.fromJson(Map<String, dynamic> json) => _$RecipeItemDTOFromJson(json);
}
