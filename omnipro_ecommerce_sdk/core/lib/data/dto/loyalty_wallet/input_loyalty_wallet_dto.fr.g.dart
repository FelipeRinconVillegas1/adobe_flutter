// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_loyalty_wallet_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputLoyaltyWalletDTOImpl _$$InputLoyaltyWalletDTOImplFromJson(
  Map<String, dynamic> json,
) => _$InputLoyaltyWalletDTOImpl(
  cardName: json['card_name'] as String,
  cardLastName: json['card_last_name'] as String,
  cardBirthDate: json['card_birth_date'] as String,
  cardEmail: json['card_email'] as String,
);

Map<String, dynamic> _$$InputLoyaltyWalletDTOImplToJson(
  _$InputLoyaltyWalletDTOImpl instance,
) => <String, dynamic>{
  'card_name': instance.cardName,
  'card_last_name': instance.cardLastName,
  'card_birth_date': instance.cardBirthDate,
  'card_email': instance.cardEmail,
};
