// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_stock_product.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputStockProductImpl _$$InputStockProductImplFromJson(
  Map<String, dynamic> json,
) => _$InputStockProductImpl(
  sourceCode: json['sourceCode'] as String,
  productName: json['productName'] as String,
  productUnit: json['productUnit'] as String,
  barcodes:
      (json['barcodes'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$$InputStockProductImplToJson(
  _$InputStockProductImpl instance,
) => <String, dynamic>{
  'sourceCode': instance.sourceCode,
  'productName': instance.productName,
  'productUnit': instance.productUnit,
  'barcodes': instance.barcodes,
};
