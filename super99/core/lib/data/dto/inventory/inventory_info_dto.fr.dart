import 'package:freezed_annotation/freezed_annotation.dart';

import 'item_inventory_detail_dto.fr.dart';

part 'inventory_info_dto.fr.freezed.dart';

part 'inventory_info_dto.fr.g.dart';

@freezed
class InventoryInfoDTO with _$InventoryInfoDTO {
  const factory InventoryInfoDTO({
    @JsonKey(name: 'response_code') required String responseCode,
    @JsonKey(name: 'response_message') required String responseMessage,
    required String store,
    required List<ItemInventoryDetailDTO> products,
    required bool fulfillment,
    required String startTime,
    required String endTime,
    @JsonKey(name: 'total_products') required int totalProducts,
  }) = _InventoryInfoDTO;

  factory InventoryInfoDTO.fromJson(Map<String, dynamic> json) => _$InventoryInfoDTOFromJson(json);
}
