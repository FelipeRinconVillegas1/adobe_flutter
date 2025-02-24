// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_input_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartItemInputDTOImpl _$$CartItemInputDTOImplFromJson(
  Map<String, dynamic> json,
) => _$CartItemInputDTOImpl(
  quantity: (json['quantity'] as num).toDouble(),
  sku: json['sku'] as String,
  enteredOptions:
      (json['entered_options'] as List<dynamic>?)
          ?.map(
            (e) => EnteredOptionInputDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  parentSku: json['parent_sku'] as String?,
  selectedOptions:
      (json['selected_options'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
);

Map<String, dynamic> _$$CartItemInputDTOImplToJson(
  _$CartItemInputDTOImpl instance,
) => <String, dynamic>{
  'quantity': instance.quantity,
  'sku': instance.sku,
  'entered_options': instance.enteredOptions,
  'parent_sku': instance.parentSku,
  'selected_options': instance.selectedOptions,
};

_$EnteredOptionInputDTOImpl _$$EnteredOptionInputDTOImplFromJson(
  Map<String, dynamic> json,
) => _$EnteredOptionInputDTOImpl(
  uid: json['uid'] as String,
  value: json['value'] as String,
);

Map<String, dynamic> _$$EnteredOptionInputDTOImplToJson(
  _$EnteredOptionInputDTOImpl instance,
) => <String, dynamic>{'uid': instance.uid, 'value': instance.value};
