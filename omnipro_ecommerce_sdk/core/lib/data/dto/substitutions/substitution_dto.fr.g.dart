// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'substitution_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubstitutionDTOImpl _$$SubstitutionDTOImplFromJson(
  Map<String, dynamic> json,
) => _$SubstitutionDTOImpl(
  customCode: json['custom_code'] as String?,
  option: json['option'] as String,
  cssClassname: json['css_classname'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$$SubstitutionDTOImplToJson(
  _$SubstitutionDTOImpl instance,
) => <String, dynamic>{
  'custom_code': instance.customCode,
  'option': instance.option,
  'css_classname': instance.cssClassname,
  'description': instance.description,
};

_$SubstitutionResponseDTOImpl _$$SubstitutionResponseDTOImplFromJson(
  Map<String, dynamic> json,
) => _$SubstitutionResponseDTOImpl(
  cartId: json['cart_id'] as String,
  receivingSubstitutions: json['receiving_substitutions'] as String,
);

Map<String, dynamic> _$$SubstitutionResponseDTOImplToJson(
  _$SubstitutionResponseDTOImpl instance,
) => <String, dynamic>{
  'cart_id': instance.cartId,
  'receiving_substitutions': instance.receivingSubstitutions,
};
