import 'package:freezed_annotation/freezed_annotation.dart';

part 'dropdown_option_dto.fr.freezed.dart';
part 'dropdown_option_dto.fr.g.dart';

@freezed
class DropdownOptionDTO with _$DropdownOptionDTO {
  const DropdownOptionDTO._(); // Agregamos un constructor privado para la clase base

  const factory DropdownOptionDTO.standard({
    required String code,
    required String nameEn,
    required String nameEs,
  }) = StandardDropdownOptionDTO;

  const factory DropdownOptionDTO.withShortName({
    required String code,
    required String nameEn,
    required String nameEs,
    required String shortNameEn,
    required String shortNameEs,
  }) = WithShortNameDropdownOptionDTO;

  const factory DropdownOptionDTO.countryCode({
    required String code,
    required String nameEn,
    required String nameEs,
    required String countryCode,
  }) = CountryCodeDropdownOptionDTO;

  const factory DropdownOptionDTO.child({
    required String code,
    required String nameEn,
    required String nameEs,
    required String parentCode,
  }) = ChildDropdownOptionDTO;

  factory DropdownOptionDTO.fromJson(Map<String, dynamic> json) => _$DropdownOptionDTOFromJson(json);
}
