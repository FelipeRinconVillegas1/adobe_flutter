// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associated_wallet_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssociatedWalletDTOImpl _$$AssociatedWalletDTOImplFromJson(
  Map<String, dynamic> json,
) => _$AssociatedWalletDTOImpl(
  cardNumber: json['card_number'] as String,
  cardLastName: json['card_last_name'] as String,
  cardFirstName: json['card_first_name'] as String,
  cardBirthDate: json['card_birth_date'] as String,
  customerEmail: json['customer_email'] as String,
);

Map<String, dynamic> _$$AssociatedWalletDTOImplToJson(
  _$AssociatedWalletDTOImpl instance,
) => <String, dynamic>{
  'card_number': instance.cardNumber,
  'card_last_name': instance.cardLastName,
  'card_first_name': instance.cardFirstName,
  'card_birth_date': instance.cardBirthDate,
  'customer_email': instance.customerEmail,
};
