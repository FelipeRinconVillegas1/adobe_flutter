import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_product_rewards.fr.freezed.dart';

@freezed
class CartProductRewards with _$CartProductRewards {
  const factory CartProductRewards({
    required List<ProductRewards> items,
    required double totalPoints,
    required String success,
    required String error,
  }) = _CartProductRewards;
}

@freezed
class ProductRewards with _$ProductRewards {
  const factory ProductRewards({
    required double points,
    required String sku,
    required String error,
  }) = _ProductRewards;
}
