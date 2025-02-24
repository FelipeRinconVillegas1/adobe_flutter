// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product_rewards_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartProductRewardsDTOImpl _$$CartProductRewardsDTOImplFromJson(
  Map<String, dynamic> json,
) => _$CartProductRewardsDTOImpl(
  items:
      (json['items'] as List<dynamic>)
          .map((e) => ProductRewardsDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
  totalPoints: (json['total_points'] as num).toDouble(),
  success: json['success'] as String,
  error: json['error'] as String,
);

Map<String, dynamic> _$$CartProductRewardsDTOImplToJson(
  _$CartProductRewardsDTOImpl instance,
) => <String, dynamic>{
  'items': instance.items,
  'total_points': instance.totalPoints,
  'success': instance.success,
  'error': instance.error,
};

_$ProductRewardsDTOImpl _$$ProductRewardsDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductRewardsDTOImpl(
  points: (json['points'] as num).toDouble(),
  sku: json['sku'] as String,
  error: json['error'] as String,
);

Map<String, dynamic> _$$ProductRewardsDTOImplToJson(
  _$ProductRewardsDTOImpl instance,
) => <String, dynamic>{
  'points': instance.points,
  'sku': instance.sku,
  'error': instance.error,
};
