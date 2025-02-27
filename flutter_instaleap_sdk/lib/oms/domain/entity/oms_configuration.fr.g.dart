// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oms_configuration.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OmsConfigurationImpl _$$OmsConfigurationImplFromJson(
  Map<String, dynamic> json,
) => _$OmsConfigurationImpl(
  apiCredential: ApiCredential.fromJson(
    json['apiCredential'] as Map<String, dynamic>,
  ),
  urlsOms: UrlsOms.fromJson(json['urlsOms'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$OmsConfigurationImplToJson(
  _$OmsConfigurationImpl instance,
) => <String, dynamic>{
  'apiCredential': instance.apiCredential,
  'urlsOms': instance.urlsOms,
};
