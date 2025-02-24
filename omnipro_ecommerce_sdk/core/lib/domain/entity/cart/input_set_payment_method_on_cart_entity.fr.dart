import 'dart:convert';

import 'package:core/utils/extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_set_payment_method_on_cart_entity.fr.freezed.dart';
part 'input_set_payment_method_on_cart_entity.fr.g.dart';

@freezed
class InputSetPaymentMethodOnCartEntity with _$InputSetPaymentMethodOnCartEntity {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory  InputSetPaymentMethodOnCartEntity({
    @JsonKey(name: 'cart_id') required String cartId,
    @JsonKey(name: 'payment_method') required PaymentMethod paymentMethod,
  }) = _InputSetPaymentMethodOnCartEntity;

  factory InputSetPaymentMethodOnCartEntity.fromJson(Map<String, dynamic> json) => _$InputSetPaymentMethodOnCartEntityFromJson(json);
}

extension ToMutation on InputSetPaymentMethodOnCartEntity {
  String toParamMutation() => toParamMutationHelper(jsonEncode(toJson()));
}

@freezed
class PaymentMethod with _$PaymentMethod {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory PaymentMethod({
    required String code,
    @JsonKey(name: 'cyber_source_flex') CyberSourceFlex? cyberSourceFlex,
  }) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) => _$PaymentMethodFromJson(json);
}

@freezed
class CyberSourceFlex with _$CyberSourceFlex {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory CyberSourceFlex({
    @JsonKey(name: 'transient_token') String? transientToken,
    @JsonKey(name: 'capture_context') String? captureContext,
    @JsonKey(name: 'is_enabled_payment_token') bool? isEnabledPaymentToken,
    @JsonKey(name: 'vault_payment_hash') String? vaultPaymentHash,
    @JsonKey(name: 'credit_card_details') CreditCardDetails? creditCardDetails,
  }) = _CyberSourceFlex;

  factory CyberSourceFlex.fromJson(Map<String, dynamic> json) => _$CyberSourceFlexFromJson(json);
}

@freezed
class CreditCardDetails with _$CreditCardDetails {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory CreditCardDetails({
    @JsonKey(name: 'cc_type') required String ccType,
    @JsonKey(name: 'cc_exp_year') required String ccExpYear,
    @JsonKey(name: 'cc_exp_month') required String ccExpMonth,
    @JsonKey(name: 'cc_last_4') required String ccLast4,
  }) = _CreditCardDetails;

  factory CreditCardDetails.fromJson(Map<String, dynamic> json) => _$CreditCardDetailsFromJson(json);
}
