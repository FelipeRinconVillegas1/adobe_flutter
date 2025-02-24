// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_tip_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendTipDTOImpl _$$SendTipDTOImplFromJson(Map<String, dynamic> json) =>
    _$SendTipDTOImpl(
      cartId: json['cart_id'] as String,
      tip: json['tip'] as String,
    );

Map<String, dynamic> _$$SendTipDTOImplToJson(_$SendTipDTOImpl instance) =>
    <String, dynamic>{'cart_id': instance.cartId, 'tip': instance.tip};

_$SendTipResponseDTOImpl _$$SendTipResponseDTOImplFromJson(
  Map<String, dynamic> json,
) => _$SendTipResponseDTOImpl(
  message: json['message'] as String,
  code: json['code'] as String,
  cartId: json['cart_id'] as String,
);

Map<String, dynamic> _$$SendTipResponseDTOImplToJson(
  _$SendTipResponseDTOImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'code': instance.code,
  'cart_id': instance.cartId,
};
