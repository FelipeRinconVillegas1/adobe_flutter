// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_credential_response_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCredentialResponseDTOImpl _$$UserCredentialResponseDTOImplFromJson(
  Map<String, dynamic> json,
) => _$UserCredentialResponseDTOImpl(
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  email: json['email'] as String?,
  sub: json['sub'] as String?,
  nonce: json['nonce'] as String?,
  authCode: json['authCode'] as String?,
  token: json['token'] as String,
  provider: $enumDecode(_$ProviderAuthenticationEnumMap, json['provider']),
);

Map<String, dynamic> _$$UserCredentialResponseDTOImplToJson(
  _$UserCredentialResponseDTOImpl instance,
) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'email': instance.email,
  'sub': instance.sub,
  'nonce': instance.nonce,
  'authCode': instance.authCode,
  'token': instance.token,
  'provider': _$ProviderAuthenticationEnumMap[instance.provider]!,
};

const _$ProviderAuthenticationEnumMap = {
  ProviderAuthentication.apple: 'apple',
  ProviderAuthentication.facebook: 'facebook',
  ProviderAuthentication.google: 'google',
};
