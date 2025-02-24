import 'package:core/data/dto/products_dto.fr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishlist_dto.fr.g.dart';
part 'wishlist_dto.fr.freezed.dart';

@freezed
class WishListDeleteDTO with _$WishListDeleteDTO {
  @JsonSerializable(explicitToJson: true)
  const factory WishListDeleteDTO({
    required bool status,
    @Default([]) @JsonKey(name: 'deleted_wishlist_ids') List<String> deletedWishlistIds,
    @Default([]) @JsonKey(name: 'error_messages') List<String> errorMessages,
    required List<WishListDTO> wishlists,
  }) = _WishListDeleteDTO;

  factory WishListDeleteDTO.fromJson(Map<String, Object?> json) => _$WishListDeleteDTOFromJson(json);
}

@freezed
class WishListDTO with _$WishListDTO {
  @JsonSerializable(explicitToJson: true)
  const factory WishListDTO({
    required String id,
    required String name,
    required String visibility,
    @Default(0) @JsonKey(name: 'items_count') int itemsCount,
    @JsonKey(name: 'items_v2') required WishListItemV2DTO items,
  }) = _WishListDTO;

  factory WishListDTO.fromJson(Map<String, Object?> json) => _$WishListDTOFromJson(json);
}

@freezed
class WishListItemV2DTO with _$WishListItemV2DTO {
  @JsonSerializable(explicitToJson: true)
  const factory WishListItemV2DTO({
    required List<WishListItemDTO> items,
  }) = _WishListItemV2DTO;

  factory WishListItemV2DTO.fromJson(Map<String, Object?> json) => _$WishListItemV2DTOFromJson(json);
}

@freezed
class WishListItemDTO with _$WishListItemDTO {
  @JsonSerializable(explicitToJson: true)
  const factory WishListItemDTO({
    required String id,
    required double quantity,
    required ProductsItemsDTO product,
  }) = _WishListItemDTO;

  factory WishListItemDTO.fromJson(Map<String, Object?> json) => _$WishListItemDTOFromJson(json);
}

@freezed
class WishListCreateResponseDTO with _$WishListCreateResponseDTO {
  const factory WishListCreateResponseDTO({
    required String id,
    required String name,
    required String visibility,
    required int itemsCount,
  }) = _WishListCreateResponseDTO;

  factory WishListCreateResponseDTO.fromJson(Map<String, Object?> json) => _$WishListCreateResponseDTOFromJson(json);
}
