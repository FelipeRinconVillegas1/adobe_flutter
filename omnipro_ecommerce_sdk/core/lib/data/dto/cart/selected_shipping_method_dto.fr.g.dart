// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_shipping_method_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SelectedShippingMethodDTOImpl _$$SelectedShippingMethodDTOImplFromJson(
  Map<String, dynamic> json,
) => _$SelectedShippingMethodDTOImpl(
  carrierCode: json['carrier_code'] as String,
  carrierTitle: json['carrier_title'] as String,
  methodCode: json['method_code'] as String,
  methodTitle: json['method_title'] as String,
  amount: MoneyDTO.fromJson(json['amount'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$SelectedShippingMethodDTOImplToJson(
  _$SelectedShippingMethodDTOImpl instance,
) => <String, dynamic>{
  'carrier_code': instance.carrierCode,
  'carrier_title': instance.carrierTitle,
  'method_code': instance.methodCode,
  'method_title': instance.methodTitle,
  'amount': instance.amount,
};
