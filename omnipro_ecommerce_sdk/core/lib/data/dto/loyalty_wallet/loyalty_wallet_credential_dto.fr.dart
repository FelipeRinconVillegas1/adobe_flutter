import 'package:freezed_annotation/freezed_annotation.dart';

part 'loyalty_wallet_credential_dto.fr.freezed.dart';
part 'loyalty_wallet_credential_dto.fr.g.dart';

@freezed
class LoyaltyWalletCredentialDTO with _$LoyaltyWalletCredentialDTO {
  const factory LoyaltyWalletCredentialDTO({
    @JsonKey(name: 'card_number') required String cardNumber,
    @JsonKey(name: 'card_birth_date') required String cardBirthDate,
    @JsonKey(name: 'customer_email') required String customerEmail,
  }) = _LoyaltyWalletCredentialDTO;

  factory LoyaltyWalletCredentialDTO.fromJson(Map<String, dynamic> json) => _$LoyaltyWalletCredentialDTOFromJson(json);
}
