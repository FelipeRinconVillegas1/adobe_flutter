import 'dart:convert';

import 'package:core/data/dto/cart/shipping_address_on_cart_dto.fr.dart';
import 'package:core/utils/extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_addresses_on_cart_dto.fr.freezed.dart';

part 'shipping_addresses_on_cart_dto.fr.g.dart';

@freezed
class ShippingAddressesOnCartDTO with _$ShippingAddressesOnCartDTO {
  const factory ShippingAddressesOnCartDTO({
    @JsonKey(name: 'shipping_addresses') required List<ShippingAddressOnCartDTO> shippingAddresses,
  }) = _ShippingAddressesOnCartDTO;

  factory ShippingAddressesOnCartDTO.fromJson(Map<String, Object?> json) => _$ShippingAddressesOnCartDTOFromJson(json);
}

extension ToMutation on ShippingAddressesOnCartDTO {
  String toMutation() => toParamMutationHelper(jsonEncode(toJson()));
}
