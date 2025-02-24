import 'package:core/data/dto/money_dto.fr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_edited_dto.fr.freezed.dart';

part 'order_edited_dto.fr.g.dart';

@freezed
class OrdersEditedDTO with _$OrdersEditedDTO {
  const factory OrdersEditedDTO({
    @JsonKey(name: 'orders') @Default([]) List<OrderEditedDTO> orders,
  }) = _OrdersEditedDTO;

  factory OrdersEditedDTO.fromJson(Map<String, Object?> json) => _$OrdersEditedDTOFromJson(json);
}

@freezed
class OrderEditedDTO with _$OrderEditedDTO {
  const factory OrderEditedDTO({
    @JsonKey(name: 'order_id') required int orderId,
    @JsonKey(name: 'deleted_products') required OrderItemDeletedEditedDTO deletedProducts,
    @JsonKey(name: 'edited_products') required OrderItemEditedDTO editedProducts,
    @JsonKey(name: 'added_products') required OrderItemAddedDTO addedProducts,
  }) = _OrderEditedDTO;

  factory OrderEditedDTO.fromJson(Map<String, Object?> json) => _$OrderEditedDTOFromJson(json);
}

@freezed
class OrderItemDeletedEditedDTO with _$OrderItemDeletedEditedDTO {
  const factory OrderItemDeletedEditedDTO({
    @JsonKey(name: 'total_count') required int totalCount,
    @Default([]) List<OrderItemModifiedDTO> items,
  }) = _OrderItemDeletedEditedDTO;

  factory OrderItemDeletedEditedDTO.fromJson(Map<String, Object?> json) => _$OrderItemDeletedEditedDTOFromJson(json);
}

@freezed
class OrderItemEditedDTO with _$OrderItemEditedDTO {
  const factory OrderItemEditedDTO({
    @JsonKey(name: 'total_count') required int totalCount,
    @Default([]) List<OrderItemModifiedDTO> items,
  }) = _OrderItemEditedDTO;

  factory OrderItemEditedDTO.fromJson(Map<String, Object?> json) => _$OrderItemEditedDTOFromJson(json);
}

@freezed
class OrderItemAddedDTO with _$OrderItemAddedDTO {
  const factory OrderItemAddedDTO({
    @JsonKey(name: 'total_count') required int totalCount,
    @Default([]) List<OrderItemModifiedDTO> items,
  }) = _OrderItemAddedDTO;

  factory OrderItemAddedDTO.fromJson(Map<String, Object?> json) => _$OrderItemAddedDTOFromJson(json);
}

@freezed
class OrderItemModifiedDTO with _$OrderItemModifiedDTO {
  const factory OrderItemModifiedDTO({
    @JsonKey(name: 'product_name') required String productName,
    @JsonKey(name: 'product_sku') required String productSku,
    @JsonKey(name: 'product_url_key') required String productUrlKey,
    @JsonKey(name: 'product_image') required String productImage,
    @JsonKey(name: 'sales_unit_of_measure') String? salesUnitOfMeasure,
    @JsonKey(name: 'product_qty') required double productQty,
    @JsonKey(name: 'product_sale_price') MoneyDTO? productSalePrice,
    @JsonKey(name: 'product_sale_row_total') MoneyDTO? productSaleRowTotal,
    @JsonKey(name: 'product_sale_tax_price') MoneyDTO? productSaleTaxPrice,
  }) = _OrderItemModifiedDTO;

  factory OrderItemModifiedDTO.fromJson(Map<String, Object?> json) => _$OrderItemModifiedDTOFromJson(json);
}