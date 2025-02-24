// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purse_info_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurseInfoListDtoImpl _$$PurseInfoListDtoImplFromJson(
  Map<String, dynamic> json,
) => _$PurseInfoListDtoImpl(
  purseInfoList:
      (json['purse_info_list'] as List<dynamic>)
          .map((e) => PurseInfoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
  userId: json['user_id'] as String,
);

Map<String, dynamic> _$$PurseInfoListDtoImplToJson(
  _$PurseInfoListDtoImpl instance,
) => <String, dynamic>{
  'purse_info_list': instance.purseInfoList,
  'user_id': instance.userId,
};

_$PurseInfoDtoImpl _$$PurseInfoDtoImplFromJson(Map<String, dynamic> json) =>
    _$PurseInfoDtoImpl(
      purseId: json['purse_id'] as String,
      balance: (json['balance'] as num).toDouble(),
    );

Map<String, dynamic> _$$PurseInfoDtoImplToJson(_$PurseInfoDtoImpl instance) =>
    <String, dynamic>{
      'purse_id': instance.purseId,
      'balance': instance.balance,
    };
