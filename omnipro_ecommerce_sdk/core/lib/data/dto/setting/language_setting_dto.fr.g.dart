// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_setting_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LanguageSettingDTOImpl _$$LanguageSettingDTOImplFromJson(
  Map<String, dynamic> json,
) => _$LanguageSettingDTOImpl(
  languagesCodesAvailable:
      (json['languagesCodesAvailable'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
  languageSelected: json['languageSelected'] as String,
);

Map<String, dynamic> _$$LanguageSettingDTOImplToJson(
  _$LanguageSettingDTOImpl instance,
) => <String, dynamic>{
  'languagesCodesAvailable': instance.languagesCodesAvailable,
  'languageSelected': instance.languageSelected,
};
