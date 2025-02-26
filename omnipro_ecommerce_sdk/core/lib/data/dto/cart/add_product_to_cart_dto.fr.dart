import 'dart:convert';
import 'package:core/utils/extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'cart_item_input_dto.fr.dart';

part 'add_product_to_cart_dto.fr.freezed.dart';

part 'add_product_to_cart_dto.fr.g.dart';

@freezed
class AddProductToCartDTO with _$AddProductToCartDTO {
  const factory AddProductToCartDTO({
    required String cartId,
    required CartItemInputDTO cartItems,
  }) = _AddProductToCartDTO;

  factory AddProductToCartDTO.fromJson(Map<String, Object?> json) => _$AddProductToCartDTOFromJson(json);
}

extension ToMutation on AddProductToCartDTO {
  String toParamMutation() => toParamMutationHelper(jsonEncode(toJson()));
}
