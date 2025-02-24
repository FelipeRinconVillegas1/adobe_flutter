// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_tip_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryTipDTOImpl _$$DeliveryTipDTOImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryTipDTOImpl(
      labelTip: json['labelTip'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$DeliveryTipDTOImplToJson(
  _$DeliveryTipDTOImpl instance,
) => <String, dynamic>{'labelTip': instance.labelTip, 'value': instance.value};
