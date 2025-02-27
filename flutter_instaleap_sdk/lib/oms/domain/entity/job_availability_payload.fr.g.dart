// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_availability_payload.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobAvailabilityPayloadImpl _$$JobAvailabilityPayloadImplFromJson(
  Map<String, dynamic> json,
) => _$JobAvailabilityPayloadImpl(
  currencyCode: json['currencyCode'] as String,
  start: json['start'] as String,
  end: json['end'] as String,
  slotSize: (json['slotSize'] as num).toInt(),
  minimumSlotSize: (json['minimumSlotSize'] as num?)?.toInt(),
  operationalModelsPriority:
      (json['operationalModelsPriority'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
  fallback: json['fallback'] as bool?,
  storeReference: json['storeReference'] as String,
  origin: Origin.fromJson(json['origin'] as Map<String, dynamic>),
  destination: Destination.fromJson(
    json['destination'] as Map<String, dynamic>,
  ),
  jobItems:
      (json['jobItems'] as List<dynamic>)
          .map((e) => JobItem.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$JobAvailabilityPayloadImplToJson(
  _$JobAvailabilityPayloadImpl instance,
) => <String, dynamic>{
  'currencyCode': instance.currencyCode,
  'start': instance.start,
  'end': instance.end,
  'slotSize': instance.slotSize,
  'minimumSlotSize': instance.minimumSlotSize,
  'operationalModelsPriority': instance.operationalModelsPriority,
  'fallback': instance.fallback,
  'storeReference': instance.storeReference,
  'origin': instance.origin,
  'destination': instance.destination,
  'jobItems': instance.jobItems,
};

_$OriginImpl _$$OriginImplFromJson(Map<String, dynamic> json) => _$OriginImpl(
  name: json['name'] as String,
  address: json['address'] as String,
  addressTwo: json['addressTwo'] as String?,
  description: json['description'] as String?,
  country: json['country'] as String?,
  city: json['city'] as String?,
  state: json['state'] as String?,
  zipCode: json['zipCode'] as String?,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
);

Map<String, dynamic> _$$OriginImplToJson(_$OriginImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'addressTwo': instance.addressTwo,
      'description': instance.description,
      'country': instance.country,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$DestinationImpl _$$DestinationImplFromJson(Map<String, dynamic> json) =>
    _$DestinationImpl(
      name: json['name'] as String,
      address: json['address'] as String,
      addressTwo: json['addressTwo'] as String?,
      description: json['description'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipCode: json['zipCode'] as String?,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$DestinationImplToJson(_$DestinationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'addressTwo': instance.addressTwo,
      'description': instance.description,
      'country': instance.country,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$JobItemImpl _$$JobItemImplFromJson(
  Map<String, dynamic> json,
) => _$JobItemImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  photoUrl: json['photoUrl'] as String?,
  unit: json['unit'] as String,
  subUnit: json['subUnit'] as String,
  quantity: (json['quantity'] as num).toInt(),
  subQuantity: (json['subQuantity'] as num).toInt(),
  quantityFoundLimits:
      json['quantityFoundLimits'] == null
          ? null
          : QuantityFoundLimits.fromJson(
            json['quantityFoundLimits'] as Map<String, dynamic>,
          ),
  barcodes:
      (json['barcodes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  weight: (json['weight'] as num?)?.toDouble(),
  volume: (json['volume'] as num).toDouble(),
  dimensions: Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
  price: (json['price'] as num).toDouble(),
  comment: json['comment'] as String?,
  attributes: Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$JobItemImplToJson(_$JobItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
      'unit': instance.unit,
      'subUnit': instance.subUnit,
      'quantity': instance.quantity,
      'subQuantity': instance.subQuantity,
      'quantityFoundLimits': instance.quantityFoundLimits,
      'barcodes': instance.barcodes,
      'weight': instance.weight,
      'volume': instance.volume,
      'dimensions': instance.dimensions,
      'price': instance.price,
      'comment': instance.comment,
      'attributes': instance.attributes,
    };

_$QuantityFoundLimitsImpl _$$QuantityFoundLimitsImplFromJson(
  Map<String, dynamic> json,
) => _$QuantityFoundLimitsImpl(
  max: (json['max'] as num).toInt(),
  min: (json['min'] as num).toInt(),
);

Map<String, dynamic> _$$QuantityFoundLimitsImplToJson(
  _$QuantityFoundLimitsImpl instance,
) => <String, dynamic>{'max': instance.max, 'min': instance.min};

_$DimensionsImpl _$$DimensionsImplFromJson(Map<String, dynamic> json) =>
    _$DimensionsImpl(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      z: (json['z'] as num).toDouble(),
    );

Map<String, dynamic> _$$DimensionsImplToJson(_$DimensionsImpl instance) =>
    <String, dynamic>{'x': instance.x, 'y': instance.y, 'z': instance.z};

_$AttributesImpl _$$AttributesImplFromJson(Map<String, dynamic> json) =>
    _$AttributesImpl(
      category: json['category'] as String,
      plu: json['plu'] as String,
      ean: json['ean'] as String,
      location: json['location'] as String,
      pickingIndex: json['pickingIndex'] as String,
    );

Map<String, dynamic> _$$AttributesImplToJson(_$AttributesImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'plu': instance.plu,
      'ean': instance.ean,
      'location': instance.location,
      'pickingIndex': instance.pickingIndex,
    };
