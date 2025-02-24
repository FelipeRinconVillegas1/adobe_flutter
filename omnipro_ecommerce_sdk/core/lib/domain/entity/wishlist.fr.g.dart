// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishListImpl _$$WishListImplFromJson(Map<String, dynamic> json) =>
    _$WishListImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      visibility: json['visibility'] as String,
      itemsCount: (json['items_count'] as num?)?.toInt() ?? 0,
      items: WishListItemV2.fromJson(json['items_v2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WishListImplToJson(_$WishListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'visibility': instance.visibility,
      'items_count': instance.itemsCount,
      'items_v2': instance.items.toJson(),
    };

_$WishListItemV2Impl _$$WishListItemV2ImplFromJson(Map<String, dynamic> json) =>
    _$WishListItemV2Impl(
      items:
          (json['items'] as List<dynamic>)
              .map((e) => WishListItem.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$WishListItemV2ImplToJson(
  _$WishListItemV2Impl instance,
) => <String, dynamic>{'items': instance.items.map((e) => e.toJson()).toList()};

_$WishListItemImpl _$$WishListItemImplFromJson(Map<String, dynamic> json) =>
    _$WishListItemImpl(
      id: json['id'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      product: ProductsItems.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WishListItemImplToJson(_$WishListItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'product': instance.product,
    };

_$WishListCreateResponseImpl _$$WishListCreateResponseImplFromJson(
  Map<String, dynamic> json,
) => _$WishListCreateResponseImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  visibility: json['visibility'] as String,
  itemsCount: (json['itemsCount'] as num).toInt(),
);

Map<String, dynamic> _$$WishListCreateResponseImplToJson(
  _$WishListCreateResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'visibility': instance.visibility,
  'itemsCount': instance.itemsCount,
};
