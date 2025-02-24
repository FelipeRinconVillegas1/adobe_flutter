import 'package:equatable/equatable.dart';

class WishListProductAddInfo extends Equatable {
  const WishListProductAddInfo({
    required this.sku,
    required this.quantity,
    required this.name,
    required this.wishlistName,
  });

  final String sku;
  final double quantity;
  final String name;
  final String wishlistName;

  @override
  List<Object?> get props => [
        sku,
        quantity,
      ];
}

class WishListProductUpdateInfo extends Equatable {
  const WishListProductUpdateInfo({
    required this.wishListItemId,
    required this.quantity,
  });

  final String wishListItemId;
  final double quantity;

  @override
  List<Object?> get props => [
        wishListItemId,
        quantity,
      ];
}
