import 'package:freezed_annotation/freezed_annotation.dart';

part 'localization_item_dto.fr.freezed.dart';

part 'localization_item_dto.fr.g.dart';

@freezed
class LocalizationItemDTO with _$LocalizationItemDTO {
  const factory LocalizationItemDTO({
    required String code,
    required String label,
  }) = _LocalizationItemDTO;

  factory LocalizationItemDTO.fromJson(Map<String, Object?> json) => _$LocalizationItemDTOFromJson(json);
}
