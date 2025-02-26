// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCustomerDTOImpl _$$CreateCustomerDTOImplFromJson(
  Map<String, dynamic> json,
) => _$CreateCustomerDTOImpl(
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  email: json['email'] as String,
  password: json['password'] as String,
  gender: (json['gender'] as num).toInt(),
  dateOfBirth: const DateTimeConverterISO8601().fromJson(
    json['date_of_birth'] as String,
  ),
  isSuscribed: json['is_subscribed'] as bool? ?? true,
  customAttributes:
      (json['custom_attributes'] as List<dynamic>)
          .map((e) => CustomAttributeDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$CreateCustomerDTOImplToJson(
  _$CreateCustomerDTOImpl instance,
) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'email': instance.email,
  'password': instance.password,
  'gender': instance.gender,
  'date_of_birth': const DateTimeConverterISO8601().toJson(
    instance.dateOfBirth,
  ),
  'is_subscribed': instance.isSuscribed,
  'custom_attributes':
      instance.customAttributes.map((e) => e.toJson()).toList(),
};
