// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_who_pickup_in_store_entity.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserWhoPickupInStoreEntityImpl _$$UserWhoPickupInStoreEntityImplFromJson(
  Map<String, dynamic> json,
) => _$UserWhoPickupInStoreEntityImpl(
  fullName: json['full_name'] as String? ?? "",
  telephone: json['telephone'] as String? ?? "",
  identification: json['identification'] as String? ?? "",
  whoPickUp: $enumDecode(_$WhoPickUpEnumMap, json['who_pick_up']),
);

Map<String, dynamic> _$$UserWhoPickupInStoreEntityImplToJson(
  _$UserWhoPickupInStoreEntityImpl instance,
) => <String, dynamic>{
  'full_name': instance.fullName,
  'telephone': instance.telephone,
  'identification': instance.identification,
  'who_pick_up': _$WhoPickUpEnumMap[instance.whoPickUp]!,
};

const _$WhoPickUpEnumMap = {
  WhoPickUp.me: 'me',
  WhoPickUp.someoneElse: 'someoneElse',
};
