// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_info_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

InventoryInfoDTO _$InventoryInfoDTOFromJson(Map<String, dynamic> json) {
  return _InventoryInfoDTO.fromJson(json);
}

/// @nodoc
mixin _$InventoryInfoDTO {
  @JsonKey(name: 'response_code')
  String get responseCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'response_message')
  String get responseMessage => throw _privateConstructorUsedError;
  String get store => throw _privateConstructorUsedError;
  List<ItemInventoryDetailDTO> get products =>
      throw _privateConstructorUsedError;
  bool get fulfillment => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_products')
  int get totalProducts => throw _privateConstructorUsedError;

  /// Serializes this InventoryInfoDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InventoryInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InventoryInfoDTOCopyWith<InventoryInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryInfoDTOCopyWith<$Res> {
  factory $InventoryInfoDTOCopyWith(
    InventoryInfoDTO value,
    $Res Function(InventoryInfoDTO) then,
  ) = _$InventoryInfoDTOCopyWithImpl<$Res, InventoryInfoDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'response_code') String responseCode,
    @JsonKey(name: 'response_message') String responseMessage,
    String store,
    List<ItemInventoryDetailDTO> products,
    bool fulfillment,
    String startTime,
    String endTime,
    @JsonKey(name: 'total_products') int totalProducts,
  });
}

/// @nodoc
class _$InventoryInfoDTOCopyWithImpl<$Res, $Val extends InventoryInfoDTO>
    implements $InventoryInfoDTOCopyWith<$Res> {
  _$InventoryInfoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InventoryInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCode = null,
    Object? responseMessage = null,
    Object? store = null,
    Object? products = null,
    Object? fulfillment = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? totalProducts = null,
  }) {
    return _then(
      _value.copyWith(
            responseCode:
                null == responseCode
                    ? _value.responseCode
                    : responseCode // ignore: cast_nullable_to_non_nullable
                        as String,
            responseMessage:
                null == responseMessage
                    ? _value.responseMessage
                    : responseMessage // ignore: cast_nullable_to_non_nullable
                        as String,
            store:
                null == store
                    ? _value.store
                    : store // ignore: cast_nullable_to_non_nullable
                        as String,
            products:
                null == products
                    ? _value.products
                    : products // ignore: cast_nullable_to_non_nullable
                        as List<ItemInventoryDetailDTO>,
            fulfillment:
                null == fulfillment
                    ? _value.fulfillment
                    : fulfillment // ignore: cast_nullable_to_non_nullable
                        as bool,
            startTime:
                null == startTime
                    ? _value.startTime
                    : startTime // ignore: cast_nullable_to_non_nullable
                        as String,
            endTime:
                null == endTime
                    ? _value.endTime
                    : endTime // ignore: cast_nullable_to_non_nullable
                        as String,
            totalProducts:
                null == totalProducts
                    ? _value.totalProducts
                    : totalProducts // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InventoryInfoDTOImplCopyWith<$Res>
    implements $InventoryInfoDTOCopyWith<$Res> {
  factory _$$InventoryInfoDTOImplCopyWith(
    _$InventoryInfoDTOImpl value,
    $Res Function(_$InventoryInfoDTOImpl) then,
  ) = __$$InventoryInfoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'response_code') String responseCode,
    @JsonKey(name: 'response_message') String responseMessage,
    String store,
    List<ItemInventoryDetailDTO> products,
    bool fulfillment,
    String startTime,
    String endTime,
    @JsonKey(name: 'total_products') int totalProducts,
  });
}

