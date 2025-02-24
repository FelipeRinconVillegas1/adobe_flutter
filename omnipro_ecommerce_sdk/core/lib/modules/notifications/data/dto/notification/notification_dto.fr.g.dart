// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationDTOImpl _$$NotificationDTOImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationDTOImpl(
  id: json['id'] as String,
  userId: json['userId'] as String,
  title: json['title'] as String,
  message: json['message'] as String,
  createdAt: json['createdAt'] as String,
  isUsed: (json['isUsed'] as num?)?.toInt() ?? 0,
  notificationType: json['notificationType'] as String? ?? '',
  mda: json['mda'] as String? ?? '',
  balance: json['balance'] as String? ?? '',
);

Map<String, dynamic> _$$NotificationDTOImplToJson(
  _$NotificationDTOImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'title': instance.title,
  'message': instance.message,
  'createdAt': instance.createdAt,
  'isUsed': instance.isUsed,
  'notificationType': instance.notificationType,
  'mda': instance.mda,
  'balance': instance.balance,
};
