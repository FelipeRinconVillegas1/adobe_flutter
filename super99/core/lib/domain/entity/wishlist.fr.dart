import 'package:core/domain/entity/products.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishlist.fr.g.dart';
part 'wishlist.fr.freezed.dart';

class WishListDeleteEntity extends Equatable {
  const WishListDeleteEntity({required this.status, required this.deletedWishlistIds, required this.errorMessages, required this.wishlists});

  final bool status;
  final List<String> deletedWishlistIds;
  final List<String> errorMessages;
  final List<WishList> wishlists;

  @override
  List<Object?> get props => [status, deletedWishlistIds, errorMessages, wishlists];
}


class WishListItemSelected extends Equatable{
  WishListItemSelected({required this.wishListItem, required this.quantity, required this.isSelected});

  final WishListItem wishListItem;
  double quantity;
  bool isSelected;

  @override
  List<Object?> get props => [wishListItem, quantity, isSelected];
}

@freezed
class WishList with _$WishList {
  @JsonSerializable(explicitToJson: true)
  const factory WishList({
    required String id,
    required String name,
    required String visibility,
    @Default(0) @JsonKey(name: 'items_count') int itemsCount,
    @JsonKey(name: 'items_v2') required WishListItemV2 items,
  }) = _WishList;

  factory WishList.fromJson(Map<String, Object?> json) => _$WishListFromJson(json);
}

@freezed
class WishListItemV2 with _$WishListItemV2 {
  @JsonSerializable(explicitToJson: true)
  const factory WishListItemV2({
    required List<WishListItem> items,
  }) = _WishListItemV2;

  factory WishListItemV2.fromJson(Map<String, Object?> json) => _$WishListItemV2FromJson(json);
}

@freezed
class WishListItem with _$WishListItem {
  const factory WishListItem({
    required String id,
    required double quantity,
    required ProductsItems product,
  }) = _WishListItem;

  factory WishListItem.fromJson(Map<String, Object?> json) => _$WishListItemFromJson(json);
}

@freezed
class WishListCreateResponse with _$WishListCreateResponse {
  const factory WishListCreateResponse({
    required String id,
    required String name,
    required String visibility,
    required int itemsCount,
  }) = _WishListCreateResponse;

  factory WishListCreateResponse.fromJson(Map<String, Object?> json) => _$WishListCreateResponseFromJson(json);
}

class WishlistWithUpdatedName {

  WishlistWithUpdatedName(this.wishlists, this.wishlistSelected);
  final List<WishList> wishlists;
  final WishList wishlistSelected;
}