/// @nodoc
class __$$InventoryInfoDTOImplCopyWithImpl<$Res>
    extends _$InventoryInfoDTOCopyWithImpl<$Res, _$InventoryInfoDTOImpl>
    implements _$$InventoryInfoDTOImplCopyWith<$Res> {
  __$$InventoryInfoDTOImplCopyWithImpl(
    _$InventoryInfoDTOImpl _value,
    $Res Function(_$InventoryInfoDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InventoryInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCode = null,
    Object? responseMessage = null,
    Object? store = null,
    Object? products = null,
    Object? fulfillment = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? totalProducts = null,
  }) {
    return _then(
      _$InventoryInfoDTOImpl(
        responseCode:
            null == responseCode
                ? _value.responseCode
                : responseCode // ignore: cast_nullable_to_non_nullable
                    as String,
        responseMessage:
            null == responseMessage
                ? _value.responseMessage
                : responseMessage // ignore: cast_nullable_to_non_nullable
                    as String,
        store:
            null == store
                ? _value.store
                : store // ignore: cast_nullable_to_non_nullable
                    as String,
        products:
            null == products
                ? _value._products
                : products // ignore: cast_nullable_to_non_nullable
                    as List<ItemInventoryDetailDTO>,
        fulfillment:
            null == fulfillment
                ? _value.fulfillment
                : fulfillment // ignore: cast_nullable_to_non_nullable
                    as bool,
        startTime:
            null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                    as String,
        endTime:
            null == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                    as String,
        totalProducts:
            null == totalProducts
                ? _value.totalProducts
                : totalProducts // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryInfoDTOImpl implements _InventoryInfoDTO {
  const _$InventoryInfoDTOImpl({
    @JsonKey(name: 'response_code') required this.responseCode,
    @JsonKey(name: 'response_message') required this.responseMessage,
    required this.store,
    required final List<ItemInventoryDetailDTO> products,
    required this.fulfillment,
    required this.startTime,
    required this.endTime,
    @JsonKey(name: 'total_products') required this.totalProducts,
  }) : _products = products;

  factory _$InventoryInfoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryInfoDTOImplFromJson(json);

  @override
  @JsonKey(name: 'response_code')
  final String responseCode;
  @override
  @JsonKey(name: 'response_message')
  final String responseMessage;
  @override
  final String store;
  final List<ItemInventoryDetailDTO> _products;
  @override
  List<ItemInventoryDetailDTO> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final bool fulfillment;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  @JsonKey(name: 'total_products')
  final int totalProducts;

  @override
  String toString() {
    return 'InventoryInfoDTO(responseCode: $responseCode, responseMessage: $responseMessage, store: $store, products: $products, fulfillment: $fulfillment, startTime: $startTime, endTime: $endTime, totalProducts: $totalProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryInfoDTOImpl &&
            (identical(other.responseCode, responseCode) ||
                other.responseCode == responseCode) &&
            (identical(other.responseMessage, responseMessage) ||
                other.responseMessage == responseMessage) &&
            (identical(other.store, store) || other.store == store) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.fulfillment, fulfillment) ||
                other.fulfillment == fulfillment) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.totalProducts, totalProducts) ||
                other.totalProducts == totalProducts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    responseCode,
    responseMessage,
    store,
    const DeepCollectionEquality().hash(_products),
    fulfillment,
    startTime,
    endTime,
    totalProducts,
  );

  /// Create a copy of InventoryInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryInfoDTOImplCopyWith<_$InventoryInfoDTOImpl> get copyWith =>
      __$$InventoryInfoDTOImplCopyWithImpl<_$InventoryInfoDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryInfoDTOImplToJson(this);
  }
}

abstract class _InventoryInfoDTO implements InventoryInfoDTO {
  const factory _InventoryInfoDTO({
    @JsonKey(name: 'response_code') required final String responseCode,
    @JsonKey(name: 'response_message') required final String responseMessage,
    required final String store,
    required final List<ItemInventoryDetailDTO> products,
    required final bool fulfillment,
    required final String startTime,
    required final String endTime,
    @JsonKey(name: 'total_products') required final int totalProducts,
  }) = _$InventoryInfoDTOImpl;

  factory _InventoryInfoDTO.fromJson(Map<String, dynamic> json) =
      _$InventoryInfoDTOImpl.fromJson;

  @override
  @JsonKey(name: 'response_code')
  String get responseCode;
  @override
  @JsonKey(name: 'response_message')
  String get responseMessage;
  @override
  String get store;
  @override
  List<ItemInventoryDetailDTO> get products;
  @override
  bool get fulfillment;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  @JsonKey(name: 'total_products')
  int get totalProducts;

  /// Create a copy of InventoryInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InventoryInfoDTOImplCopyWith<_$InventoryInfoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
