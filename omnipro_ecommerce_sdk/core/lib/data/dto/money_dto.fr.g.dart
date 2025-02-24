// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoneyDTOImpl _$$MoneyDTOImplFromJson(Map<String, dynamic> json) =>
    _$MoneyDTOImpl(
      value: (json['value'] as num).toDouble(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$MoneyDTOImplToJson(_$MoneyDTOImpl instance) =>
    <String, dynamic>{'value': instance.value, 'currency': instance.currency};
