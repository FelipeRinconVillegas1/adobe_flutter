import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_config_dto.fr.freezed.dart';
part 'server_config_dto.fr.g.dart';

@freezed
class ServerConfigDto with _$ServerConfigDto {
  const factory ServerConfigDto({
    @JsonKey(name: 'service_urls') required Map<String, String> serverUrls,
  }) = _ServerConfigDto;

  factory ServerConfigDto.fromJson(Map<String, dynamic> json) => _$ServerConfigDtoFromJson(json);
}
