// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_product_rewards.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CartProductRewards {
  List<ProductRewards> get items => throw _privateConstructorUsedError;
  double get totalPoints => throw _privateConstructorUsedError;
  String get success => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  /// Create a copy of CartProductRewards
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartProductRewardsCopyWith<CartProductRewards> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductRewardsCopyWith<$Res> {
  factory $CartProductRewardsCopyWith(
    CartProductRewards value,
    $Res Function(CartProductRewards) then,
  ) = _$CartProductRewardsCopyWithImpl<$Res, CartProductRewards>;
  @useResult
  $Res call({
    List<ProductRewards> items,
    double totalPoints,
    String success,
    String error,
  });
}

/// @nodoc
class _$CartProductRewardsCopyWithImpl<$Res, $Val extends CartProductRewards>
    implements $CartProductRewardsCopyWith<$Res> {
  _$CartProductRewardsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartProductRewards
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
                        as List<ProductRewards>,
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
abstract class _$$CartProductRewardsImplCopyWith<$Res>
    implements $CartProductRewardsCopyWith<$Res> {
  factory _$$CartProductRewardsImplCopyWith(
    _$CartProductRewardsImpl value,
    $Res Function(_$CartProductRewardsImpl) then,
  ) = __$$CartProductRewardsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ProductRewards> items,
    double totalPoints,
    String success,
    String error,
  });
}

/// @nodoc
class __$$CartProductRewardsImplCopyWithImpl<$Res>
    extends _$CartProductRewardsCopyWithImpl<$Res, _$CartProductRewardsImpl>
    implements _$$CartProductRewardsImplCopyWith<$Res> {
  __$$CartProductRewardsImplCopyWithImpl(
    _$CartProductRewardsImpl _value,
    $Res Function(_$CartProductRewardsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartProductRewards
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
      _$CartProductRewardsImpl(
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<ProductRewards>,
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

class _$CartProductRewardsImpl implements _CartProductRewards {
  const _$CartProductRewardsImpl({
    required final List<ProductRewards> items,
    required this.totalPoints,
    required this.success,
    required this.error,
  }) : _items = items;

  final List<ProductRewards> _items;
  @override
  List<ProductRewards> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final double totalPoints;
  @override
  final String success;
  @override
  final String error;

  @override
  String toString() {
    return 'CartProductRewards(items: $items, totalPoints: $totalPoints, success: $success, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductRewardsImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalPoints, totalPoints) ||
                other.totalPoints == totalPoints) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    totalPoints,
    success,
    error,
  );

  /// Create a copy of CartProductRewards
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductRewardsImplCopyWith<_$CartProductRewardsImpl> get copyWith =>
      __$$CartProductRewardsImplCopyWithImpl<_$CartProductRewardsImpl>(
        this,
        _$identity,
      );
}

abstract class _CartProductRewards implements CartProductRewards {
  const factory _CartProductRewards({
    required final List<ProductRewards> items,
    required final double totalPoints,
    required final String success,
    required final String error,
  }) = _$CartProductRewardsImpl;

  @override
  List<ProductRewards> get items;
  @override
  double get totalPoints;
  @override
  String get success;
  @override
  String get error;

  /// Create a copy of CartProductRewards
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartProductRewardsImplCopyWith<_$CartProductRewardsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductRewards {
  double get points => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  /// Create a copy of ProductRewards
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductRewardsCopyWith<ProductRewards> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductRewardsCopyWith<$Res> {
  factory $ProductRewardsCopyWith(
    ProductRewards value,
    $Res Function(ProductRewards) then,
  ) = _$ProductRewardsCopyWithImpl<$Res, ProductRewards>;
  @useResult
  $Res call({double points, String sku, String error});
}

/// @nodoc
class _$ProductRewardsCopyWithImpl<$Res, $Val extends ProductRewards>
    implements $ProductRewardsCopyWith<$Res> {
  _$ProductRewardsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductRewards
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
abstract class _$$ProductRewardsImplCopyWith<$Res>
    implements $ProductRewardsCopyWith<$Res> {
  factory _$$ProductRewardsImplCopyWith(
    _$ProductRewardsImpl value,
    $Res Function(_$ProductRewardsImpl) then,
  ) = __$$ProductRewardsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double points, String sku, String error});
}

/// @nodoc
class __$$ProductRewardsImplCopyWithImpl<$Res>
    extends _$ProductRewardsCopyWithImpl<$Res, _$ProductRewardsImpl>
    implements _$$ProductRewardsImplCopyWith<$Res> {
  __$$ProductRewardsImplCopyWithImpl(
    _$ProductRewardsImpl _value,
    $Res Function(_$ProductRewardsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductRewards
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? points = null, Object? sku = null, Object? error = null}) {
    return _then(
      _$ProductRewardsImpl(
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

class _$ProductRewardsImpl implements _ProductRewards {
  const _$ProductRewardsImpl({
    required this.points,
    required this.sku,
    required this.error,
  });

  @override
  final double points;
  @override
  final String sku;
  @override
  final String error;

  @override
  String toString() {
    return 'ProductRewards(points: $points, sku: $sku, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRewardsImpl &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, points, sku, error);

  /// Create a copy of ProductRewards
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRewardsImplCopyWith<_$ProductRewardsImpl> get copyWith =>
      __$$ProductRewardsImplCopyWithImpl<_$ProductRewardsImpl>(
        this,
        _$identity,
      );
}

abstract class _ProductRewards implements ProductRewards {
  const factory _ProductRewards({
    required final double points,
    required final String sku,
    required final String error,
  }) = _$ProductRewardsImpl;

  @override
  double get points;
  @override
  String get sku;
  @override
  String get error;

  /// Create a copy of ProductRewards
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductRewardsImplCopyWith<_$ProductRewardsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
