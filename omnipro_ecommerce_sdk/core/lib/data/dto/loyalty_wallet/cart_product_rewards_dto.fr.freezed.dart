// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_product_rewards_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CartProductRewardsDTO _$CartProductRewardsDTOFromJson(
  Map<String, dynamic> json,
) {
  return _CartProductRewardsDTO.fromJson(json);
}

/// @nodoc
mixin _$CartProductRewardsDTO {
  List<ProductRewardsDTO> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_points')
  double get totalPoints => throw _privateConstructorUsedError;
  String get success => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  /// Serializes this CartProductRewardsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartProductRewardsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartProductRewardsDTOCopyWith<CartProductRewardsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductRewardsDTOCopyWith<$Res> {
  factory $CartProductRewardsDTOCopyWith(
    CartProductRewardsDTO value,
    $Res Function(CartProductRewardsDTO) then,
  ) = _$CartProductRewardsDTOCopyWithImpl<$Res, CartProductRewardsDTO>;
  @useResult
  $Res call({
    List<ProductRewardsDTO> items,
    @JsonKey(name: 'total_points') double totalPoints,
    String success,
    String error,
  });
}

/// @nodoc
class _$CartProductRewardsDTOCopyWithImpl<
  $Res,
  $Val extends CartProductRewardsDTO
