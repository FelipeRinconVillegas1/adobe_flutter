// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_inventory_detail_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemInventoryDetailDTOImpl _$$ItemInventoryDetailDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ItemInventoryDetailDTOImpl(
  sku: json['sku'] as String,
  qty: (json['qty'] as num).toInt(),
);

Map<String, dynamic> _$$ItemInventoryDetailDTOImplToJson(
  _$ItemInventoryDetailDTOImpl instance,
) => <String, dynamic>{'sku': instance.sku, 'qty': instance.qty};
