// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActiveOrderImpl _$$ActiveOrderImplFromJson(Map<String, dynamic> json) =>
    _$ActiveOrderImpl(
      orderId: (json['magentoOrderId'] as num).toInt(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$ActiveOrderImplToJson(_$ActiveOrderImpl instance) =>
    <String, dynamic>{
      'magentoOrderId': instance.orderId,
      'status': instance.status,
    };
