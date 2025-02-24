// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_customer_otp_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidateCustomerOtpDTOImpl _$$ValidateCustomerOtpDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateCustomerOtpDTOImpl(
      customer: json['customer'] == null
          ? null
          : CustomerDTO.fromJson(json['customer'] as Map<String, dynamic>),
      status: json['status'] as bool,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$ValidateCustomerOtpDTOImplToJson(
        _$ValidateCustomerOtpDTOImpl instance) =>
    <String, dynamic>{
      'customer': instance.customer?.toJson(),
      'status': instance.status,
      'token': instance.token,
    };
