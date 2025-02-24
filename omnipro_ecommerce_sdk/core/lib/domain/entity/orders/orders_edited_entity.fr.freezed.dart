// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_edited_entity.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrdersEditedEntity _$OrdersEditedEntityFromJson(Map<String, dynamic> json) {
  return _OrdersEditedEntity.fromJson(json);
}

/// @nodoc
mixin _$OrdersEditedEntity {
  @JsonKey(name: 'orders')
  List<OrderEditedEntity> get orders => throw _privateConstructorUsedError;

  /// Serializes this OrdersEditedEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrdersEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersEditedEntityCopyWith<OrdersEditedEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEditedEntityCopyWith<$Res> {
  factory $OrdersEditedEntityCopyWith(
    OrdersEditedEntity value,
    $Res Function(OrdersEditedEntity) then,
  ) = _$OrdersEditedEntityCopyWithImpl<$Res, OrdersEditedEntity>;
  @useResult
  $Res call({@JsonKey(name: 'orders') List<OrderEditedEntity> orders});
}

/// @nodoc
class _$OrdersEditedEntityCopyWithImpl<$Res, $Val extends OrdersEditedEntity>
    implements $OrdersEditedEntityCopyWith<$Res> {
  _$OrdersEditedEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? orders = null}) {
    return _then(
      _value.copyWith(
            orders:
                null == orders
                    ? _value.orders
                    : orders // ignore: cast_nullable_to_non_nullable
                        as List<OrderEditedEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrdersEditedEntityImplCopyWith<$Res>
    implements $OrdersEditedEntityCopyWith<$Res> {
  factory _$$OrdersEditedEntityImplCopyWith(
    _$OrdersEditedEntityImpl value,
    $Res Function(_$OrdersEditedEntityImpl) then,
  ) = __$$OrdersEditedEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'orders') List<OrderEditedEntity> orders});
}

