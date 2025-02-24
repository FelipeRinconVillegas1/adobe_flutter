// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotions_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionsDTOImpl _$$PromotionsDTOImplFromJson(Map<String, dynamic> json) =>
    _$PromotionsDTOImpl(
      promotions: (json['promotions'] as List<dynamic>)
          .map((e) => PromotionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PromotionsDTOImplToJson(_$PromotionsDTOImpl instance) =>
    <String, dynamic>{
      'promotions': instance.promotions,
    };
