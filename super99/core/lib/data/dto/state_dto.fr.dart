import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_dto.fr.freezed.dart';

part 'state_dto.fr.g.dart';

@freezed
class StateDTO with _$StateDTO {
  const factory StateDTO({
    required int id,
    required String name,
    required String code,
  }) = _StateDTO;

  factory StateDTO.fromJson(Map<String, Object?> json) => _$StateDTOFromJson(json);
}