>
    implements $CartProductRewardsDTOCopyWith<$Res> {
  _$CartProductRewardsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartProductRewardsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalPoints = null,
    Object? success = null,
    Object? error = null,
  }) {
    return _then(
      _value.copyWith(
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<ProductRewardsDTO>,
            totalPoints:
                null == totalPoints
                    ? _value.totalPoints
                    : totalPoints // ignore: cast_nullable_to_non_nullable
                        as double,
            success:
                null == success
                    ? _value.success
                    : success // ignore: cast_nullable_to_non_nullable
                        as String,
            error:
                null == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CartProductRewardsDTOImplCopyWith<$Res>
    implements $CartProductRewardsDTOCopyWith<$Res> {
  factory _$$CartProductRewardsDTOImplCopyWith(
    _$CartProductRewardsDTOImpl value,
    $Res Function(_$CartProductRewardsDTOImpl) then,
  ) = __$$CartProductRewardsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ProductRewardsDTO> items,
    @JsonKey(name: 'total_points') double totalPoints,
    String success,
    String error,
  });
}

/// @nodoc
class __$$CartProductRewardsDTOImplCopyWithImpl<$Res>
    extends
        _$CartProductRewardsDTOCopyWithImpl<$Res, _$CartProductRewardsDTOImpl>
    implements _$$CartProductRewardsDTOImplCopyWith<$Res> {
  __$$CartProductRewardsDTOImplCopyWithImpl(
    _$CartProductRewardsDTOImpl _value,
    $Res Function(_$CartProductRewardsDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartProductRewardsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalPoints = null,
    Object? success = null,
    Object? error = null,
  }) {
    return _then(
      _$CartProductRewardsDTOImpl(
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<ProductRewardsDTO>,
        totalPoints:
            null == totalPoints
                ? _value.totalPoints
                : totalPoints // ignore: cast_nullable_to_non_nullable
                    as double,
        success:
            null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                    as String,
        error:
            null == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CartProductRewardsDTOImpl implements _CartProductRewardsDTO {
  const _$CartProductRewardsDTOImpl({
    required final List<ProductRewardsDTO> items,
    @JsonKey(name: 'total_points') required this.totalPoints,
    required this.success,
    required this.error,
  }) : _items = items;

  factory _$CartProductRewardsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartProductRewardsDTOImplFromJson(json);

  final List<ProductRewardsDTO> _items;
  @override
  List<ProductRewardsDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'total_points')
  final double totalPoints;
  @override
  final String success;
  @override
  final String error;

  @override
  String toString() {
    return 'CartProductRewardsDTO(items: $items, totalPoints: $totalPoints, success: $success, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductRewardsDTOImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalPoints, totalPoints) ||
                other.totalPoints == totalPoints) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    totalPoints,
    success,
    error,
  );

  /// Create a copy of CartProductRewardsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductRewardsDTOImplCopyWith<_$CartProductRewardsDTOImpl>
  get copyWith =>
      __$$CartProductRewardsDTOImplCopyWithImpl<_$CartProductRewardsDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CartProductRewardsDTOImplToJson(this);
  }
}

abstract class _CartProductRewardsDTO implements CartProductRewardsDTO {
  const factory _CartProductRewardsDTO({
    required final List<ProductRewardsDTO> items,
    @JsonKey(name: 'total_points') required final double totalPoints,
    required final String success,
    required final String error,
  }) = _$CartProductRewardsDTOImpl;

  factory _CartProductRewardsDTO.fromJson(Map<String, dynamic> json) =
      _$CartProductRewardsDTOImpl.fromJson;

  @override
  List<ProductRewardsDTO> get items;
  @override
  @JsonKey(name: 'total_points')
  double get totalPoints;
  @override
  String get success;
  @override
  String get error;

  /// Create a copy of CartProductRewardsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartProductRewardsDTOImplCopyWith<_$CartProductRewardsDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductRewardsDTO _$ProductRewardsDTOFromJson(Map<String, dynamic> json) {
  return _ProductRewardsDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductRewardsDTO {
  double get points => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  /// Serializes this ProductRewardsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductRewardsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductRewardsDTOCopyWith<ProductRewardsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductRewardsDTOCopyWith<$Res> {
  factory $ProductRewardsDTOCopyWith(
    ProductRewardsDTO value,
    $Res Function(ProductRewardsDTO) then,
  ) = _$ProductRewardsDTOCopyWithImpl<$Res, ProductRewardsDTO>;
  @useResult
  $Res call({double points, String sku, String error});
}

/// @nodoc
class _$ProductRewardsDTOCopyWithImpl<$Res, $Val extends ProductRewardsDTO>
    implements $ProductRewardsDTOCopyWith<$Res> {
  _$ProductRewardsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductRewardsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? points = null, Object? sku = null, Object? error = null}) {
    return _then(
      _value.copyWith(
            points:
                null == points
                    ? _value.points
                    : points // ignore: cast_nullable_to_non_nullable
                        as double,
            sku:
                null == sku
                    ? _value.sku
                    : sku // ignore: cast_nullable_to_non_nullable
                        as String,
            error:
                null == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductRewardsDTOImplCopyWith<$Res>
    implements $ProductRewardsDTOCopyWith<$Res> {
  factory _$$ProductRewardsDTOImplCopyWith(
    _$ProductRewardsDTOImpl value,
    $Res Function(_$ProductRewardsDTOImpl) then,
  ) = __$$ProductRewardsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double points, String sku, String error});
}

/// @nodoc
class __$$ProductRewardsDTOImplCopyWithImpl<$Res>
    extends _$ProductRewardsDTOCopyWithImpl<$Res, _$ProductRewardsDTOImpl>
    implements _$$ProductRewardsDTOImplCopyWith<$Res> {
  __$$ProductRewardsDTOImplCopyWithImpl(
    _$ProductRewardsDTOImpl _value,
    $Res Function(_$ProductRewardsDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductRewardsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? points = null, Object? sku = null, Object? error = null}) {
    return _then(
      _$ProductRewardsDTOImpl(
        points:
            null == points
                ? _value.points
                : points // ignore: cast_nullable_to_non_nullable
                    as double,
        sku:
            null == sku
                ? _value.sku
                : sku // ignore: cast_nullable_to_non_nullable
                    as String,
        error:
            null == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductRewardsDTOImpl implements _ProductRewardsDTO {
  const _$ProductRewardsDTOImpl({
    required this.points,
    required this.sku,
    required this.error,
  });

  factory _$ProductRewardsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductRewardsDTOImplFromJson(json);

  @override
  final double points;
  @override
  final String sku;
  @override
  final String error;

  @override
  String toString() {
    return 'ProductRewardsDTO(points: $points, sku: $sku, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRewardsDTOImpl &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, points, sku, error);

  /// Create a copy of ProductRewardsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRewardsDTOImplCopyWith<_$ProductRewardsDTOImpl> get copyWith =>
      __$$ProductRewardsDTOImplCopyWithImpl<_$ProductRewardsDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductRewardsDTOImplToJson(this);
  }
}

abstract class _ProductRewardsDTO implements ProductRewardsDTO {
  const factory _ProductRewardsDTO({
    required final double points,
    required final String sku,
    required final String error,
  }) = _$ProductRewardsDTOImpl;

  factory _ProductRewardsDTO.fromJson(Map<String, dynamic> json) =
      _$ProductRewardsDTOImpl.fromJson;

  @override
  double get points;
  @override
  String get sku;
  @override
  String get error;

  /// Create a copy of ProductRewardsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductRewardsDTOImplCopyWith<_$ProductRewardsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
