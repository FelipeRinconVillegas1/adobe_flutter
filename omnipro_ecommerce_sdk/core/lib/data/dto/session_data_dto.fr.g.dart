// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_data_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionDataDTOImpl _$$SessionDataDTOImplFromJson(Map<String, dynamic> json) =>
    _$SessionDataDTOImpl(
      token: json['token'] as String,
      refreshToken: json['refreshToken'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      userCredentialResponseDTO:
          json['userCredentialResponseDTO'] == null
              ? null
              : UserCredentialResponseDTO.fromJson(
                json['userCredentialResponseDTO'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$$SessionDataDTOImplToJson(
  _$SessionDataDTOImpl instance,
) => <String, dynamic>{
  'token': instance.token,
  'refreshToken': instance.refreshToken,
  'email': instance.email,
  'password': instance.password,
  'userCredentialResponseDTO': instance.userCredentialResponseDTO,
};
