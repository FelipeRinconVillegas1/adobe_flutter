// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_edited_entity.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersEditedEntityImpl _$$OrdersEditedEntityImplFromJson(
  Map<String, dynamic> json,
) => _$OrdersEditedEntityImpl(
  orders:
      (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderEditedEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$OrdersEditedEntityImplToJson(
  _$OrdersEditedEntityImpl instance,
) => <String, dynamic>{'orders': instance.orders};

_$OrderEditedEntityImpl _$$OrderEditedEntityImplFromJson(
  Map<String, dynamic> json,
) => _$OrderEditedEntityImpl(
  orderId: (json['orderId'] as num).toInt(),
  deletedProducts: OrderItemDeletedEditedEntity.fromJson(
    json['deletedProducts'] as Map<String, dynamic>,
  ),
  editedProducts: OrderItemEditedEntity.fromJson(
    json['editedProducts'] as Map<String, dynamic>,
  ),
  addedProducts: OrderItemAddedEntity.fromJson(
    json['addedProducts'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$OrderEditedEntityImplToJson(
  _$OrderEditedEntityImpl instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'deletedProducts': instance.deletedProducts,
  'editedProducts': instance.editedProducts,
  'addedProducts': instance.addedProducts,
};

_$OrderItemDeletedEditedEntityImpl _$$OrderItemDeletedEditedEntityImplFromJson(
  Map<String, dynamic> json,
) => _$OrderItemDeletedEditedEntityImpl(
  totalCount: (json['totalCount'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) => OrderItemModifiedEntity.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$$OrderItemDeletedEditedEntityImplToJson(
  _$OrderItemDeletedEditedEntityImpl instance,
) => <String, dynamic>{
  'totalCount': instance.totalCount,
  'items': instance.items,
};

_$OrderItemEditedEntityImpl _$$OrderItemEditedEntityImplFromJson(
  Map<String, dynamic> json,
) => _$OrderItemEditedEntityImpl(
  totalCount: (json['totalCount'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) => OrderItemModifiedEntity.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$$OrderItemEditedEntityImplToJson(
  _$OrderItemEditedEntityImpl instance,
) => <String, dynamic>{
  'totalCount': instance.totalCount,
  'items': instance.items,
};

_$OrderItemAddedEntityImpl _$$OrderItemAddedEntityImplFromJson(
  Map<String, dynamic> json,
) => _$OrderItemAddedEntityImpl(
  totalCount: (json['totalCount'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) => OrderItemModifiedEntity.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$$OrderItemAddedEntityImplToJson(
  _$OrderItemAddedEntityImpl instance,
) => <String, dynamic>{
  'totalCount': instance.totalCount,
  'items': instance.items,
};

_$OrderItemModifiedEntityImpl _$$OrderItemModifiedEntityImplFromJson(
  Map<String, dynamic> json,
) => _$OrderItemModifiedEntityImpl(
  productName: json['productName'] as String,
  productSku: json['productSku'] as String,
  productUrlKey: json['productUrlKey'] as String,
  productImage: json['productImage'] as String,
  salesUnitOfMeasure: json['salesUnitOfMeasure'] as String,
  productQty: (json['productQty'] as num).toDouble(),
  productSalePrice:
      json['productSalePrice'] == null
          ? null
          : Money.fromJson(json['productSalePrice'] as Map<String, dynamic>),
  productSaleRowTotal:
      json['productSaleRowTotal'] == null
          ? null
          : Money.fromJson(json['productSaleRowTotal'] as Map<String, dynamic>),
  productSaleTaxPrice:
      json['productSaleTaxPrice'] == null
          ? null
          : Money.fromJson(json['productSaleTaxPrice'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$OrderItemModifiedEntityImplToJson(
  _$OrderItemModifiedEntityImpl instance,
) => <String, dynamic>{
  'productName': instance.productName,
  'productSku': instance.productSku,
  'productUrlKey': instance.productUrlKey,
  'productImage': instance.productImage,
  'salesUnitOfMeasure': instance.salesUnitOfMeasure,
  'productQty': instance.productQty,
  'productSalePrice': instance.productSalePrice,
  'productSaleRowTotal': instance.productSaleRowTotal,
  'productSaleTaxPrice': instance.productSaleTaxPrice,
};
