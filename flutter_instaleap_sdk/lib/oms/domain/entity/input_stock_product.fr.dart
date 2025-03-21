import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_stock_product.fr.freezed.dart';
part 'input_stock_product.fr.g.dart';

@freezed
class InputStockProduct with _$InputStockProduct {
  const factory InputStockProduct({
    required String sourceCode,
    required String productName,
    required String productUnit,
    required List<String> barcodes,
  }) = _InputStockProduct;

  factory InputStockProduct.fromJson(Map<String, dynamic> json) => _$InputStockProductFromJson(json);
}