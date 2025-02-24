import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_dto.g.dart';

@JsonSerializable()
class CountryDTO {
  final String name;
  @JsonKey(name: 'dial_code')
  final String dialCode;
  final String code;

  CountryDTO({
    required this.name,
    required this.dialCode,
    required this.code,
  });

  factory CountryDTO.fromJson(Map<String, dynamic> json) => _$CountryDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CountryDTOToJson(this);
}
