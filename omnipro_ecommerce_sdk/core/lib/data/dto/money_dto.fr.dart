import 'package:freezed_annotation/freezed_annotation.dart';
part 'money_dto.fr.freezed.dart';
part 'money_dto.fr.g.dart';

@freezed
class MoneyDTO with _$MoneyDTO {
  const factory MoneyDTO({
    required double value,
    required String currency,
  }) = _MoneyDTO;

  factory MoneyDTO.fromJson(Map<String, Object?> json) => _$MoneyDTOFromJson(json);
}
