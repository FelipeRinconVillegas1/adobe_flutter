import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_product_rewards_dto.fr.freezed.dart';

part 'cart_product_rewards_dto.fr.g.dart';

@freezed
class CartProductRewardsDTO with _$CartProductRewardsDTO {
  const factory CartProductRewardsDTO({
    required List<ProductRewardsDTO> items,
    @JsonKey(name: 'total_points') required double totalPoints,
    required String success,
    required String error,
  }) = _CartProductRewardsDTO;

  factory CartProductRewardsDTO.fromJson(Map<String, dynamic> json) => _$CartProductRewardsDTOFromJson(json);
}

@freezed
class ProductRewardsDTO with _$ProductRewardsDTO {
  const factory ProductRewardsDTO({
    required double points,
    required String sku,
    required String error,
  }) = _ProductRewardsDTO;

  factory ProductRewardsDTO.fromJson(Map<String, dynamic> json) => _$ProductRewardsDTOFromJson(json);
}