/// @nodoc
class __$$OrdersEditedEntityImplCopyWithImpl<$Res>
    extends _$OrdersEditedEntityCopyWithImpl<$Res, _$OrdersEditedEntityImpl>
    implements _$$OrdersEditedEntityImplCopyWith<$Res> {
  __$$OrdersEditedEntityImplCopyWithImpl(
    _$OrdersEditedEntityImpl _value,
    $Res Function(_$OrdersEditedEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? orders = null}) {
    return _then(
      _$OrdersEditedEntityImpl(
        orders:
            null == orders
                ? _value._orders
                : orders // ignore: cast_nullable_to_non_nullable
                    as List<OrderEditedEntity>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersEditedEntityImpl implements _OrdersEditedEntity {
  const _$OrdersEditedEntityImpl({
    @JsonKey(name: 'orders') final List<OrderEditedEntity> orders = const [],
  }) : _orders = orders;

  factory _$OrdersEditedEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersEditedEntityImplFromJson(json);

  final List<OrderEditedEntity> _orders;
  @override
  @JsonKey(name: 'orders')
  List<OrderEditedEntity> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrdersEditedEntity(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersEditedEntityImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  /// Create a copy of OrdersEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersEditedEntityImplCopyWith<_$OrdersEditedEntityImpl> get copyWith =>
      __$$OrdersEditedEntityImplCopyWithImpl<_$OrdersEditedEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersEditedEntityImplToJson(this);
  }
}

abstract class _OrdersEditedEntity implements OrdersEditedEntity {
  const factory _OrdersEditedEntity({
    @JsonKey(name: 'orders') final List<OrderEditedEntity> orders,
  }) = _$OrdersEditedEntityImpl;

  factory _OrdersEditedEntity.fromJson(Map<String, dynamic> json) =
      _$OrdersEditedEntityImpl.fromJson;

  @override
  @JsonKey(name: 'orders')
  List<OrderEditedEntity> get orders;

  /// Create a copy of OrdersEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersEditedEntityImplCopyWith<_$OrdersEditedEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderEditedEntity _$OrderEditedEntityFromJson(Map<String, dynamic> json) {
  return _OrderEditedEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderEditedEntity {
  int get orderId => throw _privateConstructorUsedError;
  OrderItemDeletedEditedEntity get deletedProducts =>
      throw _privateConstructorUsedError;
  OrderItemEditedEntity get editedProducts =>
      throw _privateConstructorUsedError;
  OrderItemAddedEntity get addedProducts => throw _privateConstructorUsedError;

  /// Serializes this OrderEditedEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderEditedEntityCopyWith<OrderEditedEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEditedEntityCopyWith<$Res> {
  factory $OrderEditedEntityCopyWith(
    OrderEditedEntity value,
    $Res Function(OrderEditedEntity) then,
  ) = _$OrderEditedEntityCopyWithImpl<$Res, OrderEditedEntity>;
  @useResult
  $Res call({
    int orderId,
    OrderItemDeletedEditedEntity deletedProducts,
    OrderItemEditedEntity editedProducts,
    OrderItemAddedEntity addedProducts,
  });

  $OrderItemDeletedEditedEntityCopyWith<$Res> get deletedProducts;
  $OrderItemEditedEntityCopyWith<$Res> get editedProducts;
  $OrderItemAddedEntityCopyWith<$Res> get addedProducts;
}

/// @nodoc
class _$OrderEditedEntityCopyWithImpl<$Res, $Val extends OrderEditedEntity>
    implements $OrderEditedEntityCopyWith<$Res> {
  _$OrderEditedEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? deletedProducts = null,
    Object? editedProducts = null,
    Object? addedProducts = null,
  }) {
    return _then(
      _value.copyWith(
            orderId:
                null == orderId
                    ? _value.orderId
                    : orderId // ignore: cast_nullable_to_non_nullable
                        as int,
            deletedProducts:
                null == deletedProducts
                    ? _value.deletedProducts
                    : deletedProducts // ignore: cast_nullable_to_non_nullable
                        as OrderItemDeletedEditedEntity,
            editedProducts:
                null == editedProducts
                    ? _value.editedProducts
                    : editedProducts // ignore: cast_nullable_to_non_nullable
                        as OrderItemEditedEntity,
            addedProducts:
                null == addedProducts
                    ? _value.addedProducts
                    : addedProducts // ignore: cast_nullable_to_non_nullable
                        as OrderItemAddedEntity,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderItemDeletedEditedEntityCopyWith<$Res> get deletedProducts {
    return $OrderItemDeletedEditedEntityCopyWith<$Res>(_value.deletedProducts, (
      value,
    ) {
      return _then(_value.copyWith(deletedProducts: value) as $Val);
    });
  }

  /// Create a copy of OrderEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderItemEditedEntityCopyWith<$Res> get editedProducts {
    return $OrderItemEditedEntityCopyWith<$Res>(_value.editedProducts, (value) {
      return _then(_value.copyWith(editedProducts: value) as $Val);
    });
  }

  /// Create a copy of OrderEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderItemAddedEntityCopyWith<$Res> get addedProducts {
    return $OrderItemAddedEntityCopyWith<$Res>(_value.addedProducts, (value) {
      return _then(_value.copyWith(addedProducts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderEditedEntityImplCopyWith<$Res>
    implements $OrderEditedEntityCopyWith<$Res> {
  factory _$$OrderEditedEntityImplCopyWith(
    _$OrderEditedEntityImpl value,
    $Res Function(_$OrderEditedEntityImpl) then,
  ) = __$$OrderEditedEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int orderId,
    OrderItemDeletedEditedEntity deletedProducts,
    OrderItemEditedEntity editedProducts,
    OrderItemAddedEntity addedProducts,
  });

  @override
  $OrderItemDeletedEditedEntityCopyWith<$Res> get deletedProducts;
  @override
  $OrderItemEditedEntityCopyWith<$Res> get editedProducts;
  @override
  $OrderItemAddedEntityCopyWith<$Res> get addedProducts;
}

/// @nodoc
class __$$OrderEditedEntityImplCopyWithImpl<$Res>
    extends _$OrderEditedEntityCopyWithImpl<$Res, _$OrderEditedEntityImpl>
    implements _$$OrderEditedEntityImplCopyWith<$Res> {
  __$$OrderEditedEntityImplCopyWithImpl(
    _$OrderEditedEntityImpl _value,
    $Res Function(_$OrderEditedEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? deletedProducts = null,
    Object? editedProducts = null,
    Object? addedProducts = null,
  }) {
    return _then(
      _$OrderEditedEntityImpl(
        orderId:
            null == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                    as int,
        deletedProducts:
            null == deletedProducts
                ? _value.deletedProducts
                : deletedProducts // ignore: cast_nullable_to_non_nullable
                    as OrderItemDeletedEditedEntity,
        editedProducts:
            null == editedProducts
                ? _value.editedProducts
                : editedProducts // ignore: cast_nullable_to_non_nullable
                    as OrderItemEditedEntity,
        addedProducts:
            null == addedProducts
                ? _value.addedProducts
                : addedProducts // ignore: cast_nullable_to_non_nullable
                    as OrderItemAddedEntity,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderEditedEntityImpl implements _OrderEditedEntity {
  const _$OrderEditedEntityImpl({
    required this.orderId,
    required this.deletedProducts,
    required this.editedProducts,
    required this.addedProducts,
  });

  factory _$OrderEditedEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderEditedEntityImplFromJson(json);

  @override
  final int orderId;
  @override
  final OrderItemDeletedEditedEntity deletedProducts;
  @override
  final OrderItemEditedEntity editedProducts;
  @override
  final OrderItemAddedEntity addedProducts;

  @override
  String toString() {
    return 'OrderEditedEntity(orderId: $orderId, deletedProducts: $deletedProducts, editedProducts: $editedProducts, addedProducts: $addedProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderEditedEntityImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.deletedProducts, deletedProducts) ||
                other.deletedProducts == deletedProducts) &&
            (identical(other.editedProducts, editedProducts) ||
                other.editedProducts == editedProducts) &&
            (identical(other.addedProducts, addedProducts) ||
                other.addedProducts == addedProducts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    orderId,
    deletedProducts,
    editedProducts,
    addedProducts,
  );

  /// Create a copy of OrderEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderEditedEntityImplCopyWith<_$OrderEditedEntityImpl> get copyWith =>
      __$$OrderEditedEntityImplCopyWithImpl<_$OrderEditedEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderEditedEntityImplToJson(this);
  }
}

abstract class _OrderEditedEntity implements OrderEditedEntity {
  const factory _OrderEditedEntity({
    required final int orderId,
    required final OrderItemDeletedEditedEntity deletedProducts,
    required final OrderItemEditedEntity editedProducts,
    required final OrderItemAddedEntity addedProducts,
  }) = _$OrderEditedEntityImpl;

  factory _OrderEditedEntity.fromJson(Map<String, dynamic> json) =
      _$OrderEditedEntityImpl.fromJson;

  @override
  int get orderId;
  @override
  OrderItemDeletedEditedEntity get deletedProducts;
  @override
  OrderItemEditedEntity get editedProducts;
  @override
  OrderItemAddedEntity get addedProducts;

  /// Create a copy of OrderEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderEditedEntityImplCopyWith<_$OrderEditedEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItemDeletedEditedEntity _$OrderItemDeletedEditedEntityFromJson(
  Map<String, dynamic> json,
) {
  return _OrderItemDeletedEditedEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderItemDeletedEditedEntity {
  int get totalCount => throw _privateConstructorUsedError;
  List<OrderItemModifiedEntity> get items => throw _privateConstructorUsedError;

  /// Serializes this OrderItemDeletedEditedEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemDeletedEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemDeletedEditedEntityCopyWith<OrderItemDeletedEditedEntity>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemDeletedEditedEntityCopyWith<$Res> {
  factory $OrderItemDeletedEditedEntityCopyWith(
    OrderItemDeletedEditedEntity value,
    $Res Function(OrderItemDeletedEditedEntity) then,
  ) =
      _$OrderItemDeletedEditedEntityCopyWithImpl<
        $Res,
        OrderItemDeletedEditedEntity
      >;
  @useResult
  $Res call({int totalCount, List<OrderItemModifiedEntity> items});
}

/// @nodoc
class _$OrderItemDeletedEditedEntityCopyWithImpl<
  $Res,
  $Val extends OrderItemDeletedEditedEntity
>
    implements $OrderItemDeletedEditedEntityCopyWith<$Res> {
  _$OrderItemDeletedEditedEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemDeletedEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalCount = null, Object? items = null}) {
    return _then(
      _value.copyWith(
            totalCount:
                null == totalCount
                    ? _value.totalCount
                    : totalCount // ignore: cast_nullable_to_non_nullable
                        as int,
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<OrderItemModifiedEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderItemDeletedEditedEntityImplCopyWith<$Res>
    implements $OrderItemDeletedEditedEntityCopyWith<$Res> {
  factory _$$OrderItemDeletedEditedEntityImplCopyWith(
    _$OrderItemDeletedEditedEntityImpl value,
    $Res Function(_$OrderItemDeletedEditedEntityImpl) then,
  ) = __$$OrderItemDeletedEditedEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalCount, List<OrderItemModifiedEntity> items});
}

/// @nodoc
class __$$OrderItemDeletedEditedEntityImplCopyWithImpl<$Res>
    extends
        _$OrderItemDeletedEditedEntityCopyWithImpl<
          $Res,
          _$OrderItemDeletedEditedEntityImpl
        >
    implements _$$OrderItemDeletedEditedEntityImplCopyWith<$Res> {
  __$$OrderItemDeletedEditedEntityImplCopyWithImpl(
    _$OrderItemDeletedEditedEntityImpl _value,
    $Res Function(_$OrderItemDeletedEditedEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderItemDeletedEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalCount = null, Object? items = null}) {
    return _then(
      _$OrderItemDeletedEditedEntityImpl(
        totalCount:
            null == totalCount
                ? _value.totalCount
                : totalCount // ignore: cast_nullable_to_non_nullable
                    as int,
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<OrderItemModifiedEntity>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemDeletedEditedEntityImpl
    implements _OrderItemDeletedEditedEntity {
  const _$OrderItemDeletedEditedEntityImpl({
    required this.totalCount,
    final List<OrderItemModifiedEntity> items = const [],
  }) : _items = items;

  factory _$OrderItemDeletedEditedEntityImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$OrderItemDeletedEditedEntityImplFromJson(json);

  @override
  final int totalCount;
  final List<OrderItemModifiedEntity> _items;
  @override
  @JsonKey()
  List<OrderItemModifiedEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'OrderItemDeletedEditedEntity(totalCount: $totalCount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemDeletedEditedEntityImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalCount,
    const DeepCollectionEquality().hash(_items),
  );

  /// Create a copy of OrderItemDeletedEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemDeletedEditedEntityImplCopyWith<
    _$OrderItemDeletedEditedEntityImpl
  >
  get copyWith => __$$OrderItemDeletedEditedEntityImplCopyWithImpl<
    _$OrderItemDeletedEditedEntityImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemDeletedEditedEntityImplToJson(this);
  }
}

abstract class _OrderItemDeletedEditedEntity
    implements OrderItemDeletedEditedEntity {
  const factory _OrderItemDeletedEditedEntity({
    required final int totalCount,
    final List<OrderItemModifiedEntity> items,
  }) = _$OrderItemDeletedEditedEntityImpl;

  factory _OrderItemDeletedEditedEntity.fromJson(Map<String, dynamic> json) =
      _$OrderItemDeletedEditedEntityImpl.fromJson;

  @override
  int get totalCount;
  @override
  List<OrderItemModifiedEntity> get items;

  /// Create a copy of OrderItemDeletedEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemDeletedEditedEntityImplCopyWith<
    _$OrderItemDeletedEditedEntityImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

OrderItemEditedEntity _$OrderItemEditedEntityFromJson(
  Map<String, dynamic> json,
) {
  return _OrderItemEditedEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderItemEditedEntity {
  int get totalCount => throw _privateConstructorUsedError;
  List<OrderItemModifiedEntity> get items => throw _privateConstructorUsedError;

  /// Serializes this OrderItemEditedEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemEditedEntityCopyWith<OrderItemEditedEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemEditedEntityCopyWith<$Res> {
  factory $OrderItemEditedEntityCopyWith(
    OrderItemEditedEntity value,
    $Res Function(OrderItemEditedEntity) then,
  ) = _$OrderItemEditedEntityCopyWithImpl<$Res, OrderItemEditedEntity>;
  @useResult
  $Res call({int totalCount, List<OrderItemModifiedEntity> items});
}

/// @nodoc
class _$OrderItemEditedEntityCopyWithImpl<
  $Res,
  $Val extends OrderItemEditedEntity
>
    implements $OrderItemEditedEntityCopyWith<$Res> {
  _$OrderItemEditedEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalCount = null, Object? items = null}) {
    return _then(
      _value.copyWith(
            totalCount:
                null == totalCount
                    ? _value.totalCount
                    : totalCount // ignore: cast_nullable_to_non_nullable
                        as int,
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<OrderItemModifiedEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderItemEditedEntityImplCopyWith<$Res>
    implements $OrderItemEditedEntityCopyWith<$Res> {
  factory _$$OrderItemEditedEntityImplCopyWith(
    _$OrderItemEditedEntityImpl value,
    $Res Function(_$OrderItemEditedEntityImpl) then,
  ) = __$$OrderItemEditedEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalCount, List<OrderItemModifiedEntity> items});
}

/// @nodoc
class __$$OrderItemEditedEntityImplCopyWithImpl<$Res>
    extends
        _$OrderItemEditedEntityCopyWithImpl<$Res, _$OrderItemEditedEntityImpl>
    implements _$$OrderItemEditedEntityImplCopyWith<$Res> {
  __$$OrderItemEditedEntityImplCopyWithImpl(
    _$OrderItemEditedEntityImpl _value,
    $Res Function(_$OrderItemEditedEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderItemEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalCount = null, Object? items = null}) {
    return _then(
      _$OrderItemEditedEntityImpl(
        totalCount:
            null == totalCount
                ? _value.totalCount
                : totalCount // ignore: cast_nullable_to_non_nullable
                    as int,
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<OrderItemModifiedEntity>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemEditedEntityImpl implements _OrderItemEditedEntity {
  const _$OrderItemEditedEntityImpl({
    required this.totalCount,
    final List<OrderItemModifiedEntity> items = const [],
  }) : _items = items;

  factory _$OrderItemEditedEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemEditedEntityImplFromJson(json);

  @override
  final int totalCount;
  final List<OrderItemModifiedEntity> _items;
  @override
  @JsonKey()
  List<OrderItemModifiedEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'OrderItemEditedEntity(totalCount: $totalCount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemEditedEntityImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalCount,
    const DeepCollectionEquality().hash(_items),
  );

  /// Create a copy of OrderItemEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemEditedEntityImplCopyWith<_$OrderItemEditedEntityImpl>
  get copyWith =>
      __$$OrderItemEditedEntityImplCopyWithImpl<_$OrderItemEditedEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemEditedEntityImplToJson(this);
  }
}

abstract class _OrderItemEditedEntity implements OrderItemEditedEntity {
  const factory _OrderItemEditedEntity({
    required final int totalCount,
    final List<OrderItemModifiedEntity> items,
  }) = _$OrderItemEditedEntityImpl;

  factory _OrderItemEditedEntity.fromJson(Map<String, dynamic> json) =
      _$OrderItemEditedEntityImpl.fromJson;

  @override
  int get totalCount;
  @override
  List<OrderItemModifiedEntity> get items;

  /// Create a copy of OrderItemEditedEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemEditedEntityImplCopyWith<_$OrderItemEditedEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}

OrderItemAddedEntity _$OrderItemAddedEntityFromJson(Map<String, dynamic> json) {
  return _OrderItemAddedEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderItemAddedEntity {
  int get totalCount => throw _privateConstructorUsedError;
  List<OrderItemModifiedEntity> get items => throw _privateConstructorUsedError;

  /// Serializes this OrderItemAddedEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemAddedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemAddedEntityCopyWith<OrderItemAddedEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemAddedEntityCopyWith<$Res> {
  factory $OrderItemAddedEntityCopyWith(
    OrderItemAddedEntity value,
    $Res Function(OrderItemAddedEntity) then,
  ) = _$OrderItemAddedEntityCopyWithImpl<$Res, OrderItemAddedEntity>;
  @useResult
  $Res call({int totalCount, List<OrderItemModifiedEntity> items});
}

/// @nodoc
class _$OrderItemAddedEntityCopyWithImpl<
  $Res,
  $Val extends OrderItemAddedEntity
>
    implements $OrderItemAddedEntityCopyWith<$Res> {
  _$OrderItemAddedEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemAddedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalCount = null, Object? items = null}) {
    return _then(
      _value.copyWith(
            totalCount:
                null == totalCount
                    ? _value.totalCount
                    : totalCount // ignore: cast_nullable_to_non_nullable
                        as int,
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<OrderItemModifiedEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderItemAddedEntityImplCopyWith<$Res>
    implements $OrderItemAddedEntityCopyWith<$Res> {
  factory _$$OrderItemAddedEntityImplCopyWith(
    _$OrderItemAddedEntityImpl value,
    $Res Function(_$OrderItemAddedEntityImpl) then,
  ) = __$$OrderItemAddedEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalCount, List<OrderItemModifiedEntity> items});
}

/// @nodoc
class __$$OrderItemAddedEntityImplCopyWithImpl<$Res>
    extends _$OrderItemAddedEntityCopyWithImpl<$Res, _$OrderItemAddedEntityImpl>
    implements _$$OrderItemAddedEntityImplCopyWith<$Res> {
  __$$OrderItemAddedEntityImplCopyWithImpl(
    _$OrderItemAddedEntityImpl _value,
    $Res Function(_$OrderItemAddedEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderItemAddedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalCount = null, Object? items = null}) {
    return _then(
      _$OrderItemAddedEntityImpl(
        totalCount:
            null == totalCount
                ? _value.totalCount
                : totalCount // ignore: cast_nullable_to_non_nullable
                    as int,
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<OrderItemModifiedEntity>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemAddedEntityImpl implements _OrderItemAddedEntity {
  const _$OrderItemAddedEntityImpl({
    required this.totalCount,
    final List<OrderItemModifiedEntity> items = const [],
  }) : _items = items;

  factory _$OrderItemAddedEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemAddedEntityImplFromJson(json);

  @override
  final int totalCount;
  final List<OrderItemModifiedEntity> _items;
  @override
  @JsonKey()
  List<OrderItemModifiedEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'OrderItemAddedEntity(totalCount: $totalCount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemAddedEntityImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalCount,
    const DeepCollectionEquality().hash(_items),
  );

  /// Create a copy of OrderItemAddedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemAddedEntityImplCopyWith<_$OrderItemAddedEntityImpl>
  get copyWith =>
      __$$OrderItemAddedEntityImplCopyWithImpl<_$OrderItemAddedEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemAddedEntityImplToJson(this);
  }
}

abstract class _OrderItemAddedEntity implements OrderItemAddedEntity {
  const factory _OrderItemAddedEntity({
    required final int totalCount,
    final List<OrderItemModifiedEntity> items,
  }) = _$OrderItemAddedEntityImpl;

  factory _OrderItemAddedEntity.fromJson(Map<String, dynamic> json) =
      _$OrderItemAddedEntityImpl.fromJson;

  @override
  int get totalCount;
  @override
  List<OrderItemModifiedEntity> get items;

  /// Create a copy of OrderItemAddedEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemAddedEntityImplCopyWith<_$OrderItemAddedEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}

OrderItemModifiedEntity _$OrderItemModifiedEntityFromJson(
  Map<String, dynamic> json,
) {
  return _OrderItemModifiedEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderItemModifiedEntity {
  String get productName => throw _privateConstructorUsedError;
  String get productSku => throw _privateConstructorUsedError;
  String get productUrlKey => throw _privateConstructorUsedError;
  String get productImage => throw _privateConstructorUsedError;
  String get salesUnitOfMeasure => throw _privateConstructorUsedError;
  double get productQty => throw _privateConstructorUsedError;
  Money? get productSalePrice => throw _privateConstructorUsedError;
  Money? get productSaleRowTotal => throw _privateConstructorUsedError;
  Money? get productSaleTaxPrice => throw _privateConstructorUsedError;

  /// Serializes this OrderItemModifiedEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemModifiedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemModifiedEntityCopyWith<OrderItemModifiedEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemModifiedEntityCopyWith<$Res> {
  factory $OrderItemModifiedEntityCopyWith(
    OrderItemModifiedEntity value,
    $Res Function(OrderItemModifiedEntity) then,
  ) = _$OrderItemModifiedEntityCopyWithImpl<$Res, OrderItemModifiedEntity>;
  @useResult
  $Res call({
    String productName,
    String productSku,
    String productUrlKey,
    String productImage,
    String salesUnitOfMeasure,
    double productQty,
    Money? productSalePrice,
    Money? productSaleRowTotal,
    Money? productSaleTaxPrice,
  });
}

/// @nodoc
class _$OrderItemModifiedEntityCopyWithImpl<
  $Res,
  $Val extends OrderItemModifiedEntity
>
    implements $OrderItemModifiedEntityCopyWith<$Res> {
  _$OrderItemModifiedEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemModifiedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? productSku = null,
    Object? productUrlKey = null,
    Object? productImage = null,
    Object? salesUnitOfMeasure = null,
    Object? productQty = null,
    Object? productSalePrice = freezed,
    Object? productSaleRowTotal = freezed,
    Object? productSaleTaxPrice = freezed,
  }) {
    return _then(
      _value.copyWith(
            productName:
                null == productName
                    ? _value.productName
                    : productName // ignore: cast_nullable_to_non_nullable
                        as String,
            productSku:
                null == productSku
                    ? _value.productSku
                    : productSku // ignore: cast_nullable_to_non_nullable
                        as String,
            productUrlKey:
                null == productUrlKey
                    ? _value.productUrlKey
                    : productUrlKey // ignore: cast_nullable_to_non_nullable
                        as String,
            productImage:
                null == productImage
                    ? _value.productImage
                    : productImage // ignore: cast_nullable_to_non_nullable
                        as String,
            salesUnitOfMeasure:
                null == salesUnitOfMeasure
                    ? _value.salesUnitOfMeasure
                    : salesUnitOfMeasure // ignore: cast_nullable_to_non_nullable
                        as String,
            productQty:
                null == productQty
                    ? _value.productQty
                    : productQty // ignore: cast_nullable_to_non_nullable
                        as double,
            productSalePrice:
                freezed == productSalePrice
                    ? _value.productSalePrice
                    : productSalePrice // ignore: cast_nullable_to_non_nullable
                        as Money?,
            productSaleRowTotal:
                freezed == productSaleRowTotal
                    ? _value.productSaleRowTotal
                    : productSaleRowTotal // ignore: cast_nullable_to_non_nullable
                        as Money?,
            productSaleTaxPrice:
                freezed == productSaleTaxPrice
                    ? _value.productSaleTaxPrice
                    : productSaleTaxPrice // ignore: cast_nullable_to_non_nullable
                        as Money?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderItemModifiedEntityImplCopyWith<$Res>
    implements $OrderItemModifiedEntityCopyWith<$Res> {
  factory _$$OrderItemModifiedEntityImplCopyWith(
    _$OrderItemModifiedEntityImpl value,
    $Res Function(_$OrderItemModifiedEntityImpl) then,
  ) = __$$OrderItemModifiedEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String productName,
    String productSku,
    String productUrlKey,
    String productImage,
    String salesUnitOfMeasure,
    double productQty,
    Money? productSalePrice,
    Money? productSaleRowTotal,
    Money? productSaleTaxPrice,
  });
}

/// @nodoc
class __$$OrderItemModifiedEntityImplCopyWithImpl<$Res>
    extends
        _$OrderItemModifiedEntityCopyWithImpl<
          $Res,
          _$OrderItemModifiedEntityImpl
        >
    implements _$$OrderItemModifiedEntityImplCopyWith<$Res> {
  __$$OrderItemModifiedEntityImplCopyWithImpl(
    _$OrderItemModifiedEntityImpl _value,
    $Res Function(_$OrderItemModifiedEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderItemModifiedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? productSku = null,
    Object? productUrlKey = null,
    Object? productImage = null,
    Object? salesUnitOfMeasure = null,
    Object? productQty = null,
    Object? productSalePrice = freezed,
    Object? productSaleRowTotal = freezed,
    Object? productSaleTaxPrice = freezed,
  }) {
    return _then(
      _$OrderItemModifiedEntityImpl(
        productName:
            null == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                    as String,
        productSku:
            null == productSku
                ? _value.productSku
                : productSku // ignore: cast_nullable_to_non_nullable
                    as String,
        productUrlKey:
            null == productUrlKey
                ? _value.productUrlKey
                : productUrlKey // ignore: cast_nullable_to_non_nullable
                    as String,
        productImage:
            null == productImage
                ? _value.productImage
                : productImage // ignore: cast_nullable_to_non_nullable
                    as String,
        salesUnitOfMeasure:
            null == salesUnitOfMeasure
                ? _value.salesUnitOfMeasure
                : salesUnitOfMeasure // ignore: cast_nullable_to_non_nullable
                    as String,
        productQty:
            null == productQty
                ? _value.productQty
                : productQty // ignore: cast_nullable_to_non_nullable
                    as double,
        productSalePrice:
            freezed == productSalePrice
                ? _value.productSalePrice
                : productSalePrice // ignore: cast_nullable_to_non_nullable
                    as Money?,
        productSaleRowTotal:
            freezed == productSaleRowTotal
                ? _value.productSaleRowTotal
                : productSaleRowTotal // ignore: cast_nullable_to_non_nullable
                    as Money?,
        productSaleTaxPrice:
            freezed == productSaleTaxPrice
                ? _value.productSaleTaxPrice
                : productSaleTaxPrice // ignore: cast_nullable_to_non_nullable
                    as Money?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemModifiedEntityImpl implements _OrderItemModifiedEntity {
  const _$OrderItemModifiedEntityImpl({
    required this.productName,
    required this.productSku,
    required this.productUrlKey,
    required this.productImage,
    required this.salesUnitOfMeasure,
    required this.productQty,
    this.productSalePrice,
    this.productSaleRowTotal,
    this.productSaleTaxPrice,
  });

  factory _$OrderItemModifiedEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemModifiedEntityImplFromJson(json);

  @override
  final String productName;
  @override
  final String productSku;
  @override
  final String productUrlKey;
  @override
  final String productImage;
  @override
  final String salesUnitOfMeasure;
  @override
  final double productQty;
  @override
  final Money? productSalePrice;
  @override
  final Money? productSaleRowTotal;
  @override
  final Money? productSaleTaxPrice;

  @override
  String toString() {
    return 'OrderItemModifiedEntity(productName: $productName, productSku: $productSku, productUrlKey: $productUrlKey, productImage: $productImage, salesUnitOfMeasure: $salesUnitOfMeasure, productQty: $productQty, productSalePrice: $productSalePrice, productSaleRowTotal: $productSaleRowTotal, productSaleTaxPrice: $productSaleTaxPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemModifiedEntityImpl &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productSku, productSku) ||
                other.productSku == productSku) &&
            (identical(other.productUrlKey, productUrlKey) ||
                other.productUrlKey == productUrlKey) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.salesUnitOfMeasure, salesUnitOfMeasure) ||
                other.salesUnitOfMeasure == salesUnitOfMeasure) &&
            (identical(other.productQty, productQty) ||
                other.productQty == productQty) &&
            (identical(other.productSalePrice, productSalePrice) ||
                other.productSalePrice == productSalePrice) &&
            (identical(other.productSaleRowTotal, productSaleRowTotal) ||
                other.productSaleRowTotal == productSaleRowTotal) &&
            (identical(other.productSaleTaxPrice, productSaleTaxPrice) ||
                other.productSaleTaxPrice == productSaleTaxPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    productName,
    productSku,
    productUrlKey,
    productImage,
    salesUnitOfMeasure,
    productQty,
    productSalePrice,
    productSaleRowTotal,
    productSaleTaxPrice,
  );

  /// Create a copy of OrderItemModifiedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemModifiedEntityImplCopyWith<_$OrderItemModifiedEntityImpl>
  get copyWith => __$$OrderItemModifiedEntityImplCopyWithImpl<
    _$OrderItemModifiedEntityImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemModifiedEntityImplToJson(this);
  }
}

abstract class _OrderItemModifiedEntity implements OrderItemModifiedEntity {
  const factory _OrderItemModifiedEntity({
    required final String productName,
    required final String productSku,
    required final String productUrlKey,
    required final String productImage,
    required final String salesUnitOfMeasure,
    required final double productQty,
    final Money? productSalePrice,
    final Money? productSaleRowTotal,
    final Money? productSaleTaxPrice,
  }) = _$OrderItemModifiedEntityImpl;

  factory _OrderItemModifiedEntity.fromJson(Map<String, dynamic> json) =
      _$OrderItemModifiedEntityImpl.fromJson;

  @override
  String get productName;
  @override
  String get productSku;
  @override
  String get productUrlKey;
  @override
  String get productImage;
  @override
  String get salesUnitOfMeasure;
  @override
  double get productQty;
  @override
  Money? get productSalePrice;
  @override
  Money? get productSaleRowTotal;
  @override
  Money? get productSaleTaxPrice;

  /// Create a copy of OrderItemModifiedEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemModifiedEntityImplCopyWith<_$OrderItemModifiedEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
