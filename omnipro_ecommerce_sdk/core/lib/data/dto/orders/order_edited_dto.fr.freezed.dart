// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_edited_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrdersEditedDTO _$OrdersEditedDTOFromJson(Map<String, dynamic> json) {
  return _OrdersEditedDTO.fromJson(json);
}

/// @nodoc
mixin _$OrdersEditedDTO {
  @JsonKey(name: 'orders')
  List<OrderEditedDTO> get orders => throw _privateConstructorUsedError;

  /// Serializes this OrdersEditedDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrdersEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersEditedDTOCopyWith<OrdersEditedDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEditedDTOCopyWith<$Res> {
  factory $OrdersEditedDTOCopyWith(
    OrdersEditedDTO value,
    $Res Function(OrdersEditedDTO) then,
  ) = _$OrdersEditedDTOCopyWithImpl<$Res, OrdersEditedDTO>;
  @useResult
  $Res call({@JsonKey(name: 'orders') List<OrderEditedDTO> orders});
}

/// @nodoc
class _$OrdersEditedDTOCopyWithImpl<$Res, $Val extends OrdersEditedDTO>
    implements $OrdersEditedDTOCopyWith<$Res> {
  _$OrdersEditedDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersEditedDTO
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
                        as List<OrderEditedDTO>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrdersEditedDTOImplCopyWith<$Res>
    implements $OrdersEditedDTOCopyWith<$Res> {
  factory _$$OrdersEditedDTOImplCopyWith(
    _$OrdersEditedDTOImpl value,
    $Res Function(_$OrdersEditedDTOImpl) then,
  ) = __$$OrdersEditedDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'orders') List<OrderEditedDTO> orders});
}

