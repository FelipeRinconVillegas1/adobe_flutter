import 'package:freezed_annotation/freezed_annotation.dart';

part 'purse_info_entity.freezed.dart';

@freezed
class PurseInfoEntity with _$PurseInfoEntity {
  const factory PurseInfoEntity({
    required String purseId,
    required double balance,
  }) = _PurseInfoEntity;
}

@freezed
class PurseInfoEntityList with _$PurseInfoEntityList {
  const factory PurseInfoEntityList({
    required List<PurseInfoEntity> purseInfoList,
    required String userId,
  }) = _PurseInfoEntityList;
}
