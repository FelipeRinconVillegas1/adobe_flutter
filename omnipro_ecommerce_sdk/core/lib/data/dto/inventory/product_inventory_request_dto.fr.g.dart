// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_inventory_request_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductInventoryRequestDTOImpl _$$ProductInventoryRequestDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductInventoryRequestDTOImpl(
  data: ProductInventoryRequestDetailsDTO.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$ProductInventoryRequestDTOImplToJson(
  _$ProductInventoryRequestDTOImpl instance,
) => <String, dynamic>{'data': instance.data.toJson()};

_$ProductInventoryRequestDetailsDTOImpl
_$$ProductInventoryRequestDetailsDTOImplFromJson(Map<String, dynamic> json) =>
    _$ProductInventoryRequestDetailsDTOImpl(
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      zipcode: json['zipcode'] as String,
      region: json['region'] as String,
      items:
          (json['items'] as List<dynamic>)
              .map(
                (e) =>
                    ItemInventoryDetailDTO.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
      showMultiStore: json['show_multi_store'] as bool? ?? false,
      addStoreAddress: json['add_store_address'] as bool? ?? false,
    );

Map<String, dynamic> _$$ProductInventoryRequestDetailsDTOImplToJson(
  _$ProductInventoryRequestDetailsDTOImpl instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'zipcode': instance.zipcode,
  'region': instance.region,
  'items': instance.items.map((e) => e.toJson()).toList(),
  'show_multi_store': instance.showMultiStore,
  'add_store_address': instance.addStoreAddress,
};
