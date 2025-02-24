import 'package:core/domain/entity/cart/shipping_address_on_cart.dart';
import 'package:equatable/equatable.dart';

class ShippingAddressesOnCart extends Equatable {
  final List<ShippingAddressOnCart> shippingAddresses;

  const ShippingAddressesOnCart({
    required this.shippingAddresses,
  });

  @override
  List<Object?> get props => [shippingAddresses];
}
