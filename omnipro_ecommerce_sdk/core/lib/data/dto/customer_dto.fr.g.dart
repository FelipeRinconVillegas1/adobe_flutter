// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerDTOImpl _$$CustomerDTOImplFromJson(
  Map<String, dynamic> json,
) => _$CustomerDTOImpl(
  id: (json['id'] as num?)?.toInt(),
  firstName: json['firstname'] as String,
  lastName: json['lastname'] as String,
  email: json['email'] as String,
  dateOfBirth: DateTime.parse(json['dob'] as String),
  gender: (json['gender'] as num?)?.toInt(),
  wishlists:
      (json['wishlists'] as List<dynamic>?)
          ?.map((e) => WishListDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  customAttributes:
      (json['custom_attributes'] as List<dynamic>)
          .map((e) => CustomAttributeDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
  addresses:
      (json['addresses'] as List<dynamic>?)
          ?.map((e) => CustomerAddressDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$CustomerDTOImplToJson(_$CustomerDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstName,
      'lastname': instance.lastName,
      'email': instance.email,
      'dob': instance.dateOfBirth.toIso8601String(),
      'gender': instance.gender,
      'wishlists': instance.wishlists.map((e) => e.toJson()).toList(),
      'custom_attributes':
          instance.customAttributes.map((e) => e.toJson()).toList(),
      'addresses': instance.addresses.map((e) => e.toJson()).toList(),
    };
