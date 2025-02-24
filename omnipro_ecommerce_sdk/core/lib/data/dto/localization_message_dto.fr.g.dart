// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization_message_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalizationMessageDTOImpl _$$LocalizationMessageDTOImplFromJson(
  Map<String, dynamic> json,
) => _$LocalizationMessageDTOImpl(
  messagesWithLocalization:
      (json['localizations'] as List<dynamic>)
          .map(
            (e) =>
                MessageWithLocalizationDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$$LocalizationMessageDTOImplToJson(
  _$LocalizationMessageDTOImpl instance,
) => <String, dynamic>{'localizations': instance.messagesWithLocalization};

_$MessageWithLocalizationDTOImpl _$$MessageWithLocalizationDTOImplFromJson(
  Map<String, dynamic> json,
) => _$MessageWithLocalizationDTOImpl(
  code: json['code'] as String,
  message: json['message'] as String,
);

Map<String, dynamic> _$$MessageWithLocalizationDTOImplToJson(
  _$MessageWithLocalizationDTOImpl instance,
) => <String, dynamic>{'code': instance.code, 'message': instance.message};
