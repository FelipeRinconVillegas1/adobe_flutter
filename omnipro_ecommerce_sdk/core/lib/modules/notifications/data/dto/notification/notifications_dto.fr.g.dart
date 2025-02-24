// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationsDTOImpl _$$NotificationsDTOImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationsDTOImpl(
  notifications:
      (json['notifications'] as List<dynamic>)
          .map((e) => NotificationDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$NotificationsDTOImplToJson(
  _$NotificationsDTOImpl instance,
) => <String, dynamic>{'notifications': instance.notifications};
