import 'package:equatable/equatable.dart';

import 'customer_address_entity.dart';

class CustomerAddresses extends Equatable {
  final List<CustomerAddressEntity> shippingAddresses;

  const CustomerAddresses({
    required this.shippingAddresses,
  });

  @override
  List<Object?> get props => [shippingAddresses];
}
