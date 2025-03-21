// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_stock_product_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ResponseStockProductDTO _$ResponseStockProductDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ResponseStockProductDTO.fromJson(json);
}

/// @nodoc
mixin _$ResponseStockProductDTO {
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  /// Serializes this ResponseStockProductDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseStockProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseStockProductDTOCopyWith<ResponseStockProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseStockProductDTOCopyWith<$Res> {
  factory $ResponseStockProductDTOCopyWith(
    ResponseStockProductDTO value,
    $Res Function(ResponseStockProductDTO) then,
  ) = _$ResponseStockProductDTOCopyWithImpl<$Res, ResponseStockProductDTO>;
  @useResult
  $Res call({double quantity, String unit});
}

/// @nodoc
class _$ResponseStockProductDTOCopyWithImpl<
  $Res,
  $Val extends ResponseStockProductDTO
>
    implements $ResponseStockProductDTOCopyWith<$Res> {
  _$ResponseStockProductDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseStockProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? quantity = null, Object? unit = null}) {
    return _then(
      _value.copyWith(
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as double,
            unit:
                null == unit
                    ? _value.unit
                    : unit // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ResponseStockProductDTOImplCopyWith<$Res>
    implements $ResponseStockProductDTOCopyWith<$Res> {
  factory _$$ResponseStockProductDTOImplCopyWith(
    _$ResponseStockProductDTOImpl value,
    $Res Function(_$ResponseStockProductDTOImpl) then,
  ) = __$$ResponseStockProductDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double quantity, String unit});
}

/// @nodoc
class __$$ResponseStockProductDTOImplCopyWithImpl<$Res>
    extends
        _$ResponseStockProductDTOCopyWithImpl<
          $Res,
          _$ResponseStockProductDTOImpl
        >
    implements _$$ResponseStockProductDTOImplCopyWith<$Res> {
  __$$ResponseStockProductDTOImplCopyWithImpl(
    _$ResponseStockProductDTOImpl _value,
    $Res Function(_$ResponseStockProductDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResponseStockProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? quantity = null, Object? unit = null}) {
    return _then(
      _$ResponseStockProductDTOImpl(
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as double,
        unit:
            null == unit
                ? _value.unit
                : unit // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseStockProductDTOImpl implements _ResponseStockProductDTO {
  const _$ResponseStockProductDTOImpl({
    required this.quantity,
    required this.unit,
  });

  factory _$ResponseStockProductDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseStockProductDTOImplFromJson(json);

  @override
  final double quantity;
  @override
  final String unit;

  @override
  String toString() {
    return 'ResponseStockProductDTO(quantity: $quantity, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseStockProductDTOImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, quantity, unit);

  /// Create a copy of ResponseStockProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseStockProductDTOImplCopyWith<_$ResponseStockProductDTOImpl>
  get copyWith => __$$ResponseStockProductDTOImplCopyWithImpl<
    _$ResponseStockProductDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseStockProductDTOImplToJson(this);
  }
}

abstract class _ResponseStockProductDTO implements ResponseStockProductDTO {
  const factory _ResponseStockProductDTO({
    required final double quantity,
    required final String unit,
  }) = _$ResponseStockProductDTOImpl;

  factory _ResponseStockProductDTO.fromJson(Map<String, dynamic> json) =
      _$ResponseStockProductDTOImpl.fromJson;

  @override
  double get quantity;
  @override
  String get unit;

  /// Create a copy of ResponseStockProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseStockProductDTOImplCopyWith<_$ResponseStockProductDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