/// @nodoc
class __$$OrdersEditedDTOImplCopyWithImpl<$Res>
    extends _$OrdersEditedDTOCopyWithImpl<$Res, _$OrdersEditedDTOImpl>
    implements _$$OrdersEditedDTOImplCopyWith<$Res> {
  __$$OrdersEditedDTOImplCopyWithImpl(
    _$OrdersEditedDTOImpl _value,
    $Res Function(_$OrdersEditedDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? orders = null}) {
    return _then(
      _$OrdersEditedDTOImpl(
        orders:
            null == orders
                ? _value._orders
                : orders // ignore: cast_nullable_to_non_nullable
                    as List<OrderEditedDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersEditedDTOImpl implements _OrdersEditedDTO {
  const _$OrdersEditedDTOImpl({
    @JsonKey(name: 'orders') final List<OrderEditedDTO> orders = const [],
  }) : _orders = orders;

  factory _$OrdersEditedDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersEditedDTOImplFromJson(json);

  final List<OrderEditedDTO> _orders;
  @override
  @JsonKey(name: 'orders')
  List<OrderEditedDTO> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrdersEditedDTO(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersEditedDTOImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  /// Create a copy of OrdersEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersEditedDTOImplCopyWith<_$OrdersEditedDTOImpl> get copyWith =>
      __$$OrdersEditedDTOImplCopyWithImpl<_$OrdersEditedDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersEditedDTOImplToJson(this);
  }
}

abstract class _OrdersEditedDTO implements OrdersEditedDTO {
  const factory _OrdersEditedDTO({
    @JsonKey(name: 'orders') final List<OrderEditedDTO> orders,
  }) = _$OrdersEditedDTOImpl;

  factory _OrdersEditedDTO.fromJson(Map<String, dynamic> json) =
      _$OrdersEditedDTOImpl.fromJson;

  @override
  @JsonKey(name: 'orders')
  List<OrderEditedDTO> get orders;

  /// Create a copy of OrdersEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersEditedDTOImplCopyWith<_$OrdersEditedDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderEditedDTO _$OrderEditedDTOFromJson(Map<String, dynamic> json) {
  return _OrderEditedDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderEditedDTO {
  @JsonKey(name: 'order_id')
  int get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_products')
  OrderItemDeletedEditedDTO get deletedProducts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'edited_products')
  OrderItemEditedDTO get editedProducts => throw _privateConstructorUsedError;
  @JsonKey(name: 'added_products')
  OrderItemAddedDTO get addedProducts => throw _privateConstructorUsedError;

  /// Serializes this OrderEditedDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderEditedDTOCopyWith<OrderEditedDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEditedDTOCopyWith<$Res> {
  factory $OrderEditedDTOCopyWith(
    OrderEditedDTO value,
    $Res Function(OrderEditedDTO) then,
  ) = _$OrderEditedDTOCopyWithImpl<$Res, OrderEditedDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'order_id') int orderId,
    @JsonKey(name: 'deleted_products')
    OrderItemDeletedEditedDTO deletedProducts,
    @JsonKey(name: 'edited_products') OrderItemEditedDTO editedProducts,
    @JsonKey(name: 'added_products') OrderItemAddedDTO addedProducts,
  });

  $OrderItemDeletedEditedDTOCopyWith<$Res> get deletedProducts;
  $OrderItemEditedDTOCopyWith<$Res> get editedProducts;
  $OrderItemAddedDTOCopyWith<$Res> get addedProducts;
}

/// @nodoc
class _$OrderEditedDTOCopyWithImpl<$Res, $Val extends OrderEditedDTO>
    implements $OrderEditedDTOCopyWith<$Res> {
  _$OrderEditedDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderEditedDTO
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
                        as OrderItemDeletedEditedDTO,
            editedProducts:
                null == editedProducts
                    ? _value.editedProducts
                    : editedProducts // ignore: cast_nullable_to_non_nullable
                        as OrderItemEditedDTO,
            addedProducts:
                null == addedProducts
                    ? _value.addedProducts
                    : addedProducts // ignore: cast_nullable_to_non_nullable
                        as OrderItemAddedDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderItemDeletedEditedDTOCopyWith<$Res> get deletedProducts {
    return $OrderItemDeletedEditedDTOCopyWith<$Res>(_value.deletedProducts, (
      value,
    ) {
      return _then(_value.copyWith(deletedProducts: value) as $Val);
    });
  }

  /// Create a copy of OrderEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderItemEditedDTOCopyWith<$Res> get editedProducts {
    return $OrderItemEditedDTOCopyWith<$Res>(_value.editedProducts, (value) {
      return _then(_value.copyWith(editedProducts: value) as $Val);
    });
  }

  /// Create a copy of OrderEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderItemAddedDTOCopyWith<$Res> get addedProducts {
    return $OrderItemAddedDTOCopyWith<$Res>(_value.addedProducts, (value) {
      return _then(_value.copyWith(addedProducts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderEditedDTOImplCopyWith<$Res>
    implements $OrderEditedDTOCopyWith<$Res> {
  factory _$$OrderEditedDTOImplCopyWith(
    _$OrderEditedDTOImpl value,
    $Res Function(_$OrderEditedDTOImpl) then,
  ) = __$$OrderEditedDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'order_id') int orderId,
    @JsonKey(name: 'deleted_products')
    OrderItemDeletedEditedDTO deletedProducts,
    @JsonKey(name: 'edited_products') OrderItemEditedDTO editedProducts,
    @JsonKey(name: 'added_products') OrderItemAddedDTO addedProducts,
  });

  @override
  $OrderItemDeletedEditedDTOCopyWith<$Res> get deletedProducts;
  @override
  $OrderItemEditedDTOCopyWith<$Res> get editedProducts;
  @override
  $OrderItemAddedDTOCopyWith<$Res> get addedProducts;
}

/// @nodoc
class __$$OrderEditedDTOImplCopyWithImpl<$Res>
    extends _$OrderEditedDTOCopyWithImpl<$Res, _$OrderEditedDTOImpl>
    implements _$$OrderEditedDTOImplCopyWith<$Res> {
  __$$OrderEditedDTOImplCopyWithImpl(
    _$OrderEditedDTOImpl _value,
    $Res Function(_$OrderEditedDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderEditedDTO
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
      _$OrderEditedDTOImpl(
        orderId:
            null == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                    as int,
        deletedProducts:
            null == deletedProducts
                ? _value.deletedProducts
                : deletedProducts // ignore: cast_nullable_to_non_nullable
                    as OrderItemDeletedEditedDTO,
        editedProducts:
            null == editedProducts
                ? _value.editedProducts
                : editedProducts // ignore: cast_nullable_to_non_nullable
                    as OrderItemEditedDTO,
        addedProducts:
            null == addedProducts
                ? _value.addedProducts
                : addedProducts // ignore: cast_nullable_to_non_nullable
                    as OrderItemAddedDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderEditedDTOImpl implements _OrderEditedDTO {
  const _$OrderEditedDTOImpl({
    @JsonKey(name: 'order_id') required this.orderId,
    @JsonKey(name: 'deleted_products') required this.deletedProducts,
    @JsonKey(name: 'edited_products') required this.editedProducts,
    @JsonKey(name: 'added_products') required this.addedProducts,
  });

  factory _$OrderEditedDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderEditedDTOImplFromJson(json);

  @override
  @JsonKey(name: 'order_id')
  final int orderId;
  @override
  @JsonKey(name: 'deleted_products')
  final OrderItemDeletedEditedDTO deletedProducts;
  @override
  @JsonKey(name: 'edited_products')
  final OrderItemEditedDTO editedProducts;
  @override
  @JsonKey(name: 'added_products')
  final OrderItemAddedDTO addedProducts;

  @override
  String toString() {
    return 'OrderEditedDTO(orderId: $orderId, deletedProducts: $deletedProducts, editedProducts: $editedProducts, addedProducts: $addedProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderEditedDTOImpl &&
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

  /// Create a copy of OrderEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderEditedDTOImplCopyWith<_$OrderEditedDTOImpl> get copyWith =>
      __$$OrderEditedDTOImplCopyWithImpl<_$OrderEditedDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderEditedDTOImplToJson(this);
  }
}

abstract class _OrderEditedDTO implements OrderEditedDTO {
  const factory _OrderEditedDTO({
    @JsonKey(name: 'order_id') required final int orderId,
    @JsonKey(name: 'deleted_products')
    required final OrderItemDeletedEditedDTO deletedProducts,
    @JsonKey(name: 'edited_products')
    required final OrderItemEditedDTO editedProducts,
    @JsonKey(name: 'added_products')
    required final OrderItemAddedDTO addedProducts,
  }) = _$OrderEditedDTOImpl;

  factory _OrderEditedDTO.fromJson(Map<String, dynamic> json) =
      _$OrderEditedDTOImpl.fromJson;

  @override
  @JsonKey(name: 'order_id')
  int get orderId;
  @override
  @JsonKey(name: 'deleted_products')
  OrderItemDeletedEditedDTO get deletedProducts;
  @override
  @JsonKey(name: 'edited_products')
  OrderItemEditedDTO get editedProducts;
  @override
  @JsonKey(name: 'added_products')
  OrderItemAddedDTO get addedProducts;

  /// Create a copy of OrderEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderEditedDTOImplCopyWith<_$OrderEditedDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItemDeletedEditedDTO _$OrderItemDeletedEditedDTOFromJson(
  Map<String, dynamic> json,
) {
  return _OrderItemDeletedEditedDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderItemDeletedEditedDTO {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  List<OrderItemModifiedDTO> get items => throw _privateConstructorUsedError;

  /// Serializes this OrderItemDeletedEditedDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemDeletedEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemDeletedEditedDTOCopyWith<OrderItemDeletedEditedDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemDeletedEditedDTOCopyWith<$Res> {
  factory $OrderItemDeletedEditedDTOCopyWith(
    OrderItemDeletedEditedDTO value,
    $Res Function(OrderItemDeletedEditedDTO) then,
  ) = _$OrderItemDeletedEditedDTOCopyWithImpl<$Res, OrderItemDeletedEditedDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'total_count') int totalCount,
    List<OrderItemModifiedDTO> items,
  });
}

/// @nodoc
class _$OrderItemDeletedEditedDTOCopyWithImpl<
  $Res,
  $Val extends OrderItemDeletedEditedDTO
>
    implements $OrderItemDeletedEditedDTOCopyWith<$Res> {
  _$OrderItemDeletedEditedDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemDeletedEditedDTO
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
                        as List<OrderItemModifiedDTO>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderItemDeletedEditedDTOImplCopyWith<$Res>
    implements $OrderItemDeletedEditedDTOCopyWith<$Res> {
  factory _$$OrderItemDeletedEditedDTOImplCopyWith(
    _$OrderItemDeletedEditedDTOImpl value,
    $Res Function(_$OrderItemDeletedEditedDTOImpl) then,
  ) = __$$OrderItemDeletedEditedDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'total_count') int totalCount,
    List<OrderItemModifiedDTO> items,
  });
}

/// @nodoc
class __$$OrderItemDeletedEditedDTOImplCopyWithImpl<$Res>
    extends
        _$OrderItemDeletedEditedDTOCopyWithImpl<
          $Res,
          _$OrderItemDeletedEditedDTOImpl
        >
    implements _$$OrderItemDeletedEditedDTOImplCopyWith<$Res> {
  __$$OrderItemDeletedEditedDTOImplCopyWithImpl(
    _$OrderItemDeletedEditedDTOImpl _value,
    $Res Function(_$OrderItemDeletedEditedDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderItemDeletedEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalCount = null, Object? items = null}) {
    return _then(
      _$OrderItemDeletedEditedDTOImpl(
        totalCount:
            null == totalCount
                ? _value.totalCount
                : totalCount // ignore: cast_nullable_to_non_nullable
                    as int,
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<OrderItemModifiedDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemDeletedEditedDTOImpl implements _OrderItemDeletedEditedDTO {
  const _$OrderItemDeletedEditedDTOImpl({
    @JsonKey(name: 'total_count') required this.totalCount,
    final List<OrderItemModifiedDTO> items = const [],
  }) : _items = items;

  factory _$OrderItemDeletedEditedDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemDeletedEditedDTOImplFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  final List<OrderItemModifiedDTO> _items;
  @override
  @JsonKey()
  List<OrderItemModifiedDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'OrderItemDeletedEditedDTO(totalCount: $totalCount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemDeletedEditedDTOImpl &&
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

  /// Create a copy of OrderItemDeletedEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemDeletedEditedDTOImplCopyWith<_$OrderItemDeletedEditedDTOImpl>
  get copyWith => __$$OrderItemDeletedEditedDTOImplCopyWithImpl<
    _$OrderItemDeletedEditedDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemDeletedEditedDTOImplToJson(this);
  }
}

abstract class _OrderItemDeletedEditedDTO implements OrderItemDeletedEditedDTO {
  const factory _OrderItemDeletedEditedDTO({
    @JsonKey(name: 'total_count') required final int totalCount,
    final List<OrderItemModifiedDTO> items,
  }) = _$OrderItemDeletedEditedDTOImpl;

  factory _OrderItemDeletedEditedDTO.fromJson(Map<String, dynamic> json) =
      _$OrderItemDeletedEditedDTOImpl.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  List<OrderItemModifiedDTO> get items;

  /// Create a copy of OrderItemDeletedEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemDeletedEditedDTOImplCopyWith<_$OrderItemDeletedEditedDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

OrderItemEditedDTO _$OrderItemEditedDTOFromJson(Map<String, dynamic> json) {
  return _OrderItemEditedDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderItemEditedDTO {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  List<OrderItemModifiedDTO> get items => throw _privateConstructorUsedError;

  /// Serializes this OrderItemEditedDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemEditedDTOCopyWith<OrderItemEditedDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemEditedDTOCopyWith<$Res> {
  factory $OrderItemEditedDTOCopyWith(
    OrderItemEditedDTO value,
    $Res Function(OrderItemEditedDTO) then,
  ) = _$OrderItemEditedDTOCopyWithImpl<$Res, OrderItemEditedDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'total_count') int totalCount,
    List<OrderItemModifiedDTO> items,
  });
}

/// @nodoc
class _$OrderItemEditedDTOCopyWithImpl<$Res, $Val extends OrderItemEditedDTO>
    implements $OrderItemEditedDTOCopyWith<$Res> {
  _$OrderItemEditedDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemEditedDTO
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
                        as List<OrderItemModifiedDTO>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderItemEditedDTOImplCopyWith<$Res>
    implements $OrderItemEditedDTOCopyWith<$Res> {
  factory _$$OrderItemEditedDTOImplCopyWith(
    _$OrderItemEditedDTOImpl value,
    $Res Function(_$OrderItemEditedDTOImpl) then,
  ) = __$$OrderItemEditedDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'total_count') int totalCount,
    List<OrderItemModifiedDTO> items,
  });
}

/// @nodoc
class __$$OrderItemEditedDTOImplCopyWithImpl<$Res>
    extends _$OrderItemEditedDTOCopyWithImpl<$Res, _$OrderItemEditedDTOImpl>
    implements _$$OrderItemEditedDTOImplCopyWith<$Res> {
  __$$OrderItemEditedDTOImplCopyWithImpl(
    _$OrderItemEditedDTOImpl _value,
    $Res Function(_$OrderItemEditedDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderItemEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalCount = null, Object? items = null}) {
    return _then(
      _$OrderItemEditedDTOImpl(
        totalCount:
            null == totalCount
                ? _value.totalCount
                : totalCount // ignore: cast_nullable_to_non_nullable
                    as int,
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<OrderItemModifiedDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemEditedDTOImpl implements _OrderItemEditedDTO {
  const _$OrderItemEditedDTOImpl({
    @JsonKey(name: 'total_count') required this.totalCount,
    final List<OrderItemModifiedDTO> items = const [],
  }) : _items = items;

  factory _$OrderItemEditedDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemEditedDTOImplFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  final List<OrderItemModifiedDTO> _items;
  @override
  @JsonKey()
  List<OrderItemModifiedDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'OrderItemEditedDTO(totalCount: $totalCount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemEditedDTOImpl &&
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

  /// Create a copy of OrderItemEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemEditedDTOImplCopyWith<_$OrderItemEditedDTOImpl> get copyWith =>
      __$$OrderItemEditedDTOImplCopyWithImpl<_$OrderItemEditedDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemEditedDTOImplToJson(this);
  }
}

abstract class _OrderItemEditedDTO implements OrderItemEditedDTO {
  const factory _OrderItemEditedDTO({
    @JsonKey(name: 'total_count') required final int totalCount,
    final List<OrderItemModifiedDTO> items,
  }) = _$OrderItemEditedDTOImpl;

  factory _OrderItemEditedDTO.fromJson(Map<String, dynamic> json) =
      _$OrderItemEditedDTOImpl.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  List<OrderItemModifiedDTO> get items;

  /// Create a copy of OrderItemEditedDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemEditedDTOImplCopyWith<_$OrderItemEditedDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItemAddedDTO _$OrderItemAddedDTOFromJson(Map<String, dynamic> json) {
  return _OrderItemAddedDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderItemAddedDTO {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  List<OrderItemModifiedDTO> get items => throw _privateConstructorUsedError;

  /// Serializes this OrderItemAddedDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemAddedDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemAddedDTOCopyWith<OrderItemAddedDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemAddedDTOCopyWith<$Res> {
  factory $OrderItemAddedDTOCopyWith(
    OrderItemAddedDTO value,
    $Res Function(OrderItemAddedDTO) then,
  ) = _$OrderItemAddedDTOCopyWithImpl<$Res, OrderItemAddedDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'total_count') int totalCount,
    List<OrderItemModifiedDTO> items,
  });
}

/// @nodoc
class _$OrderItemAddedDTOCopyWithImpl<$Res, $Val extends OrderItemAddedDTO>
    implements $OrderItemAddedDTOCopyWith<$Res> {
  _$OrderItemAddedDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemAddedDTO
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
                        as List<OrderItemModifiedDTO>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderItemAddedDTOImplCopyWith<$Res>
    implements $OrderItemAddedDTOCopyWith<$Res> {
  factory _$$OrderItemAddedDTOImplCopyWith(
    _$OrderItemAddedDTOImpl value,
    $Res Function(_$OrderItemAddedDTOImpl) then,
  ) = __$$OrderItemAddedDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'total_count') int totalCount,
    List<OrderItemModifiedDTO> items,
  });
}

/// @nodoc
class __$$OrderItemAddedDTOImplCopyWithImpl<$Res>
    extends _$OrderItemAddedDTOCopyWithImpl<$Res, _$OrderItemAddedDTOImpl>
    implements _$$OrderItemAddedDTOImplCopyWith<$Res> {
  __$$OrderItemAddedDTOImplCopyWithImpl(
    _$OrderItemAddedDTOImpl _value,
    $Res Function(_$OrderItemAddedDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderItemAddedDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalCount = null, Object? items = null}) {
    return _then(
      _$OrderItemAddedDTOImpl(
        totalCount:
            null == totalCount
                ? _value.totalCount
                : totalCount // ignore: cast_nullable_to_non_nullable
                    as int,
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<OrderItemModifiedDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemAddedDTOImpl implements _OrderItemAddedDTO {
  const _$OrderItemAddedDTOImpl({
    @JsonKey(name: 'total_count') required this.totalCount,
    final List<OrderItemModifiedDTO> items = const [],
  }) : _items = items;

  factory _$OrderItemAddedDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemAddedDTOImplFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  final List<OrderItemModifiedDTO> _items;
  @override
  @JsonKey()
  List<OrderItemModifiedDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'OrderItemAddedDTO(totalCount: $totalCount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemAddedDTOImpl &&
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

  /// Create a copy of OrderItemAddedDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemAddedDTOImplCopyWith<_$OrderItemAddedDTOImpl> get copyWith =>
      __$$OrderItemAddedDTOImplCopyWithImpl<_$OrderItemAddedDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemAddedDTOImplToJson(this);
  }
}

abstract class _OrderItemAddedDTO implements OrderItemAddedDTO {
  const factory _OrderItemAddedDTO({
    @JsonKey(name: 'total_count') required final int totalCount,
    final List<OrderItemModifiedDTO> items,
  }) = _$OrderItemAddedDTOImpl;

  factory _OrderItemAddedDTO.fromJson(Map<String, dynamic> json) =
      _$OrderItemAddedDTOImpl.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  List<OrderItemModifiedDTO> get items;

  /// Create a copy of OrderItemAddedDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemAddedDTOImplCopyWith<_$OrderItemAddedDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItemModifiedDTO _$OrderItemModifiedDTOFromJson(Map<String, dynamic> json) {
  return _OrderItemModifiedDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderItemModifiedDTO {
  @JsonKey(name: 'product_name')
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_sku')
  String get productSku => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_url_key')
  String get productUrlKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_image')
  String get productImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_unit_of_measure')
  String? get salesUnitOfMeasure => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_qty')
  double get productQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_sale_price')
  MoneyDTO? get productSalePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_sale_row_total')
  MoneyDTO? get productSaleRowTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_sale_tax_price')
  MoneyDTO? get productSaleTaxPrice => throw _privateConstructorUsedError;

  /// Serializes this OrderItemModifiedDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemModifiedDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemModifiedDTOCopyWith<OrderItemModifiedDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemModifiedDTOCopyWith<$Res> {
  factory $OrderItemModifiedDTOCopyWith(
    OrderItemModifiedDTO value,
    $Res Function(OrderItemModifiedDTO) then,
  ) = _$OrderItemModifiedDTOCopyWithImpl<$Res, OrderItemModifiedDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'product_name') String productName,
    @JsonKey(name: 'product_sku') String productSku,
    @JsonKey(name: 'product_url_key') String productUrlKey,
    @JsonKey(name: 'product_image') String productImage,
    @JsonKey(name: 'sales_unit_of_measure') String? salesUnitOfMeasure,
    @JsonKey(name: 'product_qty') double productQty,
    @JsonKey(name: 'product_sale_price') MoneyDTO? productSalePrice,
    @JsonKey(name: 'product_sale_row_total') MoneyDTO? productSaleRowTotal,
    @JsonKey(name: 'product_sale_tax_price') MoneyDTO? productSaleTaxPrice,
  });

  $MoneyDTOCopyWith<$Res>? get productSalePrice;
  $MoneyDTOCopyWith<$Res>? get productSaleRowTotal;
  $MoneyDTOCopyWith<$Res>? get productSaleTaxPrice;
}

/// @nodoc
class _$OrderItemModifiedDTOCopyWithImpl<
  $Res,
  $Val extends OrderItemModifiedDTO
>
    implements $OrderItemModifiedDTOCopyWith<$Res> {
  _$OrderItemModifiedDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemModifiedDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? productSku = null,
    Object? productUrlKey = null,
    Object? productImage = null,
    Object? salesUnitOfMeasure = freezed,
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
                freezed == salesUnitOfMeasure
                    ? _value.salesUnitOfMeasure
                    : salesUnitOfMeasure // ignore: cast_nullable_to_non_nullable
                        as String?,
            productQty:
                null == productQty
                    ? _value.productQty
                    : productQty // ignore: cast_nullable_to_non_nullable
                        as double,
            productSalePrice:
                freezed == productSalePrice
                    ? _value.productSalePrice
                    : productSalePrice // ignore: cast_nullable_to_non_nullable
                        as MoneyDTO?,
            productSaleRowTotal:
                freezed == productSaleRowTotal
                    ? _value.productSaleRowTotal
                    : productSaleRowTotal // ignore: cast_nullable_to_non_nullable
                        as MoneyDTO?,
            productSaleTaxPrice:
                freezed == productSaleTaxPrice
                    ? _value.productSaleTaxPrice
                    : productSaleTaxPrice // ignore: cast_nullable_to_non_nullable
                        as MoneyDTO?,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderItemModifiedDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyDTOCopyWith<$Res>? get productSalePrice {
    if (_value.productSalePrice == null) {
      return null;
    }

    return $MoneyDTOCopyWith<$Res>(_value.productSalePrice!, (value) {
      return _then(_value.copyWith(productSalePrice: value) as $Val);
    });
  }

  /// Create a copy of OrderItemModifiedDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyDTOCopyWith<$Res>? get productSaleRowTotal {
    if (_value.productSaleRowTotal == null) {
      return null;
    }

    return $MoneyDTOCopyWith<$Res>(_value.productSaleRowTotal!, (value) {
      return _then(_value.copyWith(productSaleRowTotal: value) as $Val);
    });
  }

  /// Create a copy of OrderItemModifiedDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyDTOCopyWith<$Res>? get productSaleTaxPrice {
    if (_value.productSaleTaxPrice == null) {
      return null;
    }

    return $MoneyDTOCopyWith<$Res>(_value.productSaleTaxPrice!, (value) {
      return _then(_value.copyWith(productSaleTaxPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderItemModifiedDTOImplCopyWith<$Res>
    implements $OrderItemModifiedDTOCopyWith<$Res> {
  factory _$$OrderItemModifiedDTOImplCopyWith(
    _$OrderItemModifiedDTOImpl value,
    $Res Function(_$OrderItemModifiedDTOImpl) then,
  ) = __$$OrderItemModifiedDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'product_name') String productName,
    @JsonKey(name: 'product_sku') String productSku,
    @JsonKey(name: 'product_url_key') String productUrlKey,
    @JsonKey(name: 'product_image') String productImage,
    @JsonKey(name: 'sales_unit_of_measure') String? salesUnitOfMeasure,
    @JsonKey(name: 'product_qty') double productQty,
    @JsonKey(name: 'product_sale_price') MoneyDTO? productSalePrice,
    @JsonKey(name: 'product_sale_row_total') MoneyDTO? productSaleRowTotal,
    @JsonKey(name: 'product_sale_tax_price') MoneyDTO? productSaleTaxPrice,
  });

  @override
  $MoneyDTOCopyWith<$Res>? get productSalePrice;
  @override
  $MoneyDTOCopyWith<$Res>? get productSaleRowTotal;
  @override
  $MoneyDTOCopyWith<$Res>? get productSaleTaxPrice;
}

/// @nodoc
class __$$OrderItemModifiedDTOImplCopyWithImpl<$Res>
    extends _$OrderItemModifiedDTOCopyWithImpl<$Res, _$OrderItemModifiedDTOImpl>
    implements _$$OrderItemModifiedDTOImplCopyWith<$Res> {
  __$$OrderItemModifiedDTOImplCopyWithImpl(
    _$OrderItemModifiedDTOImpl _value,
    $Res Function(_$OrderItemModifiedDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderItemModifiedDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? productSku = null,
    Object? productUrlKey = null,
    Object? productImage = null,
    Object? salesUnitOfMeasure = freezed,
    Object? productQty = null,
    Object? productSalePrice = freezed,
    Object? productSaleRowTotal = freezed,
    Object? productSaleTaxPrice = freezed,
  }) {
    return _then(
      _$OrderItemModifiedDTOImpl(
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
            freezed == salesUnitOfMeasure
                ? _value.salesUnitOfMeasure
                : salesUnitOfMeasure // ignore: cast_nullable_to_non_nullable
                    as String?,
        productQty:
            null == productQty
                ? _value.productQty
                : productQty // ignore: cast_nullable_to_non_nullable
                    as double,
        productSalePrice:
            freezed == productSalePrice
                ? _value.productSalePrice
                : productSalePrice // ignore: cast_nullable_to_non_nullable
                    as MoneyDTO?,
        productSaleRowTotal:
            freezed == productSaleRowTotal
                ? _value.productSaleRowTotal
                : productSaleRowTotal // ignore: cast_nullable_to_non_nullable
                    as MoneyDTO?,
        productSaleTaxPrice:
            freezed == productSaleTaxPrice
                ? _value.productSaleTaxPrice
                : productSaleTaxPrice // ignore: cast_nullable_to_non_nullable
                    as MoneyDTO?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemModifiedDTOImpl implements _OrderItemModifiedDTO {
  const _$OrderItemModifiedDTOImpl({
    @JsonKey(name: 'product_name') required this.productName,
    @JsonKey(name: 'product_sku') required this.productSku,
    @JsonKey(name: 'product_url_key') required this.productUrlKey,
    @JsonKey(name: 'product_image') required this.productImage,
    @JsonKey(name: 'sales_unit_of_measure') this.salesUnitOfMeasure,
    @JsonKey(name: 'product_qty') required this.productQty,
    @JsonKey(name: 'product_sale_price') this.productSalePrice,
    @JsonKey(name: 'product_sale_row_total') this.productSaleRowTotal,
    @JsonKey(name: 'product_sale_tax_price') this.productSaleTaxPrice,
  });

  factory _$OrderItemModifiedDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemModifiedDTOImplFromJson(json);

  @override
  @JsonKey(name: 'product_name')
  final String productName;
  @override
  @JsonKey(name: 'product_sku')
  final String productSku;
  @override
  @JsonKey(name: 'product_url_key')
  final String productUrlKey;
  @override
  @JsonKey(name: 'product_image')
  final String productImage;
  @override
  @JsonKey(name: 'sales_unit_of_measure')
  final String? salesUnitOfMeasure;
  @override
  @JsonKey(name: 'product_qty')
  final double productQty;
  @override
  @JsonKey(name: 'product_sale_price')
  final MoneyDTO? productSalePrice;
  @override
  @JsonKey(name: 'product_sale_row_total')
  final MoneyDTO? productSaleRowTotal;
  @override
  @JsonKey(name: 'product_sale_tax_price')
  final MoneyDTO? productSaleTaxPrice;

  @override
  String toString() {
    return 'OrderItemModifiedDTO(productName: $productName, productSku: $productSku, productUrlKey: $productUrlKey, productImage: $productImage, salesUnitOfMeasure: $salesUnitOfMeasure, productQty: $productQty, productSalePrice: $productSalePrice, productSaleRowTotal: $productSaleRowTotal, productSaleTaxPrice: $productSaleTaxPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemModifiedDTOImpl &&
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

  /// Create a copy of OrderItemModifiedDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemModifiedDTOImplCopyWith<_$OrderItemModifiedDTOImpl>
  get copyWith =>
      __$$OrderItemModifiedDTOImplCopyWithImpl<_$OrderItemModifiedDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemModifiedDTOImplToJson(this);
  }
}

abstract class _OrderItemModifiedDTO implements OrderItemModifiedDTO {
  const factory _OrderItemModifiedDTO({
    @JsonKey(name: 'product_name') required final String productName,
    @JsonKey(name: 'product_sku') required final String productSku,
    @JsonKey(name: 'product_url_key') required final String productUrlKey,
    @JsonKey(name: 'product_image') required final String productImage,
    @JsonKey(name: 'sales_unit_of_measure') final String? salesUnitOfMeasure,
    @JsonKey(name: 'product_qty') required final double productQty,
    @JsonKey(name: 'product_sale_price') final MoneyDTO? productSalePrice,
    @JsonKey(name: 'product_sale_row_total')
    final MoneyDTO? productSaleRowTotal,
    @JsonKey(name: 'product_sale_tax_price')
    final MoneyDTO? productSaleTaxPrice,
  }) = _$OrderItemModifiedDTOImpl;

  factory _OrderItemModifiedDTO.fromJson(Map<String, dynamic> json) =
      _$OrderItemModifiedDTOImpl.fromJson;

  @override
  @JsonKey(name: 'product_name')
  String get productName;
  @override
  @JsonKey(name: 'product_sku')
  String get productSku;
  @override
  @JsonKey(name: 'product_url_key')
  String get productUrlKey;
  @override
  @JsonKey(name: 'product_image')
  String get productImage;
  @override
  @JsonKey(name: 'sales_unit_of_measure')
  String? get salesUnitOfMeasure;
  @override
  @JsonKey(name: 'product_qty')
  double get productQty;
  @override
  @JsonKey(name: 'product_sale_price')
  MoneyDTO? get productSalePrice;
  @override
  @JsonKey(name: 'product_sale_row_total')
  MoneyDTO? get productSaleRowTotal;
  @override
  @JsonKey(name: 'product_sale_tax_price')
  MoneyDTO? get productSaleTaxPrice;

  /// Create a copy of OrderItemModifiedDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemModifiedDTOImplCopyWith<_$OrderItemModifiedDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
