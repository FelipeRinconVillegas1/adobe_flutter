import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/extension.dart';

part 'input_loyalty_wallet_dto.fr.freezed.dart';

part 'input_loyalty_wallet_dto.fr.g.dart';

@freezed
abstract class InputLoyaltyWalletDTO with _$InputLoyaltyWalletDTO {
  const factory InputLoyaltyWalletDTO({
    @JsonKey(name: 'card_name') required String cardName,
    @JsonKey(name: 'card_last_name') required String cardLastName,
    @JsonKey(name: 'card_birth_date') required String cardBirthDate,
    @JsonKey(name: 'card_email') required String cardEmail,
  }) = _InputLoyaltyWalletDTO;

  factory InputLoyaltyWalletDTO.fromJson(Map<String, dynamic> json) => _$InputLoyaltyWalletDTOFromJson(json);
}

extension ToMutation on InputLoyaltyWalletDTO {
  String toParamMutation() => toParamMutationHelper(jsonEncode(toJson()));
}
