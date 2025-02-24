// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_payment_method_selected.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ObjectPaymentMethodSelectedImpl _$$ObjectPaymentMethodSelectedImplFromJson(
  Map<String, dynamic> json,
) => _$ObjectPaymentMethodSelectedImpl(
  type: $enumDecode(_$TypeObjectPaymentMethodEnumMap, json['type']),
  last4Digits: json['last4Digits'] as String,
  typeCard: $enumDecode(_$TypeCardEnumMap, json['typeCard']),
  isDefault: json['isDefault'] as bool,
  methodCode: json['methodCode'] as String,
  creditCardDetails: CreditCardDetails.fromJson(
    json['creditCardDetails'] as Map<String, dynamic>,
  ),
  expYear: json['expYear'] as String,
  expMonth: json['expMonth'] as String,
  card:
      json['card'] == null
          ? null
          : CacheCreditCard.fromJson(json['card'] as Map<String, dynamic>),
  hashCardTokenized: json['hashCardTokenized'] as String?,
);

Map<String, dynamic> _$$ObjectPaymentMethodSelectedImplToJson(
  _$ObjectPaymentMethodSelectedImpl instance,
) => <String, dynamic>{
  'type': _$TypeObjectPaymentMethodEnumMap[instance.type]!,
  'last4Digits': instance.last4Digits,
  'typeCard': _$TypeCardEnumMap[instance.typeCard]!,
  'isDefault': instance.isDefault,
  'methodCode': instance.methodCode,
  'creditCardDetails': instance.creditCardDetails.toJson(),
  'expYear': instance.expYear,
  'expMonth': instance.expMonth,
  if (instance.card?.toJson() case final value?) 'card': value,
  if (instance.hashCardTokenized case final value?) 'hashCardTokenized': value,
};

const _$TypeObjectPaymentMethodEnumMap = {
  TypeObjectPaymentMethod.payWithCardInCache: 'payWithCardInCache',
  TypeObjectPaymentMethod.payWithCardTokenized: 'payWithCardTokenized',
};

const _$TypeCardEnumMap = {
  TypeCard.visa: 'visa',
  TypeCard.mastercard: 'mastercard',
  TypeCard.americanExpress: 'americanExpress',
  TypeCard.discover: 'discover',
  TypeCard.dinersClub: 'dinersClub',
  TypeCard.jcb: 'jcb',
  TypeCard.maestroI: 'maestroI',
  TypeCard.maestroD: 'maestroD',
  TypeCard.enRoute: 'enRoute',
  TypeCard.unknown: 'unknown',
};
