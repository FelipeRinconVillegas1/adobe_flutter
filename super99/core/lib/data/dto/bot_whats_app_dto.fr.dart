import 'package:freezed_annotation/freezed_annotation.dart';

import 'localization_message_dto.fr.dart';

part 'bot_whats_app_dto.fr.freezed.dart';

part 'bot_whats_app_dto.fr.g.dart';

@freezed
class BotWhatsAppDTO with _$BotWhatsAppDTO {
  const factory BotWhatsAppDTO({
    required String number,
    required String countryCode,
    @JsonKey(name: 'message') required LocalizationMessageDTO initialMessage,
  }) = _BotWhatsAppDTO;

  factory BotWhatsAppDTO.fromJson(Map<String, Object?> json) => _$BotWhatsAppDTOFromJson(json);
}
