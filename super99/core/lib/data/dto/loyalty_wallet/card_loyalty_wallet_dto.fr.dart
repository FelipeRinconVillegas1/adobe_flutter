import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_loyalty_wallet_dto.fr.freezed.dart';
part 'card_loyalty_wallet_dto.fr.g.dart';

@freezed
abstract class CardLoyaltyWalletDTO with _$CardLoyaltyWalletDTO {
  const factory CardLoyaltyWalletDTO({
    required String card,
  }) = _CardLoyaltyWalletDTO;

  factory CardLoyaltyWalletDTO.fromJson(Map<String, dynamic> json) => _$CardLoyaltyWalletDTOFromJson(json);
}
