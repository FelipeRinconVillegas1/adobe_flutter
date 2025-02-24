import 'package:freezed_annotation/freezed_annotation.dart';

part 'balance_loyalty_wallet_dto.fr.freezed.dart';
part 'balance_loyalty_wallet_dto.fr.g.dart';

@freezed
class BalanceLoyaltyWalletDTO with _$BalanceLoyaltyWalletDTO {
  const factory BalanceLoyaltyWalletDTO({
    required String balance,
  }) = _BalanceLoyaltyWalletDTO;

  factory BalanceLoyaltyWalletDTO.fromJson(Map<String, dynamic> json) => _$BalanceLoyaltyWalletDTOFromJson(json);
}
