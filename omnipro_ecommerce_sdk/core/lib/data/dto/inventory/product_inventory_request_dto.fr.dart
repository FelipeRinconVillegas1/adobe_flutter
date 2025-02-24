import 'package:freezed_annotation/freezed_annotation.dart';

import 'item_inventory_detail_dto.fr.dart';

part 'product_inventory_request_dto.fr.freezed.dart';

part 'product_inventory_request_dto.fr.g.dart';

@freezed
class ProductInventoryRequestDTO with _$ProductInventoryRequestDTO {
  @JsonSerializable(explicitToJson: true)
  const factory ProductInventoryRequestDTO({
    required ProductInventoryRequestDetailsDTO data,
  }) = _ProductInventoryRequestDTO;

  factory ProductInventoryRequestDTO.fromJson(Map<String, dynamic> json) => _$ProductInventoryRequestDTOFromJson(json);
}

@freezed
class ProductInventoryRequestDetailsDTO with _$ProductInventoryRequestDetailsDTO {
  @JsonSerializable(explicitToJson: true)
  const factory ProductInventoryRequestDetailsDTO({
    required String latitude,
    required String longitude,
    required String zipcode,
    required String region,
    required List<ItemInventoryDetailDTO> items,
    @JsonKey(name: 'show_multi_store') @Default(false) bool showMultiStore,
    @JsonKey(name: 'add_store_address') @Default(false) bool addStoreAddress,
  }) = _ProductInventoryRequestDetailsDTO;

  factory ProductInventoryRequestDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductInventoryRequestDetailsDTOFromJson(json);
}
