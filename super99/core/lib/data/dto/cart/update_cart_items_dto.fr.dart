import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
import 'package:core/utils/extension.dart';
part 'update_cart_items_dto.fr.freezed.dart';
part 'update_cart_items_dto.fr.g.dart';

@freezed
class UpdateCartItemsInputDTO with _$UpdateCartItemsInputDTO {
  factory UpdateCartItemsInputDTO({
    @JsonKey(name: 'cart_id') required String cartId,
    @JsonKey(name: 'cart_items') required List<CartItemUpdateInputDTO> cartItems,
  }) = _UpdateCartItemsInputDTO;
}

@freezed
class CartItemUpdateInputDTO with _$CartItemUpdateInputDTO {
  factory CartItemUpdateInputDTO({
    @JsonKey(name: 'cart_item_uid') required String cartItemUid,
    @JsonKey(name: 'quantity') required double quantity,
    @JsonKey(name: 'price', includeToJson: false) required double price,
    @JsonKey(name: 'sku', includeToJson: false) required String sku,
  }) = _CartItemUpdateInputDTO;

  factory CartItemUpdateInputDTO.fromJson(Map<String, Object?> json) => _$CartItemUpdateInputDTOFromJson(json);
}

extension ToMutation on CartItemUpdateInputDTO {
  String toMutation() => toMutationHelper(jsonEncode(toJson()));
}
