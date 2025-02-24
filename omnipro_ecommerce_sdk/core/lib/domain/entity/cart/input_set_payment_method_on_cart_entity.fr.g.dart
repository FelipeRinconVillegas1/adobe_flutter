// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_set_payment_method_on_cart_entity.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputSetPaymentMethodOnCartEntityImpl
_$$InputSetPaymentMethodOnCartEntityImplFromJson(Map<String, dynamic> json) =>
    _$InputSetPaymentMethodOnCartEntityImpl(
      cartId: json['cart_id'] as String,
      paymentMethod: PaymentMethod.fromJson(
        json['payment_method'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$InputSetPaymentMethodOnCartEntityImplToJson(
  _$InputSetPaymentMethodOnCartEntityImpl instance,
) => <String, dynamic>{
  'cart_id': instance.cartId,
  'payment_method': instance.paymentMethod.toJson(),
};

_$PaymentMethodImpl _$$PaymentMethodImplFromJson(Map<String, dynamic> json) =>
    _$PaymentMethodImpl(
      code: json['code'] as String,
      cyberSourceFlex:
          json['cyber_source_flex'] == null
              ? null
              : CyberSourceFlex.fromJson(
                json['cyber_source_flex'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$$PaymentMethodImplToJson(_$PaymentMethodImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      if (instance.cyberSourceFlex?.toJson() case final value?)
        'cyber_source_flex': value,
    };

_$CyberSourceFlexImpl _$$CyberSourceFlexImplFromJson(
  Map<String, dynamic> json,
) => _$CyberSourceFlexImpl(
  transientToken: json['transient_token'] as String?,
  captureContext: json['capture_context'] as String?,
  isEnabledPaymentToken: json['is_enabled_payment_token'] as bool?,
  vaultPaymentHash: json['vault_payment_hash'] as String?,
  creditCardDetails:
      json['credit_card_details'] == null
          ? null
          : CreditCardDetails.fromJson(
            json['credit_card_details'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$CyberSourceFlexImplToJson(
  _$CyberSourceFlexImpl instance,
) => <String, dynamic>{
  if (instance.transientToken case final value?) 'transient_token': value,
  if (instance.captureContext case final value?) 'capture_context': value,
  if (instance.isEnabledPaymentToken case final value?)
    'is_enabled_payment_token': value,
  if (instance.vaultPaymentHash case final value?) 'vault_payment_hash': value,
  if (instance.creditCardDetails?.toJson() case final value?)
    'credit_card_details': value,
};

_$CreditCardDetailsImpl _$$CreditCardDetailsImplFromJson(
  Map<String, dynamic> json,
) => _$CreditCardDetailsImpl(
  ccType: json['cc_type'] as String,
  ccExpYear: json['cc_exp_year'] as String,
  ccExpMonth: json['cc_exp_month'] as String,
  ccLast4: json['cc_last_4'] as String,
);

Map<String, dynamic> _$$CreditCardDetailsImplToJson(
  _$CreditCardDetailsImpl instance,
) => <String, dynamic>{
  'cc_type': instance.ccType,
  'cc_exp_year': instance.ccExpYear,
  'cc_exp_month': instance.ccExpMonth,
  'cc_last_4': instance.ccLast4,
};
