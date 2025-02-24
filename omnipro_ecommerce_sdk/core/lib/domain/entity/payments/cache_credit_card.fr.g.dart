// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache_credit_card.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CacheCreditCardImpl _$$CacheCreditCardImplFromJson(
  Map<String, dynamic> json,
) => _$CacheCreditCardImpl(
  cacheCipherCreditCardDetails: CacheCipherCreditCardDetails.fromJson(
    json['cacheCipherCreditCardDetails'] as Map<String, dynamic>,
  ),
  email: json['email'] as String,
  saveCard: json['saveCard'] as bool,
  methodCode: json['methodCode'] as String,
  isSelected: json['isSelected'] as bool,
);

Map<String, dynamic> _$$CacheCreditCardImplToJson(
  _$CacheCreditCardImpl instance,
) => <String, dynamic>{
  'cacheCipherCreditCardDetails':
      instance.cacheCipherCreditCardDetails.toJson(),
  'email': instance.email,
  'saveCard': instance.saveCard,
  'methodCode': instance.methodCode,
  'isSelected': instance.isSelected,
};

_$CacheCipherCreditCardDetailsImpl _$$CacheCipherCreditCardDetailsImplFromJson(
  Map<String, dynamic> json,
) => _$CacheCipherCreditCardDetailsImpl(
  expYear: json['expYear'] as String,
  expMonth: json['expMonth'] as String,
  securityCode: json['securityCode'] as String,
  number: json['number'] as String,
  last4Number: json['last4Number'] as String,
  typeCode: json['typeCode'] as String,
);

Map<String, dynamic> _$$CacheCipherCreditCardDetailsImplToJson(
  _$CacheCipherCreditCardDetailsImpl instance,
) => <String, dynamic>{
  'expYear': instance.expYear,
  'expMonth': instance.expMonth,
  'securityCode': instance.securityCode,
  'number': instance.number,
  'last4Number': instance.last4Number,
  'typeCode': instance.typeCode,
};
