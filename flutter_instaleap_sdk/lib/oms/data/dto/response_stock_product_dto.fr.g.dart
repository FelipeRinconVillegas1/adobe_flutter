// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_stock_product_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseStockProductDTOImpl _$$ResponseStockProductDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ResponseStockProductDTOImpl(
  quantity: (json['quantity'] as num).toDouble(),
  unit: json['unit'] as String,
);

Map<String, dynamic> _$$ResponseStockProductDTOImplToJson(
  _$ResponseStockProductDTOImpl instance,
) => <String, dynamic>{'quantity': instance.quantity, 'unit': instance.unit};
