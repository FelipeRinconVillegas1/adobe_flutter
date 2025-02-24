import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_config_dto.fr.freezed.dart';

part 'store_config_dto.fr.g.dart';

@freezed
class StoreConfigDTO with _$StoreConfigDTO {
  const factory StoreConfigDTO({
    @JsonKey(name: 'cybersource_allowed_cc_types') required String cybersourceAllowedCcTypes,
  }) = _StoreConfigDTO;

  factory StoreConfigDTO.fromJson(Map<String, Object?> json) => _$StoreConfigDTOFromJson(json);
}
