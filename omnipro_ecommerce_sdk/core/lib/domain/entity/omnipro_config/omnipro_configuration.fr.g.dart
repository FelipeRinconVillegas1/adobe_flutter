// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'omnipro_configuration.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OmniproConfigurationImpl _$$OmniproConfigurationImplFromJson(
  Map<String, dynamic> json,
) => _$OmniproConfigurationImpl(
  urlHostMagento: json['urlHostMagento'] as String,
  defaultCountryIso: json['defaultCountryIso'] as String,
  defaultCountryNameEn: json['defaultCountryNameEn'] as String,
  defaultCountryNameEs: json['defaultCountryNameEs'] as String,
  defaultCountryCode: json['defaultCountryCode'] as String,
  baseUrlRest: json['baseUrlRest'] as String? ?? '',
  headersMagentoGraphQL: (json['headersMagentoGraphQL']
          as Map<String, dynamic>?)
      ?.map((k, e) => MapEntry(k, e as String)),
  defaultLocaleCurrency: json['defaultLocaleCurrency'] as String? ?? 'en_US',
  defaultSymbolCurrency: json['defaultSymbolCurrency'] as String? ?? '\$',
);

Map<String, dynamic> _$$OmniproConfigurationImplToJson(
  _$OmniproConfigurationImpl instance,
) => <String, dynamic>{
  'urlHostMagento': instance.urlHostMagento,
  'defaultCountryIso': instance.defaultCountryIso,
  'defaultCountryNameEn': instance.defaultCountryNameEn,
  'defaultCountryNameEs': instance.defaultCountryNameEs,
  'defaultCountryCode': instance.defaultCountryCode,
  'baseUrlRest': instance.baseUrlRest,
  'headersMagentoGraphQL': instance.headersMagentoGraphQL,
  'defaultLocaleCurrency': instance.defaultLocaleCurrency,
  'defaultSymbolCurrency': instance.defaultSymbolCurrency,
};
