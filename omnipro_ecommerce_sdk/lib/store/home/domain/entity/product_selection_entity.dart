import 'package:core/domain/entity/products.dart';

class ProductSelectionEntity {
  ProductSelectionEntity({
    required this.productItems,
    required this.quantity,
  });

  final ProductsItems? productItems;
  final double quantity;

  factory ProductSelectionEntity.empty() {
    return ProductSelectionEntity(productItems: null, quantity: 0);
  }

  ProductSelectionEntity copyWith({
    ProductsItems? productItems,
    double? quantity,
  }) {
    return ProductSelectionEntity(
      productItems: productItems ?? this.productItems,
      quantity: quantity ?? this.quantity,
    );
  }
}
