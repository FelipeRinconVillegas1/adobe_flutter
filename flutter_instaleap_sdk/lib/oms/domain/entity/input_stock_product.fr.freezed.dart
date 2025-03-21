// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_stock_product.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

InputStockProduct _$InputStockProductFromJson(Map<String, dynamic> json) {
  return _InputStockProduct.fromJson(json);
}

/// @nodoc
mixin _$InputStockProduct {
  String get sourceCode => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get productUnit => throw _privateConstructorUsedError;
  List<String> get barcodes => throw _privateConstructorUsedError;

  /// Serializes this InputStockProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputStockProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputStockProductCopyWith<InputStockProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputStockProductCopyWith<$Res> {
  factory $InputStockProductCopyWith(
    InputStockProduct value,
    $Res Function(InputStockProduct) then,
  ) = _$InputStockProductCopyWithImpl<$Res, InputStockProduct>;
  @useResult
  $Res call({
    String sourceCode,
    String productName,
    String productUnit,
    List<String> barcodes,
  });
}

/// @nodoc
class _$InputStockProductCopyWithImpl<$Res, $Val extends InputStockProduct>
    implements $InputStockProductCopyWith<$Res> {
  _$InputStockProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputStockProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceCode = null,
    Object? productName = null,
    Object? productUnit = null,
    Object? barcodes = null,
  }) {
    return _then(
      _value.copyWith(
            sourceCode:
                null == sourceCode
                    ? _value.sourceCode
                    : sourceCode // ignore: cast_nullable_to_non_nullable
                        as String,
            productName:
                null == productName
                    ? _value.productName
                    : productName // ignore: cast_nullable_to_non_nullable
                        as String,
            productUnit:
                null == productUnit
                    ? _value.productUnit
                    : productUnit // ignore: cast_nullable_to_non_nullable
                        as String,
            barcodes:
                null == barcodes
                    ? _value.barcodes
                    : barcodes // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InputStockProductImplCopyWith<$Res>
    implements $InputStockProductCopyWith<$Res> {
  factory _$$InputStockProductImplCopyWith(
    _$InputStockProductImpl value,
    $Res Function(_$InputStockProductImpl) then,
  ) = __$$InputStockProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sourceCode,
    String productName,
    String productUnit,
    List<String> barcodes,
  });
}

/// @nodoc
class __$$InputStockProductImplCopyWithImpl<$Res>
    extends _$InputStockProductCopyWithImpl<$Res, _$InputStockProductImpl>
    implements _$$InputStockProductImplCopyWith<$Res> {
  __$$InputStockProductImplCopyWithImpl(
    _$InputStockProductImpl _value,
    $Res Function(_$InputStockProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InputStockProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceCode = null,
    Object? productName = null,
    Object? productUnit = null,
    Object? barcodes = null,
  }) {
    return _then(
      _$InputStockProductImpl(
        sourceCode:
            null == sourceCode
                ? _value.sourceCode
                : sourceCode // ignore: cast_nullable_to_non_nullable
                    as String,
        productName:
            null == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                    as String,
        productUnit:
            null == productUnit
                ? _value.productUnit
                : productUnit // ignore: cast_nullable_to_non_nullable
                    as String,
        barcodes:
            null == barcodes
                ? _value._barcodes
                : barcodes // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InputStockProductImpl implements _InputStockProduct {
  const _$InputStockProductImpl({
    required this.sourceCode,
    required this.productName,
    required this.productUnit,
    required final List<String> barcodes,
  }) : _barcodes = barcodes;

  factory _$InputStockProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputStockProductImplFromJson(json);

  @override
  final String sourceCode;
  @override
  final String productName;
  @override
  final String productUnit;
  final List<String> _barcodes;
  @override
  List<String> get barcodes {
    if (_barcodes is EqualUnmodifiableListView) return _barcodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_barcodes);
  }

  @override
  String toString() {
    return 'InputStockProduct(sourceCode: $sourceCode, productName: $productName, productUnit: $productUnit, barcodes: $barcodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputStockProductImpl &&
            (identical(other.sourceCode, sourceCode) ||
                other.sourceCode == sourceCode) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productUnit, productUnit) ||
                other.productUnit == productUnit) &&
            const DeepCollectionEquality().equals(other._barcodes, _barcodes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sourceCode,
    productName,
    productUnit,
    const DeepCollectionEquality().hash(_barcodes),
  );

  /// Create a copy of InputStockProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputStockProductImplCopyWith<_$InputStockProductImpl> get copyWith =>
      __$$InputStockProductImplCopyWithImpl<_$InputStockProductImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$InputStockProductImplToJson(this);
  }
}

abstract class _InputStockProduct implements InputStockProduct {
  const factory _InputStockProduct({
    required final String sourceCode,
    required final String productName,
    required final String productUnit,
    required final List<String> barcodes,
  }) = _$InputStockProductImpl;

  factory _InputStockProduct.fromJson(Map<String, dynamic> json) =
      _$InputStockProductImpl.fromJson;

  @override
  String get sourceCode;
  @override
  String get productName;
  @override
  String get productUnit;
  @override
  List<String> get barcodes;

  /// Create a copy of InputStockProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputStockProductImplCopyWith<_$InputStockProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
