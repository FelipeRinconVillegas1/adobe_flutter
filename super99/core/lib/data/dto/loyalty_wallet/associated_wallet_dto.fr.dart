import 'dart:convert';

import 'package:core/utils/extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'associated_wallet_dto.fr.freezed.dart';

part 'associated_wallet_dto.fr.g.dart';

@freezed
abstract class AssociatedWalletDTO with _$AssociatedWalletDTO {
  const factory AssociatedWalletDTO({
    @JsonKey(name: 'card_number') required String cardNumber,
    @JsonKey(name: 'card_last_name') required String cardLastName,
    @JsonKey(name: 'card_first_name') required String cardFirstName,
    @JsonKey(name: 'card_birth_date') required String cardBirthDate,
    @JsonKey(name: 'customer_email') required String customerEmail,
  }) = _AssociatedWalletDTO;

  factory AssociatedWalletDTO.fromJson(Map<String, dynamic> json) => _$AssociatedWalletDTOFromJson(json);
}

extension ToMutation on AssociatedWalletDTO {
  String toParamMutation() => toParamMutationHelper(jsonEncode(toJson()));
}
