import 'package:freezed_annotation/freezed_annotation.dart';

part 'cache_credit_card.fr.freezed.dart';
part 'cache_credit_card.fr.g.dart';

@freezed
class CacheCreditCard with _$CacheCreditCard {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory CacheCreditCard({
    required CacheCipherCreditCardDetails cacheCipherCreditCardDetails,
    required String email,
    required bool saveCard,
    required String methodCode,
    required bool isSelected,
  }) = _CacheCreditCard;

  factory CacheCreditCard.fromJson(Map<String, dynamic> json) => _$CacheCreditCardFromJson(json);
}

@freezed
class CacheCipherCreditCardDetails with _$CacheCipherCreditCardDetails {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory CacheCipherCreditCardDetails({
    required String expYear,
    required String expMonth,
    required String securityCode,
    required String number,
    required String last4Number,
    required String typeCode,
  }) = _CacheCipherCreditCardDetails;

  factory CacheCipherCreditCardDetails.fromJson(Map<String, dynamic> json) =>
      _$CacheCipherCreditCardDetailsFromJson(json);
}
