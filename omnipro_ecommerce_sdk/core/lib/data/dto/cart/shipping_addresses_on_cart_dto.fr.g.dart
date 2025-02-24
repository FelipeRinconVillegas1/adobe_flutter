// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_addresses_on_cart_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShippingAddressesOnCartDTOImpl _$$ShippingAddressesOnCartDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ShippingAddressesOnCartDTOImpl(
  shippingAddresses:
      (json['shipping_addresses'] as List<dynamic>)
          .map(
            (e) => ShippingAddressOnCartDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$$ShippingAddressesOnCartDTOImplToJson(
  _$ShippingAddressesOnCartDTOImpl instance,
) => <String, dynamic>{'shipping_addresses': instance.shippingAddresses};
