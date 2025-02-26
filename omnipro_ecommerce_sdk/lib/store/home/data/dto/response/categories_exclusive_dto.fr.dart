import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_exclusive_dto.fr.freezed.dart';

part 'categories_exclusive_dto.fr.g.dart';

@freezed
class CategoriesExclusiveDTO with _$CategoriesExclusiveDTO {
  const factory CategoriesExclusiveDTO({
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'name') required String name,
  }) = _CategoriesExclusiveDTO;

  factory CategoriesExclusiveDTO.fromJson(Map<String, dynamic> json) => _$CategoriesExclusiveDTOFromJson(json);
}