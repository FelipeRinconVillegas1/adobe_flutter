// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationCustomerImpl _$$NotificationCustomerImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationCustomerImpl(
  email: json['email'] as String,
  fcmToken: json['fcmToken'] as String?,
  fcmTokenUpdatedAt: json['fcmTokenUpdatedAt'] as String?,
  platform: json['platform'] as String?,
  notificationsEnabled: json['notificationsEnabled'] as bool?,
);

Map<String, dynamic> _$$NotificationCustomerImplToJson(
  _$NotificationCustomerImpl instance,
) => <String, dynamic>{
  'email': instance.email,
  'fcmToken': instance.fcmToken,
  'fcmTokenUpdatedAt': instance.fcmTokenUpdatedAt,
  'platform': instance.platform,
  'notificationsEnabled': instance.notificationsEnabled,
};
