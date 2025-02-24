// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_wallet_transaction_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoyaltyWalletTransactionDTOImpl _$$LoyaltyWalletTransactionDTOImplFromJson(
  Map<String, dynamic> json,
) => _$LoyaltyWalletTransactionDTOImpl(
  date: json['date'] as String,
  name: json['name'] as String,
  spent: json['spent'] as String,
  earned: json['earned'] as String,
);

Map<String, dynamic> _$$LoyaltyWalletTransactionDTOImplToJson(
  _$LoyaltyWalletTransactionDTOImpl instance,
) => <String, dynamic>{
  'date': instance.date,
  'name': instance.name,
  'spent': instance.spent,
  'earned': instance.earned,
};
