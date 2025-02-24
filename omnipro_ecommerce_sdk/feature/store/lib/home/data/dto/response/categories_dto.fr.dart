import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_dto.fr.freezed.dart';

part 'categories_dto.fr.g.dart';

@freezed
class CategoriesDTO with _$CategoriesDTO {
  const factory CategoriesDTO({
    required List<CategoriesItemsDTO> items,
    @JsonKey(name: 'page_info') required CategoriesPageInfoDTO pageInfo,
  }) = _CategoriesDTO;

  factory CategoriesDTO.fromJson(Map<String, dynamic> json) => _$CategoriesDTOFromJson(json);
}

@freezed
class CategoriesItemsDTO with _$CategoriesItemsDTO {
  const factory CategoriesItemsDTO({
    required String uid,
    required int level,
    required String name,
    required int position,
    required int id,
    @JsonKey(name: 'app_position')  int? appPosition,
    @JsonKey(name: 'app_main_image') String? appMainImage,
    @JsonKey(name: 'app_banner_image') String? appBannerImage,
    @JsonKey(name: 'children_count') required String childrenCount,
    @JsonKey(defaultValue: []) List<CategoriesItemsDTO>? children,
    @JsonKey(name: 'url_path') String? urlPath,
    @JsonKey(name: 'include_in_menu') int? includeInMenu,
  }) = _CategoriesItemsDTO;

  factory CategoriesItemsDTO.fromJson(Map<String, dynamic> json) => _$CategoriesItemsDTOFromJson(json);
}

@freezed
class CategoriesPageInfoDTO with _$CategoriesPageInfoDTO {
  const factory CategoriesPageInfoDTO({
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'page_size') required int pageSize,
    @JsonKey(name: 'total_pages') required int totalPages,
  }) = _CategoriesPageInfoDTO;

  factory CategoriesPageInfoDTO.fromJson(Map<String, dynamic> json) => _$CategoriesPageInfoDTOFromJson(json);
}
