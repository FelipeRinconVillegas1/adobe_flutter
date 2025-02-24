import 'package:core/domain/entity/cart/input_set_payment_method_on_cart_entity.fr.dart';
import 'package:core/utils/credit_card_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'cache_credit_card.fr.dart';

part 'object_payment_method_selected.fr.freezed.dart';
part 'object_payment_method_selected.fr.g.dart';

@freezed
class ObjectPaymentMethodSelected with _$ObjectPaymentMethodSelected {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory ObjectPaymentMethodSelected({
    required TypeObjectPaymentMethod type,
    required String last4Digits,
    required TypeCard typeCard,
    required bool isDefault,
    required String methodCode,
    required CreditCardDetails creditCardDetails,
    required String expYear,
    required String expMonth,
    CacheCreditCard? card,
    String? hashCardTokenized,
  }) = _ObjectPaymentMethodSelected;

  factory ObjectPaymentMethodSelected.fromJson(Map<String, dynamic> json) =>
      _$ObjectPaymentMethodSelectedFromJson(json);
}

enum TypeObjectPaymentMethod {
  payWithCardInCache,
  payWithCardTokenized,
}
