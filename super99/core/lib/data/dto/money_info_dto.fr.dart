import 'package:freezed_annotation/freezed_annotation.dart';

import 'money_dto.fr.dart';

part 'money_info_dto.fr.freezed.dart';
part 'money_info_dto.fr.g.dart';

@freezed
class MoneyInfoDTO with _$MoneyInfoDTO {
  const factory MoneyInfoDTO({
    required String label,
    @JsonKey(name: 'amount') required MoneyDTO moneyDTO,
  }) = _MoneyInfoDTO;

  factory MoneyInfoDTO.fromJson(Map<String, Object?> json) => _$MoneyInfoDTOFromJson(json);
}
