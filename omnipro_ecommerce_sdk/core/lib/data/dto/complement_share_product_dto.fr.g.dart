// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complement_share_product_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComplementShareProductDTOImpl _$$ComplementShareProductDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ComplementShareProductDTOImpl(
  url: json['url'] as String,
  initialMessage: LocalizationMessageDTO.fromJson(
    json['message'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$ComplementShareProductDTOImplToJson(
  _$ComplementShareProductDTOImpl instance,
) => <String, dynamic>{'url': instance.url, 'message': instance.initialMessage};
