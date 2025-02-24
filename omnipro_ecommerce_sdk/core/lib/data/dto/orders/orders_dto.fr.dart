import 'package:core/data/dto/cart/cart_dto.fr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_item_dto.fr.dart';

part 'orders_dto.fr.freezed.dart';

part 'orders_dto.fr.g.dart';

@freezed
class OrdersDTO with _$OrdersDTO {
  const factory OrdersDTO({
    @JsonKey(name: "page_info") required OrderPageInfoDTO pageInfo,
    @Default([]) List<OrderItemDTO> items,
  }) = _OrdersDTO;

  factory OrdersDTO.fromJson(Map<String, Object?> json) => _$OrdersDTOFromJson(json);
}

@freezed
class OrderPageInfoDTO with _$OrderPageInfoDTO {
  const factory OrderPageInfoDTO({
    @JsonKey(name: "total_pages") required int totalPages,
  }) = _OrderPageInfoDTO;

  factory OrderPageInfoDTO.fromJson(Map<String, Object?> json) => _$OrderPageInfoDTOFromJson(json);
}

@freezed
class ReorderItemsDTO with _$ReorderItemsDTO {
  const factory ReorderItemsDTO({
    required CartDTO cart,
    required List<UserInputErrorDTO> userInputErrors,
  }) = _ReorderItemsDTO;

  factory ReorderItemsDTO.fromJson(Map<String, Object?> json) => _$ReorderItemsDTOFromJson(json);
}

@freezed
class UserInputErrorDTO with _$UserInputErrorDTO {
  const factory UserInputErrorDTO({
    required String message,
    required String code,
    @Default([]) List<String> path,
  }) = _UserInputErrorDTO;

  factory UserInputErrorDTO.fromJson(Map<String, Object?> json) => _$UserInputErrorDTOFromJson(json);
}
