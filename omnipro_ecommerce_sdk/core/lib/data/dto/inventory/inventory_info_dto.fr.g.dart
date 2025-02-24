// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_info_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryInfoDTOImpl _$$InventoryInfoDTOImplFromJson(
  Map<String, dynamic> json,
) => _$InventoryInfoDTOImpl(
  responseCode: json['response_code'] as String,
  responseMessage: json['response_message'] as String,
  store: json['store'] as String,
  products:
      (json['products'] as List<dynamic>)
          .map(
            (e) => ItemInventoryDetailDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  fulfillment: json['fulfillment'] as bool,
  startTime: json['startTime'] as String,
  endTime: json['endTime'] as String,
  totalProducts: (json['total_products'] as num).toInt(),
);

Map<String, dynamic> _$$InventoryInfoDTOImplToJson(
  _$InventoryInfoDTOImpl instance,
) => <String, dynamic>{
  'response_code': instance.responseCode,
  'response_message': instance.responseMessage,
  'store': instance.store,
  'products': instance.products,
  'fulfillment': instance.fulfillment,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
  'total_products': instance.totalProducts,
};
