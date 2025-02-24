// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersDTOImpl _$$OrdersDTOImplFromJson(Map<String, dynamic> json) =>
    _$OrdersDTOImpl(
      pageInfo: OrderPageInfoDTO.fromJson(
        json['page_info'] as Map<String, dynamic>,
      ),
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => OrderItemDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OrdersDTOImplToJson(_$OrdersDTOImpl instance) =>
    <String, dynamic>{'page_info': instance.pageInfo, 'items': instance.items};

_$OrderPageInfoDTOImpl _$$OrderPageInfoDTOImplFromJson(
  Map<String, dynamic> json,
) => _$OrderPageInfoDTOImpl(totalPages: (json['total_pages'] as num).toInt());

Map<String, dynamic> _$$OrderPageInfoDTOImplToJson(
  _$OrderPageInfoDTOImpl instance,
) => <String, dynamic>{'total_pages': instance.totalPages};

_$ReorderItemsDTOImpl _$$ReorderItemsDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ReorderItemsDTOImpl(
  cart: CartDTO.fromJson(json['cart'] as Map<String, dynamic>),
  userInputErrors:
      (json['userInputErrors'] as List<dynamic>)
          .map((e) => UserInputErrorDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$ReorderItemsDTOImplToJson(
  _$ReorderItemsDTOImpl instance,
) => <String, dynamic>{
  'cart': instance.cart,
  'userInputErrors': instance.userInputErrors,
};

_$UserInputErrorDTOImpl _$$UserInputErrorDTOImplFromJson(
  Map<String, dynamic> json,
) => _$UserInputErrorDTOImpl(
  message: json['message'] as String,
  code: json['code'] as String,
  path:
      (json['path'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$$UserInputErrorDTOImplToJson(
  _$UserInputErrorDTOImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'code': instance.code,
  'path': instance.path,
};
