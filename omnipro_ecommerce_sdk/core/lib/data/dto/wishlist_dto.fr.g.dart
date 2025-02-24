// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishListDeleteDTOImpl _$$WishListDeleteDTOImplFromJson(
  Map<String, dynamic> json,
) => _$WishListDeleteDTOImpl(
  status: json['status'] as bool,
  deletedWishlistIds:
      (json['deleted_wishlist_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  errorMessages:
      (json['error_messages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  wishlists:
      (json['wishlists'] as List<dynamic>)
          .map((e) => WishListDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$WishListDeleteDTOImplToJson(
  _$WishListDeleteDTOImpl instance,
) => <String, dynamic>{
  'status': instance.status,
  'deleted_wishlist_ids': instance.deletedWishlistIds,
  'error_messages': instance.errorMessages,
  'wishlists': instance.wishlists.map((e) => e.toJson()).toList(),
};

_$WishListDTOImpl _$$WishListDTOImplFromJson(Map<String, dynamic> json) =>
    _$WishListDTOImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      visibility: json['visibility'] as String,
      itemsCount: (json['items_count'] as num?)?.toInt() ?? 0,
      items: WishListItemV2DTO.fromJson(
        json['items_v2'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$WishListDTOImplToJson(_$WishListDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'visibility': instance.visibility,
      'items_count': instance.itemsCount,
      'items_v2': instance.items.toJson(),
    };

_$WishListItemV2DTOImpl _$$WishListItemV2DTOImplFromJson(
  Map<String, dynamic> json,
) => _$WishListItemV2DTOImpl(
  items:
      (json['items'] as List<dynamic>)
          .map((e) => WishListItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$WishListItemV2DTOImplToJson(
  _$WishListItemV2DTOImpl instance,
) => <String, dynamic>{'items': instance.items.map((e) => e.toJson()).toList()};

_$WishListItemDTOImpl _$$WishListItemDTOImplFromJson(
  Map<String, dynamic> json,
) => _$WishListItemDTOImpl(
  id: json['id'] as String,
  quantity: (json['quantity'] as num).toDouble(),
  product: ProductsItemsDTO.fromJson(json['product'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$WishListItemDTOImplToJson(
  _$WishListItemDTOImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'quantity': instance.quantity,
  'product': instance.product.toJson(),
};

_$WishListCreateResponseDTOImpl _$$WishListCreateResponseDTOImplFromJson(
  Map<String, dynamic> json,
) => _$WishListCreateResponseDTOImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  visibility: json['visibility'] as String,
  itemsCount: (json['itemsCount'] as num).toInt(),
);

Map<String, dynamic> _$$WishListCreateResponseDTOImplToJson(
  _$WishListCreateResponseDTOImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'visibility': instance.visibility,
  'itemsCount': instance.itemsCount,
};
