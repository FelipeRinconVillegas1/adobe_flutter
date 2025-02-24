import 'package:freezed_annotation/freezed_annotation.dart';

part 'purse_info_dto.fr.freezed.dart';

part 'purse_info_dto.fr.g.dart';

@freezed
class PurseInfoListDto with _$PurseInfoListDto {
  const factory PurseInfoListDto({
    @JsonKey(name: 'purse_info_list') required List<PurseInfoDto> purseInfoList,
    @JsonKey(name: 'user_id') required String userId,
  }) = _PurseInfoListDto;

  factory PurseInfoListDto.fromJson(Map<String, dynamic> json) => _$PurseInfoListDtoFromJson(json);
}

@freezed
class PurseInfoDto with _$PurseInfoDto {
  const factory PurseInfoDto({
    @JsonKey(name: 'purse_id') required String purseId,
    required double balance,
  }) = _PurseInfoDto;

  factory PurseInfoDto.fromJson(Map<String, dynamic> json) => _$PurseInfoDtoFromJson(json);
}
