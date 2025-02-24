// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_edited_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersEditedDTOImpl _$$OrdersEditedDTOImplFromJson(
  Map<String, dynamic> json,
) => _$OrdersEditedDTOImpl(
  orders:
      (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderEditedDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$OrdersEditedDTOImplToJson(
  _$OrdersEditedDTOImpl instance,
) => <String, dynamic>{'orders': instance.orders};

_$OrderEditedDTOImpl _$$OrderEditedDTOImplFromJson(Map<String, dynamic> json) =>
    _$OrderEditedDTOImpl(
      orderId: (json['order_id'] as num).toInt(),
      deletedProducts: OrderItemDeletedEditedDTO.fromJson(
        json['deleted_products'] as Map<String, dynamic>,
      ),
      editedProducts: OrderItemEditedDTO.fromJson(
        json['edited_products'] as Map<String, dynamic>,
      ),
      addedProducts: OrderItemAddedDTO.fromJson(
        json['added_products'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$OrderEditedDTOImplToJson(
  _$OrderEditedDTOImpl instance,
) => <String, dynamic>{
  'order_id': instance.orderId,
  'deleted_products': instance.deletedProducts,
  'edited_products': instance.editedProducts,
  'added_products': instance.addedProducts,
};

_$OrderItemDeletedEditedDTOImpl _$$OrderItemDeletedEditedDTOImplFromJson(
  Map<String, dynamic> json,
) => _$OrderItemDeletedEditedDTOImpl(
  totalCount: (json['total_count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItemModifiedDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$OrderItemDeletedEditedDTOImplToJson(
  _$OrderItemDeletedEditedDTOImpl instance,
) => <String, dynamic>{
  'total_count': instance.totalCount,
  'items': instance.items,
};

_$OrderItemEditedDTOImpl _$$OrderItemEditedDTOImplFromJson(
  Map<String, dynamic> json,
) => _$OrderItemEditedDTOImpl(
  totalCount: (json['total_count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItemModifiedDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$OrderItemEditedDTOImplToJson(
  _$OrderItemEditedDTOImpl instance,
) => <String, dynamic>{
  'total_count': instance.totalCount,
  'items': instance.items,
};

_$OrderItemAddedDTOImpl _$$OrderItemAddedDTOImplFromJson(
  Map<String, dynamic> json,
) => _$OrderItemAddedDTOImpl(
  totalCount: (json['total_count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItemModifiedDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$OrderItemAddedDTOImplToJson(
  _$OrderItemAddedDTOImpl instance,
) => <String, dynamic>{
  'total_count': instance.totalCount,
  'items': instance.items,
};

_$OrderItemModifiedDTOImpl _$$OrderItemModifiedDTOImplFromJson(
  Map<String, dynamic> json,
) => _$OrderItemModifiedDTOImpl(
  productName: json['product_name'] as String,
  productSku: json['product_sku'] as String,
  productUrlKey: json['product_url_key'] as String,
  productImage: json['product_image'] as String,
  salesUnitOfMeasure: json['sales_unit_of_measure'] as String?,
  productQty: (json['product_qty'] as num).toDouble(),
  productSalePrice:
      json['product_sale_price'] == null
          ? null
          : MoneyDTO.fromJson(
            json['product_sale_price'] as Map<String, dynamic>,
          ),
  productSaleRowTotal:
      json['product_sale_row_total'] == null
          ? null
          : MoneyDTO.fromJson(
            json['product_sale_row_total'] as Map<String, dynamic>,
          ),
  productSaleTaxPrice:
      json['product_sale_tax_price'] == null
          ? null
          : MoneyDTO.fromJson(
            json['product_sale_tax_price'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$OrderItemModifiedDTOImplToJson(
  _$OrderItemModifiedDTOImpl instance,
) => <String, dynamic>{
  'product_name': instance.productName,
  'product_sku': instance.productSku,
  'product_url_key': instance.productUrlKey,
  'product_image': instance.productImage,
  'sales_unit_of_measure': instance.salesUnitOfMeasure,
  'product_qty': instance.productQty,
  'product_sale_price': instance.productSalePrice,
  'product_sale_row_total': instance.productSaleRowTotal,
  'product_sale_tax_price': instance.productSaleTaxPrice,
};
