import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_inventory_detail_dto.fr.freezed.dart';

part 'item_inventory_detail_dto.fr.g.dart';

@freezed
class ItemInventoryDetailDTO with _$ItemInventoryDetailDTO {
  const factory ItemInventoryDetailDTO({
    required String sku,
    required int qty,
  }) = _ItemInventoryDetailDTO;

  factory ItemInventoryDetailDTO.fromJson(Map<String, dynamic> json) => _$ItemInventoryDetailDTOFromJson(json);
}
