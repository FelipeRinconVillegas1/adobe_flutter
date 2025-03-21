// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instaleap_availability_input.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InstaleapAvailabilityInputImpl _$$InstaleapAvailabilityInputImplFromJson(
  Map<String, dynamic> json,
) => _$InstaleapAvailabilityInputImpl(
  carrierCode: json['carrierCode'] as String,
  cartId: json['cartId'] as String,
  end: json['end'] as String,
  express: json['express'] as bool,
  fallback: json['fallback'] as bool,
  sourceCode: json['sourceCode'] as String,
  start: json['start'] as String,
);

Map<String, dynamic> _$$InstaleapAvailabilityInputImplToJson(
  _$InstaleapAvailabilityInputImpl instance,
) => <String, dynamic>{
  'carrierCode': instance.carrierCode,
  'cartId': instance.cartId,
  'end': instance.end,
  'express': instance.express,
  'fallback': instance.fallback,
  'sourceCode': instance.sourceCode,
  'start': instance.start,
};
