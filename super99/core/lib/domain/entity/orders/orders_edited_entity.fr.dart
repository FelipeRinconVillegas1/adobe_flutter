import 'package:core/domain/entity/money.fr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_edited_entity.fr.freezed.dart';
part 'orders_edited_entity.fr.g.dart';

@freezed
class OrdersEditedEntity with _$OrdersEditedEntity {
  const factory OrdersEditedEntity({
    @JsonKey(name: 'orders') @Default([]) List<OrderEditedEntity> orders,
  }) = _OrdersEditedEntity;

  factory OrdersEditedEntity.fromJson(Map<String, Object?> json) => _$OrdersEditedEntityFromJson(json);
}

@freezed
class OrderEditedEntity with _$OrderEditedEntity {
  const factory OrderEditedEntity({
    required int orderId,
    required OrderItemDeletedEditedEntity deletedProducts,
    required OrderItemEditedEntity editedProducts,
    required OrderItemAddedEntity addedProducts,
  }) = _OrderEditedEntity;

  factory OrderEditedEntity.fromJson(Map<String, Object?> json) => _$OrderEditedEntityFromJson(json);
}

@freezed
class OrderItemDeletedEditedEntity with _$OrderItemDeletedEditedEntity {
  const factory OrderItemDeletedEditedEntity({
    required int totalCount,
    @Default([]) List<OrderItemModifiedEntity> items,
  }) = _OrderItemDeletedEditedEntity;

  factory OrderItemDeletedEditedEntity.fromJson(Map<String, Object?> json) =>
      _$OrderItemDeletedEditedEntityFromJson(json);
}

@freezed
class OrderItemEditedEntity with _$OrderItemEditedEntity {
  const factory OrderItemEditedEntity({
    required int totalCount,
    @Default([]) List<OrderItemModifiedEntity> items,
  }) = _OrderItemEditedEntity;

  factory OrderItemEditedEntity.fromJson(Map<String, Object?> json) => _$OrderItemEditedEntityFromJson(json);
}

@freezed
class OrderItemAddedEntity with _$OrderItemAddedEntity {
  const factory OrderItemAddedEntity({
    required int totalCount,
    @Default([]) List<OrderItemModifiedEntity> items,
  }) = _OrderItemAddedEntity;

  factory OrderItemAddedEntity.fromJson(Map<String, Object?> json) => _$OrderItemAddedEntityFromJson(json);
}

@freezed
class OrderItemModifiedEntity with _$OrderItemModifiedEntity {
  const factory OrderItemModifiedEntity({
    required String productName,
    required String productSku,
    required String productUrlKey,
    required String productImage,
    required String salesUnitOfMeasure,
    required double productQty,
    Money? productSalePrice,
    Money? productSaleRowTotal,
    Money? productSaleTaxPrice,
  }) = _OrderItemModifiedEntity;

  factory OrderItemModifiedEntity.fromJson(Map<String, Object?> json) => _$OrderItemModifiedEntityFromJson(json);
}
