// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_appointment_information_on_cart_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetAppointmentOnCartDTOImpl _$$SetAppointmentOnCartDTOImplFromJson(
  Map<String, dynamic> json,
) => _$SetAppointmentOnCartDTOImpl(
  cartId: json['cart_id'] as String,
  omsAppointmentId: json['oms_appointment_id'] as String,
  omsShippingDate: json['oms_shipping_date'] as String,
  omsShippingTime: json['oms_shipping_time'] as String,
  omsDeliveryPrice: (json['oms_delivery_price'] as num).toDouble(),
);

Map<String, dynamic> _$$SetAppointmentOnCartDTOImplToJson(
  _$SetAppointmentOnCartDTOImpl instance,
) => <String, dynamic>{
  'cart_id': instance.cartId,
  'oms_appointment_id': instance.omsAppointmentId,
  'oms_shipping_date': instance.omsShippingDate,
  'oms_shipping_time': instance.omsShippingTime,
  'oms_delivery_price': instance.omsDeliveryPrice,
};
