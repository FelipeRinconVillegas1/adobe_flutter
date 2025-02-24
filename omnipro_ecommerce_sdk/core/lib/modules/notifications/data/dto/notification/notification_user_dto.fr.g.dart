// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_user_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationUserDTOImpl _$$NotificationUserDTOImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationUserDTOImpl(
  id: json['id'] as String,
  deviceToken: json['deviceToken'] as String,
  platform: json['platform'] as String,
  phone: json['phone'] as String?,
  dialCode: json['dialCode'] as String?,
  gender: json['gender'] as String?,
  birthDate: json['birthDate'] as String?,
  city: json['city'] as String?,
  zipCode: json['zipCode'] as String?,
  enableNotifications: json['enableNotifications'] as bool?,
  enableSoundNotifications: json['enableSoundNotifications'] as bool?,
  mdaCardNumber: json['mda'] as String?,
);

Map<String, dynamic> _$$NotificationUserDTOImplToJson(
  _$NotificationUserDTOImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'deviceToken': instance.deviceToken,
  'platform': instance.platform,
  'phone': instance.phone,
  'dialCode': instance.dialCode,
  'gender': instance.gender,
  'birthDate': instance.birthDate,
  'city': instance.city,
  'zipCode': instance.zipCode,
  'enableNotifications': instance.enableNotifications,
  'enableSoundNotifications': instance.enableSoundNotifications,
  'mda': instance.mdaCardNumber,
};
