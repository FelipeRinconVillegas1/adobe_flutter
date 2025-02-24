import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_address_order.fr.freezed.dart';

@freezed
class ShippingAddressOrder with _$ShippingAddressOrder {
  const factory ShippingAddressOrder({
    required String city,
    String? company,
    required String countryCode,
    String? fax,
    required String firstname,
    required String lastname,
    required String postcode,
    required String region,
    required List<String> street,
    required String telephone,
  }) = _ShippingAddressOrder;
}

extension ShowAddress on ShippingAddressOrder {
  String showAddress() => '${street.first}, $city, $region, $postcode, $countryCode.';
}
