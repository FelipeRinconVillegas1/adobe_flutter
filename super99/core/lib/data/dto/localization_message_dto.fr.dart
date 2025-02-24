import 'package:freezed_annotation/freezed_annotation.dart';

part 'localization_message_dto.fr.freezed.dart';

part 'localization_message_dto.fr.g.dart';

@freezed
class LocalizationMessageDTO with _$LocalizationMessageDTO {
  const factory LocalizationMessageDTO({
    @JsonKey(name: 'localizations') required List<MessageWithLocalizationDTO> messagesWithLocalization,
  }) = _LocalizationMessageDTO;

  factory LocalizationMessageDTO.fromJson(Map<String, Object?> json) => _$LocalizationMessageDTOFromJson(json);
}

@freezed
class MessageWithLocalizationDTO with _$MessageWithLocalizationDTO {
  const factory MessageWithLocalizationDTO({
    required String code,
    required String message,
  }) = _MessageWithLocalizationDTO;

  factory MessageWithLocalizationDTO.fromJson(Map<String, Object?> json) => _$MessageWithLocalizationDTOFromJson(json);
}
