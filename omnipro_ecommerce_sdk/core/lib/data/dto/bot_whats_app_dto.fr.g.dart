// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_whats_app_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BotWhatsAppDTOImpl _$$BotWhatsAppDTOImplFromJson(Map<String, dynamic> json) =>
    _$BotWhatsAppDTOImpl(
      number: json['number'] as String,
      countryCode: json['countryCode'] as String,
      initialMessage: LocalizationMessageDTO.fromJson(
        json['message'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$BotWhatsAppDTOImplToJson(
  _$BotWhatsAppDTOImpl instance,
) => <String, dynamic>{
  'number': instance.number,
  'countryCode': instance.countryCode,
  'message': instance.initialMessage,
};
