// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ActiveOrder _$ActiveOrderFromJson(Map<String, dynamic> json) {
  return _ActiveOrder.fromJson(json);
}

/// @nodoc
mixin _$ActiveOrder {
  @JsonKey(name: 'magentoOrderId')
  int get orderId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this ActiveOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActiveOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveOrderCopyWith<ActiveOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveOrderCopyWith<$Res> {
  factory $ActiveOrderCopyWith(
    ActiveOrder value,
    $Res Function(ActiveOrder) then,
  ) = _$ActiveOrderCopyWithImpl<$Res, ActiveOrder>;
  @useResult
  $Res call({@JsonKey(name: 'magentoOrderId') int orderId, String status});
}

/// @nodoc
class _$ActiveOrderCopyWithImpl<$Res, $Val extends ActiveOrder>
    implements $ActiveOrderCopyWith<$Res> {
  _$ActiveOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? orderId = null, Object? status = null}) {
    return _then(
      _value.copyWith(
            orderId:
                null == orderId
                    ? _value.orderId
                    : orderId // ignore: cast_nullable_to_non_nullable
                        as int,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ActiveOrderImplCopyWith<$Res>
    implements $ActiveOrderCopyWith<$Res> {
  factory _$$ActiveOrderImplCopyWith(
    _$ActiveOrderImpl value,
    $Res Function(_$ActiveOrderImpl) then,
  ) = __$$ActiveOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'magentoOrderId') int orderId, String status});
}

/// @nodoc
class __$$ActiveOrderImplCopyWithImpl<$Res>
    extends _$ActiveOrderCopyWithImpl<$Res, _$ActiveOrderImpl>
    implements _$$ActiveOrderImplCopyWith<$Res> {
  __$$ActiveOrderImplCopyWithImpl(
    _$ActiveOrderImpl _value,
    $Res Function(_$ActiveOrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ActiveOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? orderId = null, Object? status = null}) {
    return _then(
      _$ActiveOrderImpl(
        orderId:
            null == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                    as int,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveOrderImpl implements _ActiveOrder {
  const _$ActiveOrderImpl({
    @JsonKey(name: 'magentoOrderId') required this.orderId,
    required this.status,
  });

  factory _$ActiveOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveOrderImplFromJson(json);

  @override
  @JsonKey(name: 'magentoOrderId')
  final int orderId;
  @override
  final String status;

  @override
  String toString() {
    return 'ActiveOrder(orderId: $orderId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, status);

  /// Create a copy of ActiveOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveOrderImplCopyWith<_$ActiveOrderImpl> get copyWith =>
      __$$ActiveOrderImplCopyWithImpl<_$ActiveOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveOrderImplToJson(this);
  }
}

abstract class _ActiveOrder implements ActiveOrder {
  const factory _ActiveOrder({
    @JsonKey(name: 'magentoOrderId') required final int orderId,
    required final String status,
  }) = _$ActiveOrderImpl;

  factory _ActiveOrder.fromJson(Map<String, dynamic> json) =
      _$ActiveOrderImpl.fromJson;

  @override
  @JsonKey(name: 'magentoOrderId')
  int get orderId;
  @override
  String get status;

  /// Create a copy of ActiveOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveOrderImplCopyWith<_$ActiveOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
