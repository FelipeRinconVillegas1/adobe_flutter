// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WishList _$WishListFromJson(Map<String, dynamic> json) {
  return _WishList.fromJson(json);
}

/// @nodoc
mixin _$WishList {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'items_count')
  int get itemsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'items_v2')
  WishListItemV2 get items => throw _privateConstructorUsedError;

  /// Serializes this WishList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishListCopyWith<WishList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListCopyWith<$Res> {
  factory $WishListCopyWith(WishList value, $Res Function(WishList) then) =
      _$WishListCopyWithImpl<$Res, WishList>;
  @useResult
  $Res call({
    String id,
    String name,
    String visibility,
    @JsonKey(name: 'items_count') int itemsCount,
    @JsonKey(name: 'items_v2') WishListItemV2 items,
  });

  $WishListItemV2CopyWith<$Res> get items;
}

/// @nodoc
class _$WishListCopyWithImpl<$Res, $Val extends WishList>
    implements $WishListCopyWith<$Res> {
  _$WishListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? visibility = null,
    Object? itemsCount = null,
    Object? items = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            visibility:
                null == visibility
                    ? _value.visibility
                    : visibility // ignore: cast_nullable_to_non_nullable
                        as String,
            itemsCount:
                null == itemsCount
                    ? _value.itemsCount
                    : itemsCount // ignore: cast_nullable_to_non_nullable
                        as int,
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as WishListItemV2,
          )
          as $Val,
    );
  }

  /// Create a copy of WishList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WishListItemV2CopyWith<$Res> get items {
    return $WishListItemV2CopyWith<$Res>(_value.items, (value) {
      return _then(_value.copyWith(items: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WishListImplCopyWith<$Res>
    implements $WishListCopyWith<$Res> {
  factory _$$WishListImplCopyWith(
    _$WishListImpl value,
    $Res Function(_$WishListImpl) then,
  ) = __$$WishListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String visibility,
    @JsonKey(name: 'items_count') int itemsCount,
    @JsonKey(name: 'items_v2') WishListItemV2 items,
  });

  @override
  $WishListItemV2CopyWith<$Res> get items;
}

/// @nodoc
class __$$WishListImplCopyWithImpl<$Res>
    extends _$WishListCopyWithImpl<$Res, _$WishListImpl>
    implements _$$WishListImplCopyWith<$Res> {
  __$$WishListImplCopyWithImpl(
    _$WishListImpl _value,
    $Res Function(_$WishListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WishList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? visibility = null,
    Object? itemsCount = null,
    Object? items = null,
  }) {
    return _then(
      _$WishListImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        visibility:
            null == visibility
                ? _value.visibility
                : visibility // ignore: cast_nullable_to_non_nullable
                    as String,
        itemsCount:
            null == itemsCount
                ? _value.itemsCount
                : itemsCount // ignore: cast_nullable_to_non_nullable
                    as int,
        items:
            null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                    as WishListItemV2,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WishListImpl implements _WishList {
  const _$WishListImpl({
    required this.id,
    required this.name,
    required this.visibility,
    @JsonKey(name: 'items_count') this.itemsCount = 0,
    @JsonKey(name: 'items_v2') required this.items,
  });

  factory _$WishListImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishListImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String visibility;
  @override
  @JsonKey(name: 'items_count')
  final int itemsCount;
  @override
  @JsonKey(name: 'items_v2')
  final WishListItemV2 items;

  @override
  String toString() {
    return 'WishList(id: $id, name: $name, visibility: $visibility, itemsCount: $itemsCount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.itemsCount, itemsCount) ||
                other.itemsCount == itemsCount) &&
            (identical(other.items, items) || other.items == items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, visibility, itemsCount, items);

  /// Create a copy of WishList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishListImplCopyWith<_$WishListImpl> get copyWith =>
      __$$WishListImplCopyWithImpl<_$WishListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishListImplToJson(this);
  }
}

abstract class _WishList implements WishList {
  const factory _WishList({
    required final String id,
    required final String name,
    required final String visibility,
    @JsonKey(name: 'items_count') final int itemsCount,
    @JsonKey(name: 'items_v2') required final WishListItemV2 items,
  }) = _$WishListImpl;

  factory _WishList.fromJson(Map<String, dynamic> json) =
      _$WishListImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get visibility;
  @override
  @JsonKey(name: 'items_count')
  int get itemsCount;
  @override
  @JsonKey(name: 'items_v2')
  WishListItemV2 get items;

  /// Create a copy of WishList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishListImplCopyWith<_$WishListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WishListItemV2 _$WishListItemV2FromJson(Map<String, dynamic> json) {
  return _WishListItemV2.fromJson(json);
}

/// @nodoc
mixin _$WishListItemV2 {
  List<WishListItem> get items => throw _privateConstructorUsedError;

  /// Serializes this WishListItemV2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishListItemV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishListItemV2CopyWith<WishListItemV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListItemV2CopyWith<$Res> {
  factory $WishListItemV2CopyWith(
    WishListItemV2 value,
    $Res Function(WishListItemV2) then,
  ) = _$WishListItemV2CopyWithImpl<$Res, WishListItemV2>;
  @useResult
  $Res call({List<WishListItem> items});
}

/// @nodoc
class _$WishListItemV2CopyWithImpl<$Res, $Val extends WishListItemV2>
    implements $WishListItemV2CopyWith<$Res> {
  _$WishListItemV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishListItemV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null}) {
    return _then(
      _value.copyWith(
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<WishListItem>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WishListItemV2ImplCopyWith<$Res>
    implements $WishListItemV2CopyWith<$Res> {
  factory _$$WishListItemV2ImplCopyWith(
    _$WishListItemV2Impl value,
    $Res Function(_$WishListItemV2Impl) then,
  ) = __$$WishListItemV2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WishListItem> items});
}

/// @nodoc
class __$$WishListItemV2ImplCopyWithImpl<$Res>
    extends _$WishListItemV2CopyWithImpl<$Res, _$WishListItemV2Impl>
    implements _$$WishListItemV2ImplCopyWith<$Res> {
  __$$WishListItemV2ImplCopyWithImpl(
    _$WishListItemV2Impl _value,
    $Res Function(_$WishListItemV2Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of WishListItemV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null}) {
    return _then(
      _$WishListItemV2Impl(
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<WishListItem>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WishListItemV2Impl implements _WishListItemV2 {
  const _$WishListItemV2Impl({required final List<WishListItem> items})
    : _items = items;

  factory _$WishListItemV2Impl.fromJson(Map<String, dynamic> json) =>
      _$$WishListItemV2ImplFromJson(json);

  final List<WishListItem> _items;
  @override
  List<WishListItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'WishListItemV2(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishListItemV2Impl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of WishListItemV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishListItemV2ImplCopyWith<_$WishListItemV2Impl> get copyWith =>
      __$$WishListItemV2ImplCopyWithImpl<_$WishListItemV2Impl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WishListItemV2ImplToJson(this);
  }
}

abstract class _WishListItemV2 implements WishListItemV2 {
  const factory _WishListItemV2({required final List<WishListItem> items}) =
      _$WishListItemV2Impl;

  factory _WishListItemV2.fromJson(Map<String, dynamic> json) =
      _$WishListItemV2Impl.fromJson;

  @override
  List<WishListItem> get items;

  /// Create a copy of WishListItemV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishListItemV2ImplCopyWith<_$WishListItemV2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

WishListItem _$WishListItemFromJson(Map<String, dynamic> json) {
  return _WishListItem.fromJson(json);
}

/// @nodoc
mixin _$WishListItem {
  String get id => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  ProductsItems get product => throw _privateConstructorUsedError;

  /// Serializes this WishListItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishListItemCopyWith<WishListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListItemCopyWith<$Res> {
  factory $WishListItemCopyWith(
    WishListItem value,
    $Res Function(WishListItem) then,
  ) = _$WishListItemCopyWithImpl<$Res, WishListItem>;
  @useResult
  $Res call({String id, double quantity, ProductsItems product});

  $ProductsItemsCopyWith<$Res> get product;
}

/// @nodoc
class _$WishListItemCopyWithImpl<$Res, $Val extends WishListItem>
    implements $WishListItemCopyWith<$Res> {
  _$WishListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? product = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as double,
            product:
                null == product
                    ? _value.product
                    : product // ignore: cast_nullable_to_non_nullable
                        as ProductsItems,
          )
          as $Val,
    );
  }

  /// Create a copy of WishListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsItemsCopyWith<$Res> get product {
    return $ProductsItemsCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WishListItemImplCopyWith<$Res>
    implements $WishListItemCopyWith<$Res> {
  factory _$$WishListItemImplCopyWith(
    _$WishListItemImpl value,
    $Res Function(_$WishListItemImpl) then,
  ) = __$$WishListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, double quantity, ProductsItems product});

  @override
  $ProductsItemsCopyWith<$Res> get product;
}

/// @nodoc
class __$$WishListItemImplCopyWithImpl<$Res>
    extends _$WishListItemCopyWithImpl<$Res, _$WishListItemImpl>
    implements _$$WishListItemImplCopyWith<$Res> {
  __$$WishListItemImplCopyWithImpl(
    _$WishListItemImpl _value,
    $Res Function(_$WishListItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WishListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? product = null,
  }) {
    return _then(
      _$WishListItemImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as double,
        product:
            null == product
                ? _value.product
                : product // ignore: cast_nullable_to_non_nullable
                    as ProductsItems,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WishListItemImpl implements _WishListItem {
  const _$WishListItemImpl({
    required this.id,
    required this.quantity,
    required this.product,
  });

  factory _$WishListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishListItemImplFromJson(json);

  @override
  final String id;
  @override
  final double quantity;
  @override
  final ProductsItems product;

  @override
  String toString() {
    return 'WishListItem(id: $id, quantity: $quantity, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishListItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, quantity, product);

  /// Create a copy of WishListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishListItemImplCopyWith<_$WishListItemImpl> get copyWith =>
      __$$WishListItemImplCopyWithImpl<_$WishListItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishListItemImplToJson(this);
  }
}

abstract class _WishListItem implements WishListItem {
  const factory _WishListItem({
    required final String id,
    required final double quantity,
    required final ProductsItems product,
  }) = _$WishListItemImpl;

  factory _WishListItem.fromJson(Map<String, dynamic> json) =
      _$WishListItemImpl.fromJson;

  @override
  String get id;
  @override
  double get quantity;
  @override
  ProductsItems get product;

  /// Create a copy of WishListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishListItemImplCopyWith<_$WishListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WishListCreateResponse _$WishListCreateResponseFromJson(
  Map<String, dynamic> json,
) {
  return _WishListCreateResponse.fromJson(json);
}

/// @nodoc
mixin _$WishListCreateResponse {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get visibility => throw _privateConstructorUsedError;
  int get itemsCount => throw _privateConstructorUsedError;

  /// Serializes this WishListCreateResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishListCreateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishListCreateResponseCopyWith<WishListCreateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListCreateResponseCopyWith<$Res> {
  factory $WishListCreateResponseCopyWith(
    WishListCreateResponse value,
    $Res Function(WishListCreateResponse) then,
  ) = _$WishListCreateResponseCopyWithImpl<$Res, WishListCreateResponse>;
  @useResult
  $Res call({String id, String name, String visibility, int itemsCount});
}

/// @nodoc
class _$WishListCreateResponseCopyWithImpl<
  $Res,
  $Val extends WishListCreateResponse
>
    implements $WishListCreateResponseCopyWith<$Res> {
  _$WishListCreateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishListCreateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? visibility = null,
    Object? itemsCount = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            visibility:
                null == visibility
                    ? _value.visibility
                    : visibility // ignore: cast_nullable_to_non_nullable
                        as String,
            itemsCount:
                null == itemsCount
                    ? _value.itemsCount
                    : itemsCount // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WishListCreateResponseImplCopyWith<$Res>
    implements $WishListCreateResponseCopyWith<$Res> {
  factory _$$WishListCreateResponseImplCopyWith(
    _$WishListCreateResponseImpl value,
    $Res Function(_$WishListCreateResponseImpl) then,
  ) = __$$WishListCreateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String visibility, int itemsCount});
}

/// @nodoc
class __$$WishListCreateResponseImplCopyWithImpl<$Res>
    extends
        _$WishListCreateResponseCopyWithImpl<$Res, _$WishListCreateResponseImpl>
    implements _$$WishListCreateResponseImplCopyWith<$Res> {
  __$$WishListCreateResponseImplCopyWithImpl(
    _$WishListCreateResponseImpl _value,
    $Res Function(_$WishListCreateResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WishListCreateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? visibility = null,
    Object? itemsCount = null,
  }) {
    return _then(
      _$WishListCreateResponseImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        visibility:
            null == visibility
                ? _value.visibility
                : visibility // ignore: cast_nullable_to_non_nullable
                    as String,
        itemsCount:
            null == itemsCount
                ? _value.itemsCount
                : itemsCount // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WishListCreateResponseImpl implements _WishListCreateResponse {
  const _$WishListCreateResponseImpl({
    required this.id,
    required this.name,
    required this.visibility,
    required this.itemsCount,
  });

  factory _$WishListCreateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishListCreateResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String visibility;
  @override
  final int itemsCount;

  @override
  String toString() {
    return 'WishListCreateResponse(id: $id, name: $name, visibility: $visibility, itemsCount: $itemsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishListCreateResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.itemsCount, itemsCount) ||
                other.itemsCount == itemsCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, visibility, itemsCount);

  /// Create a copy of WishListCreateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishListCreateResponseImplCopyWith<_$WishListCreateResponseImpl>
  get copyWith =>
      __$$WishListCreateResponseImplCopyWithImpl<_$WishListCreateResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WishListCreateResponseImplToJson(this);
  }
}

abstract class _WishListCreateResponse implements WishListCreateResponse {
  const factory _WishListCreateResponse({
    required final String id,
    required final String name,
    required final String visibility,
    required final int itemsCount,
  }) = _$WishListCreateResponseImpl;

  factory _WishListCreateResponse.fromJson(Map<String, dynamic> json) =
      _$WishListCreateResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get visibility;
  @override
  int get itemsCount;

  /// Create a copy of WishListCreateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishListCreateResponseImplCopyWith<_$WishListCreateResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
