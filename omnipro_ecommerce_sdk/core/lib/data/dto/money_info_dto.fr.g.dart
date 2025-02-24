// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money_info_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoneyInfoDTOImpl _$$MoneyInfoDTOImplFromJson(Map<String, dynamic> json) =>
    _$MoneyInfoDTOImpl(
      label: json['label'] as String,
      moneyDTO: MoneyDTO.fromJson(json['amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MoneyInfoDTOImplToJson(_$MoneyInfoDTOImpl instance) =>
    <String, dynamic>{'label': instance.label, 'amount': instance.moneyDTO};
