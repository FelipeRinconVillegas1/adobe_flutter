// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_wallet_credential_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoyaltyWalletCredentialDTOImpl _$$LoyaltyWalletCredentialDTOImplFromJson(
  Map<String, dynamic> json,
) => _$LoyaltyWalletCredentialDTOImpl(
  cardNumber: json['card_number'] as String,
  cardBirthDate: json['card_birth_date'] as String,
  customerEmail: json['customer_email'] as String,
);

Map<String, dynamic> _$$LoyaltyWalletCredentialDTOImplToJson(
  _$LoyaltyWalletCredentialDTOImpl instance,
) => <String, dynamic>{
  'card_number': instance.cardNumber,
  'card_birth_date': instance.cardBirthDate,
  'customer_email': instance.customerEmail,
};
