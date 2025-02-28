import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_slot_response_dto.fr.freezed.dart';
part 'check_slot_response_dto.fr.g.dart';

@freezed
class CheckSlotResponseDTO with _$CheckSlotResponseDTO {
  const factory CheckSlotResponseDTO({@JsonKey(name: 'slot_valid') required bool slotValid}) = _CheckSlotResponseDTO;

  factory CheckSlotResponseDTO.fromJson(Map<String, dynamic> json) => _$CheckSlotResponseDTOFromJson(json);
}
