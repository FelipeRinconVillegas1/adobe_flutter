import 'package:core/domain/entity/categories.dart';
import 'package:store/home/data/dto/response/categories_dto.fr.dart';

extension CategoriesMapperDTO on CategoriesDTO {
  Categories toDomain() => Categories(
        items: items.map((e) => e.toDomain()).toList(),
        pageInfo: pageInfo.toDomain(),
      );
}

extension CategoriesItemsMapperDTO on CategoriesItemsDTO {
  CategoriesItems toDomain() => CategoriesItems(
        uid: uid,
        level: level,
        name: name,
        id: id,
        position: position,
        urlPath: urlPath,
        appPosition: appPosition,
        appMainImage: appMainImage,
        appBannerImage: appBannerImage,
        includeInMenu: includeInMenu,
        childrenCount: int.tryParse(childrenCount) ?? 0,
        children: children?.map((e) => e.toDomain()).toList() ?? [],
      );
}

extension CategoriesPageInfoMapperDTO on CategoriesPageInfoDTO {
  CategoriesPageInfo toDomain() => CategoriesPageInfo(
        currentPage: currentPage,
        pageSize: pageSize,
        totalPages: totalPages,
      );
}
