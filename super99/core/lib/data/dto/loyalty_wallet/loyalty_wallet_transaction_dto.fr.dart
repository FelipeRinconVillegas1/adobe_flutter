import 'package:freezed_annotation/freezed_annotation.dart';

part 'loyalty_wallet_transaction_dto.fr.freezed.dart';

part 'loyalty_wallet_transaction_dto.fr.g.dart';

@freezed
class LoyaltyWalletTransactionDTO with _$LoyaltyWalletTransactionDTO {
  const factory LoyaltyWalletTransactionDTO({
    required String date,
    required String name,
    required String spent,
    required String earned,
  }) = _LoyaltyWalletTransactionDTO;

  factory LoyaltyWalletTransactionDTO.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyWalletTransactionDTOFromJson(json);
}
