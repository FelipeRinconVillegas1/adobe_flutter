import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_setting_dto.fr.freezed.dart';
part 'language_setting_dto.fr.g.dart';

@freezed
class LanguageSettingDTO with _$LanguageSettingDTO {
  const factory LanguageSettingDTO({
    required List<String> languagesCodesAvailable,
    required String languageSelected,
  }) = _LanguageSettingDTO;

  factory LanguageSettingDTO.fromJson(Map<String, Object?> json) => _$LanguageSettingDTOFromJson(json);
}
