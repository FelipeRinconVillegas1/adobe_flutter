import 'package:core/domain/entity/cart/shipping_method.dart';
import 'package:equatable/equatable.dart';

import 'detail_address_on_cart.dart';

class ShippingAddressOnCart extends Equatable {
  final DetailAddressOnCart addressDetails;
  final SelectedShippingMethod? selectedShippingMethod;
  final List<SelectedShippingMethod> availableShippingMethods;

  const ShippingAddressOnCart({
    required this.addressDetails,
    this.selectedShippingMethod,
    required this.availableShippingMethods,
  });

  @override
  List<Object?> get props => [addressDetails, selectedShippingMethod];

  //Copy with
  ShippingAddressOnCart copyWith({
    DetailAddressOnCart? addressDetails,
    SelectedShippingMethod? selectedShippingMethod,
    List<SelectedShippingMethod>? availableShippingMethods,
  }) {
    return ShippingAddressOnCart(
      addressDetails: addressDetails ?? this.addressDetails,
      selectedShippingMethod: selectedShippingMethod ?? this.selectedShippingMethod,
      availableShippingMethods: availableShippingMethods ?? this.availableShippingMethods,
    );
  }
}
