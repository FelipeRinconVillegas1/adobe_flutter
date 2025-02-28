// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_response_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobResponseDTOImpl _$$JobResponseDTOImplFromJson(
  Map<String, dynamic> json,
) => _$JobResponseDTOImpl(
  jobNumber: json['job_number'] as String,
  clientId: json['client_id'] as String,
  startTime: DateTime.parse(json['start_time'] as String),
  endTime: DateTime.parse(json['end_time'] as String),
  state: json['state'] as String,
  origin: AddressDTO.fromJson(json['origin'] as Map<String, dynamic>),
  destination: AddressDTO.fromJson(json['destination'] as Map<String, dynamic>),
  totalItemDTOs: (json['total_items'] as num).toInt(),
  itemsReplaced: (json['items_replaced'] as num).toInt(),
  productsCost: MoneyDTO.fromJson(
    json['products_cost'] as Map<String, dynamic>,
  ),
  items:
      (json['items'] as List<dynamic>)
          .map((e) => ItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
  collectWith: CollectWithDTO.fromJson(
    json['collect_with'] as Map<String, dynamic>,
  ),
  recipient: RecipientDTO.fromJson(json['recipient'] as Map<String, dynamic>),
  tasks: TasksDTO.fromJson(json['tasks'] as Map<String, dynamic>),
  canProcessCheckout: json['can_process_checkout'] as bool,
  deliveryOptions: json['delivery_options'] as List<dynamic>? ?? const [],
  jobComment: json['job_comment'] as String,
  externalData: ExternalDataDTO.fromJson(
    json['external_data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$JobResponseDTOImplToJson(
  _$JobResponseDTOImpl instance,
) => <String, dynamic>{
  'job_number': instance.jobNumber,
  'client_id': instance.clientId,
  'start_time': instance.startTime.toIso8601String(),
  'end_time': instance.endTime.toIso8601String(),
  'state': instance.state,
  'origin': instance.origin,
  'destination': instance.destination,
  'total_items': instance.totalItemDTOs,
  'items_replaced': instance.itemsReplaced,
  'products_cost': instance.productsCost,
  'items': instance.items,
  'collect_with': instance.collectWith,
  'recipient': instance.recipient,
  'tasks': instance.tasks,
  'can_process_checkout': instance.canProcessCheckout,
  'delivery_options': instance.deliveryOptions,
  'job_comment': instance.jobComment,
  'external_data': instance.externalData,
};

_$AddressDTOImpl _$$AddressDTOImplFromJson(Map<String, dynamic> json) =>
    _$AddressDTOImpl(
      name: json['name'] as String,
      address: json['address'] as String,
      addressTwo: json['address_two'] as String,
      country: json['country'] as String,
      state: json['state'] as String,
      city: json['city'] as String,
      zipCode: json['zip_code'] as String,
      description: json['description'] as String,
      coordinates: CoordinatesDTO.fromJson(
        json['coordinates'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$AddressDTOImplToJson(_$AddressDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'address_two': instance.addressTwo,
      'country': instance.country,
      'state': instance.state,
      'city': instance.city,
      'zip_code': instance.zipCode,
      'description': instance.description,
      'coordinates': instance.coordinates,
    };

_$CoordinatesDTOImpl _$$CoordinatesDTOImplFromJson(Map<String, dynamic> json) =>
    _$CoordinatesDTOImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$CoordinatesDTOImplToJson(
  _$CoordinatesDTOImpl instance,
) => <String, dynamic>{'lat': instance.lat, 'lng': instance.lng};

_$MoneyDTOImpl _$$MoneyDTOImplFromJson(Map<String, dynamic> json) =>
    _$MoneyDTOImpl(
      amount: json['amount'] as num,
      currencyCode: json['currency_code'] as String,
    );

Map<String, dynamic> _$$MoneyDTOImplToJson(_$MoneyDTOImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency_code': instance.currencyCode,
    };

_$ItemDTOImpl _$$ItemDTOImplFromJson(Map<String, dynamic> json) =>
    _$ItemDTOImpl(
      id: json['id'] as String,
      state: json['state'] as String,
      name: json['name'] as String,
      packageId: json['package_id'] as String,
      quantity: (json['quantity'] as num).toInt(),
      foundQuantity: (json['found_quantity'] as num).toInt(),
      photoUrl: json['photo_url'] as String,
      presentation: PresentationDTO.fromJson(
        json['presentation'] as Map<String, dynamic>,
      ),
      attributes: AttributesDTO.fromJson(
        json['attributes'] as Map<String, dynamic>,
      ),
      origin: json['origin'] as String,
      comment: json['comment'] as String,
      isSubstitute: json['is_substitute'] as bool,
      replacedBy: json['replaced_by'] as String,
    );

Map<String, dynamic> _$$ItemDTOImplToJson(_$ItemDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': instance.state,
      'name': instance.name,
      'package_id': instance.packageId,
      'quantity': instance.quantity,
      'found_quantity': instance.foundQuantity,
      'photo_url': instance.photoUrl,
      'presentation': instance.presentation,
      'attributes': instance.attributes,
      'origin': instance.origin,
      'comment': instance.comment,
      'is_substitute': instance.isSubstitute,
      'replaced_by': instance.replacedBy,
    };

_$PresentationDTOImpl _$$PresentationDTOImplFromJson(
  Map<String, dynamic> json,
) => _$PresentationDTOImpl(
  quantity: (json['quantity'] as num).toInt(),
  unit: json['unit'] as String,
  name: json['name'] as String,
  price: PriceDTO.fromJson(json['price'] as Map<String, dynamic>),
  weight: json['weight'] as num,
  dimensions:
      (json['dimensions'] as List<dynamic>)
          .map((e) => DimensionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$PresentationDTOImplToJson(
  _$PresentationDTOImpl instance,
) => <String, dynamic>{
  'quantity': instance.quantity,
  'unit': instance.unit,
  'name': instance.name,
  'price': instance.price,
  'weight': instance.weight,
  'dimensions': instance.dimensions,
};

_$PriceDTOImpl _$$PriceDTOImplFromJson(Map<String, dynamic> json) =>
    _$PriceDTOImpl(
      amount: json['amount'] as num,
      currencyCode: json['currency_code'] as String,
    );

Map<String, dynamic> _$$PriceDTOImplToJson(_$PriceDTOImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency_code': instance.currencyCode,
    };

_$DimensionDTOImpl _$$DimensionDTOImplFromJson(Map<String, dynamic> json) =>
    _$DimensionDTOImpl(
      length: json['length'] as num,
      width: json['width'] as num,
      height: json['height'] as num,
    );

Map<String, dynamic> _$$DimensionDTOImplToJson(_$DimensionDTOImpl instance) =>
    <String, dynamic>{
      'length': instance.length,
      'width': instance.width,
      'height': instance.height,
    };

_$AttributesDTOImpl _$$AttributesDTOImplFromJson(Map<String, dynamic> json) =>
    _$AttributesDTOImpl(
      category: json['category'] as String,
      anotherAttributesDTO: json['another attributes'] as String,
    );

Map<String, dynamic> _$$AttributesDTOImplToJson(_$AttributesDTOImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'another attributes': instance.anotherAttributesDTO,
    };

_$CollectWithDTOImpl _$$CollectWithDTOImplFromJson(Map<String, dynamic> json) =>
    _$CollectWithDTOImpl(
      method: json['method'] as String,
      payment: PaymentDTO.fromJson(json['payment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CollectWithDTOImplToJson(
  _$CollectWithDTOImpl instance,
) => <String, dynamic>{'method': instance.method, 'payment': instance.payment};

_$PaymentDTOImpl _$$PaymentDTOImplFromJson(Map<String, dynamic> json) =>
    _$PaymentDTOImpl(
      amount: json['amount'] as num,
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$PaymentDTOImplToJson(_$PaymentDTOImpl instance) =>
    <String, dynamic>{'amount': instance.amount, 'currency': instance.currency};

_$RecipientDTOImpl _$$RecipientDTOImplFromJson(Map<String, dynamic> json) =>
    _$RecipientDTOImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: (json['phone_number'] as num).toInt(),
    );

Map<String, dynamic> _$$RecipientDTOImplToJson(_$RecipientDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
    };

_$TasksDTOImpl _$$TasksDTOImplFromJson(Map<String, dynamic> json) =>
    _$TasksDTOImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      state: json['state'] as String,
      resource: json['resource'] as String,
      payment: json['payment'] as String,
      steps:
          (json['steps'] as List<dynamic>)
              .map((e) => TaskStepDTO.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$TasksDTOImplToJson(_$TasksDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'state': instance.state,
      'resource': instance.resource,
      'payment': instance.payment,
      'steps': instance.steps,
    };

_$TaskStepDTOImpl _$$TaskStepDTOImplFromJson(Map<String, dynamic> json) =>
    _$TaskStepDTOImpl(
      id: json['id'] as String,
      state: json['state'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$TaskStepDTOImplToJson(_$TaskStepDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': instance.state,
      'type': instance.type,
    };

_$ExternalDataDTOImpl _$$ExternalDataDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ExternalDataDTOImpl(
  webhook: ExternalKeyDTO.fromJson(json['webhook'] as Map<String, dynamic>),
  backoffice: ExternalKeyDTO.fromJson(
    json['backoffice'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$ExternalDataDTOImplToJson(
  _$ExternalDataDTOImpl instance,
) => <String, dynamic>{
  'webhook': instance.webhook,
  'backoffice': instance.backoffice,
};

_$ExternalKeyDTOImpl _$$ExternalKeyDTOImplFromJson(Map<String, dynamic> json) =>
    _$ExternalKeyDTOImpl(key: json['key'] as String);

Map<String, dynamic> _$$ExternalKeyDTOImplToJson(
  _$ExternalKeyDTOImpl instance,
) => <String, dynamic>{'key': instance.key};
