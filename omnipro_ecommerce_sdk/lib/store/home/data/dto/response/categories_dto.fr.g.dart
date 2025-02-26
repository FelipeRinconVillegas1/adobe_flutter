// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesDTOImpl _$$CategoriesDTOImplFromJson(Map<String, dynamic> json) =>
    _$CategoriesDTOImpl(
      items:
          (json['items'] as List<dynamic>)
              .map(
                (e) => CategoriesItemsDTO.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
      pageInfo: CategoriesPageInfoDTO.fromJson(
        json['page_info'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$CategoriesDTOImplToJson(_$CategoriesDTOImpl instance) =>
    <String, dynamic>{'items': instance.items, 'page_info': instance.pageInfo};

_$CategoriesItemsDTOImpl _$$CategoriesItemsDTOImplFromJson(
  Map<String, dynamic> json,
) => _$CategoriesItemsDTOImpl(
  uid: json['uid'] as String,
  level: (json['level'] as num).toInt(),
  name: json['name'] as String,
  position: (json['position'] as num).toInt(),
  id: (json['id'] as num).toInt(),
  appPosition: (json['app_position'] as num?)?.toInt(),
  appMainImage: json['app_main_image'] as String?,
  appBannerImage: json['app_banner_image'] as String?,
  childrenCount: json['children_count'] as String,
  children:
      (json['children'] as List<dynamic>?)
          ?.map((e) => CategoriesItemsDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  urlPath: json['url_path'] as String?,
  includeInMenu: (json['include_in_menu'] as num?)?.toInt(),
);

Map<String, dynamic> _$$CategoriesItemsDTOImplToJson(
  _$CategoriesItemsDTOImpl instance,
) => <String, dynamic>{
  'uid': instance.uid,
  'level': instance.level,
  'name': instance.name,
  'position': instance.position,
  'id': instance.id,
  'app_position': instance.appPosition,
  'app_main_image': instance.appMainImage,
  'app_banner_image': instance.appBannerImage,
  'children_count': instance.childrenCount,
  'children': instance.children,
  'url_path': instance.urlPath,
  'include_in_menu': instance.includeInMenu,
};

_$CategoriesPageInfoDTOImpl _$$CategoriesPageInfoDTOImplFromJson(
  Map<String, dynamic> json,
) => _$CategoriesPageInfoDTOImpl(
  currentPage: (json['current_page'] as num).toInt(),
  pageSize: (json['page_size'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
);

Map<String, dynamic> _$$CategoriesPageInfoDTOImplToJson(
  _$CategoriesPageInfoDTOImpl instance,
) => <String, dynamic>{
  'current_page': instance.currentPage,
  'page_size': instance.pageSize,
  'total_pages': instance.totalPages,
};
