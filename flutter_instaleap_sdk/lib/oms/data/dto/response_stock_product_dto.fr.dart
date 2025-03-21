import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_stock_product_dto.fr.freezed.dart';
part 'response_stock_product_dto.fr.g.dart';

@freezed
class ResponseStockProductDTO with _$ResponseStockProductDTO {
  const factory ResponseStockProductDTO({
    required double quantity,
    required String unit,
  }) = _ResponseStockProductDTO;

  factory ResponseStockProductDTO.fromJson(Map<String, dynamic> json) => _$ResponseStockProductDTOFromJson(json);
}