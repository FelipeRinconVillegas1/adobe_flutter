// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WishListDeleteDTO _$WishListDeleteDTOFromJson(Map<String, dynamic> json) {
  return _WishListDeleteDTO.fromJson(json);
}

/// @nodoc
mixin _$WishListDeleteDTO {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_wishlist_ids')
  List<String> get deletedWishlistIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_messages')
  List<String> get errorMessages => throw _privateConstructorUsedError;
  List<WishListDTO> get wishlists => throw _privateConstructorUsedError;

  /// Serializes this WishListDeleteDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishListDeleteDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishListDeleteDTOCopyWith<WishListDeleteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListDeleteDTOCopyWith<$Res> {
  factory $WishListDeleteDTOCopyWith(
    WishListDeleteDTO value,
    $Res Function(WishListDeleteDTO) then,
  ) = _$WishListDeleteDTOCopyWithImpl<$Res, WishListDeleteDTO>;
  @useResult
  $Res call({
    bool status,
    @JsonKey(name: 'deleted_wishlist_ids') List<String> deletedWishlistIds,
    @JsonKey(name: 'error_messages') List<String> errorMessages,
    List<WishListDTO> wishlists,
  });
}

/// @nodoc
class _$WishListDeleteDTOCopyWithImpl<$Res, $Val extends WishListDeleteDTO>
    implements $WishListDeleteDTOCopyWith<$Res> {
  _$WishListDeleteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishListDeleteDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? deletedWishlistIds = null,
    Object? errorMessages = null,
    Object? wishlists = null,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as bool,
            deletedWishlistIds:
                null == deletedWishlistIds
                    ? _value.deletedWishlistIds
                    : deletedWishlistIds // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            errorMessages:
                null == errorMessages
                    ? _value.errorMessages
                    : errorMessages // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            wishlists:
                null == wishlists
                    ? _value.wishlists
                    : wishlists // ignore: cast_nullable_to_non_nullable
                        as List<WishListDTO>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WishListDeleteDTOImplCopyWith<$Res>
    implements $WishListDeleteDTOCopyWith<$Res> {
  factory _$$WishListDeleteDTOImplCopyWith(
    _$WishListDeleteDTOImpl value,
    $Res Function(_$WishListDeleteDTOImpl) then,
  ) = __$$WishListDeleteDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool status,
    @JsonKey(name: 'deleted_wishlist_ids') List<String> deletedWishlistIds,
    @JsonKey(name: 'error_messages') List<String> errorMessages,
    List<WishListDTO> wishlists,
  });
}

/// @nodoc
class __$$WishListDeleteDTOImplCopyWithImpl<$Res>
    extends _$WishListDeleteDTOCopyWithImpl<$Res, _$WishListDeleteDTOImpl>
    implements _$$WishListDeleteDTOImplCopyWith<$Res> {
  __$$WishListDeleteDTOImplCopyWithImpl(
    _$WishListDeleteDTOImpl _value,
    $Res Function(_$WishListDeleteDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WishListDeleteDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? deletedWishlistIds = null,
    Object? errorMessages = null,
    Object? wishlists = null,
  }) {
    return _then(
      _$WishListDeleteDTOImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as bool,
        deletedWishlistIds:
            null == deletedWishlistIds
                ? _value._deletedWishlistIds
                : deletedWishlistIds // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        errorMessages:
            null == errorMessages
                ? _value._errorMessages
                : errorMessages // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        wishlists:
            null == wishlists
                ? _value._wishlists
                : wishlists // ignore: cast_nullable_to_non_nullable
                    as List<WishListDTO>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WishListDeleteDTOImpl implements _WishListDeleteDTO {
  const _$WishListDeleteDTOImpl({
    required this.status,
    @JsonKey(name: 'deleted_wishlist_ids')
    final List<String> deletedWishlistIds = const [],
    @JsonKey(name: 'error_messages')
    final List<String> errorMessages = const [],
    required final List<WishListDTO> wishlists,
  }) : _deletedWishlistIds = deletedWishlistIds,
       _errorMessages = errorMessages,
       _wishlists = wishlists;

  factory _$WishListDeleteDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishListDeleteDTOImplFromJson(json);

  @override
  final bool status;
  final List<String> _deletedWishlistIds;
  @override
  @JsonKey(name: 'deleted_wishlist_ids')
  List<String> get deletedWishlistIds {
    if (_deletedWishlistIds is EqualUnmodifiableListView)
      return _deletedWishlistIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deletedWishlistIds);
  }

  final List<String> _errorMessages;
  @override
  @JsonKey(name: 'error_messages')
  List<String> get errorMessages {
    if (_errorMessages is EqualUnmodifiableListView) return _errorMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errorMessages);
  }

  final List<WishListDTO> _wishlists;
  @override
  List<WishListDTO> get wishlists {
    if (_wishlists is EqualUnmodifiableListView) return _wishlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishlists);
  }

  @override
  String toString() {
    return 'WishListDeleteDTO(status: $status, deletedWishlistIds: $deletedWishlistIds, errorMessages: $errorMessages, wishlists: $wishlists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishListDeleteDTOImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._deletedWishlistIds,
              _deletedWishlistIds,
            ) &&
            const DeepCollectionEquality().equals(
              other._errorMessages,
              _errorMessages,
            ) &&
            const DeepCollectionEquality().equals(
              other._wishlists,
              _wishlists,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_deletedWishlistIds),
    const DeepCollectionEquality().hash(_errorMessages),
    const DeepCollectionEquality().hash(_wishlists),
  );

  /// Create a copy of WishListDeleteDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishListDeleteDTOImplCopyWith<_$WishListDeleteDTOImpl> get copyWith =>
      __$$WishListDeleteDTOImplCopyWithImpl<_$WishListDeleteDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WishListDeleteDTOImplToJson(this);
  }
}

abstract class _WishListDeleteDTO implements WishListDeleteDTO {
  const factory _WishListDeleteDTO({
    required final bool status,
    @JsonKey(name: 'deleted_wishlist_ids')
    final List<String> deletedWishlistIds,
    @JsonKey(name: 'error_messages') final List<String> errorMessages,
    required final List<WishListDTO> wishlists,
  }) = _$WishListDeleteDTOImpl;

  factory _WishListDeleteDTO.fromJson(Map<String, dynamic> json) =
      _$WishListDeleteDTOImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'deleted_wishlist_ids')
  List<String> get deletedWishlistIds;
  @override
  @JsonKey(name: 'error_messages')
  List<String> get errorMessages;
  @override
  List<WishListDTO> get wishlists;

  /// Create a copy of WishListDeleteDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishListDeleteDTOImplCopyWith<_$WishListDeleteDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WishListDTO _$WishListDTOFromJson(Map<String, dynamic> json) {
  return _WishListDTO.fromJson(json);
}

/// @nodoc
mixin _$WishListDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'items_count')
  int get itemsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'items_v2')
  WishListItemV2DTO get items => throw _privateConstructorUsedError;

  /// Serializes this WishListDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishListDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishListDTOCopyWith<WishListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListDTOCopyWith<$Res> {
  factory $WishListDTOCopyWith(
    WishListDTO value,
    $Res Function(WishListDTO) then,
  ) = _$WishListDTOCopyWithImpl<$Res, WishListDTO>;
  @useResult
  $Res call({
    String id,
    String name,
    String visibility,
    @JsonKey(name: 'items_count') int itemsCount,
    @JsonKey(name: 'items_v2') WishListItemV2DTO items,
  });

  $WishListItemV2DTOCopyWith<$Res> get items;
}

/// @nodoc
class _$WishListDTOCopyWithImpl<$Res, $Val extends WishListDTO>
    implements $WishListDTOCopyWith<$Res> {
  _$WishListDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishListDTO
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
                        as WishListItemV2DTO,
          )
          as $Val,
    );
  }

  /// Create a copy of WishListDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WishListItemV2DTOCopyWith<$Res> get items {
    return $WishListItemV2DTOCopyWith<$Res>(_value.items, (value) {
      return _then(_value.copyWith(items: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WishListDTOImplCopyWith<$Res>
    implements $WishListDTOCopyWith<$Res> {
  factory _$$WishListDTOImplCopyWith(
    _$WishListDTOImpl value,
    $Res Function(_$WishListDTOImpl) then,
  ) = __$$WishListDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String visibility,
    @JsonKey(name: 'items_count') int itemsCount,
    @JsonKey(name: 'items_v2') WishListItemV2DTO items,
  });

  @override
  $WishListItemV2DTOCopyWith<$Res> get items;
}

/// @nodoc
class __$$WishListDTOImplCopyWithImpl<$Res>
    extends _$WishListDTOCopyWithImpl<$Res, _$WishListDTOImpl>
    implements _$$WishListDTOImplCopyWith<$Res> {
  __$$WishListDTOImplCopyWithImpl(
    _$WishListDTOImpl _value,
    $Res Function(_$WishListDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WishListDTO
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
      _$WishListDTOImpl(
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
                    as WishListItemV2DTO,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WishListDTOImpl implements _WishListDTO {
  const _$WishListDTOImpl({
    required this.id,
    required this.name,
    required this.visibility,
    @JsonKey(name: 'items_count') this.itemsCount = 0,
    @JsonKey(name: 'items_v2') required this.items,
  });

  factory _$WishListDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishListDTOImplFromJson(json);

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
  final WishListItemV2DTO items;

  @override
  String toString() {
    return 'WishListDTO(id: $id, name: $name, visibility: $visibility, itemsCount: $itemsCount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishListDTOImpl &&
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

  /// Create a copy of WishListDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishListDTOImplCopyWith<_$WishListDTOImpl> get copyWith =>
      __$$WishListDTOImplCopyWithImpl<_$WishListDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishListDTOImplToJson(this);
  }
}

abstract class _WishListDTO implements WishListDTO {
  const factory _WishListDTO({
    required final String id,
    required final String name,
    required final String visibility,
    @JsonKey(name: 'items_count') final int itemsCount,
    @JsonKey(name: 'items_v2') required final WishListItemV2DTO items,
  }) = _$WishListDTOImpl;

  factory _WishListDTO.fromJson(Map<String, dynamic> json) =
      _$WishListDTOImpl.fromJson;

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
  WishListItemV2DTO get items;

  /// Create a copy of WishListDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishListDTOImplCopyWith<_$WishListDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WishListItemV2DTO _$WishListItemV2DTOFromJson(Map<String, dynamic> json) {
  return _WishListItemV2DTO.fromJson(json);
}

/// @nodoc
mixin _$WishListItemV2DTO {
  List<WishListItemDTO> get items => throw _privateConstructorUsedError;

  /// Serializes this WishListItemV2DTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishListItemV2DTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishListItemV2DTOCopyWith<WishListItemV2DTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListItemV2DTOCopyWith<$Res> {
  factory $WishListItemV2DTOCopyWith(
    WishListItemV2DTO value,
    $Res Function(WishListItemV2DTO) then,
  ) = _$WishListItemV2DTOCopyWithImpl<$Res, WishListItemV2DTO>;
  @useResult
  $Res call({List<WishListItemDTO> items});
}

/// @nodoc
class _$WishListItemV2DTOCopyWithImpl<$Res, $Val extends WishListItemV2DTO>
    implements $WishListItemV2DTOCopyWith<$Res> {
  _$WishListItemV2DTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishListItemV2DTO
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
                        as List<WishListItemDTO>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WishListItemV2DTOImplCopyWith<$Res>
    implements $WishListItemV2DTOCopyWith<$Res> {
  factory _$$WishListItemV2DTOImplCopyWith(
    _$WishListItemV2DTOImpl value,
    $Res Function(_$WishListItemV2DTOImpl) then,
  ) = __$$WishListItemV2DTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WishListItemDTO> items});
}

/// @nodoc
class __$$WishListItemV2DTOImplCopyWithImpl<$Res>
    extends _$WishListItemV2DTOCopyWithImpl<$Res, _$WishListItemV2DTOImpl>
    implements _$$WishListItemV2DTOImplCopyWith<$Res> {
  __$$WishListItemV2DTOImplCopyWithImpl(
    _$WishListItemV2DTOImpl _value,
    $Res Function(_$WishListItemV2DTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WishListItemV2DTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null}) {
    return _then(
      _$WishListItemV2DTOImpl(
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<WishListItemDTO>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WishListItemV2DTOImpl implements _WishListItemV2DTO {
  const _$WishListItemV2DTOImpl({required final List<WishListItemDTO> items})
    : _items = items;

  factory _$WishListItemV2DTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishListItemV2DTOImplFromJson(json);

  final List<WishListItemDTO> _items;
  @override
  List<WishListItemDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'WishListItemV2DTO(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishListItemV2DTOImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of WishListItemV2DTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishListItemV2DTOImplCopyWith<_$WishListItemV2DTOImpl> get copyWith =>
      __$$WishListItemV2DTOImplCopyWithImpl<_$WishListItemV2DTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WishListItemV2DTOImplToJson(this);
  }
}

abstract class _WishListItemV2DTO implements WishListItemV2DTO {
  const factory _WishListItemV2DTO({
    required final List<WishListItemDTO> items,
  }) = _$WishListItemV2DTOImpl;

  factory _WishListItemV2DTO.fromJson(Map<String, dynamic> json) =
      _$WishListItemV2DTOImpl.fromJson;

  @override
  List<WishListItemDTO> get items;

  /// Create a copy of WishListItemV2DTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishListItemV2DTOImplCopyWith<_$WishListItemV2DTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WishListItemDTO _$WishListItemDTOFromJson(Map<String, dynamic> json) {
  return _WishListItemDTO.fromJson(json);
}

/// @nodoc
mixin _$WishListItemDTO {
  String get id => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  ProductsItemsDTO get product => throw _privateConstructorUsedError;

  /// Serializes this WishListItemDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishListItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishListItemDTOCopyWith<WishListItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListItemDTOCopyWith<$Res> {
  factory $WishListItemDTOCopyWith(
    WishListItemDTO value,
    $Res Function(WishListItemDTO) then,
  ) = _$WishListItemDTOCopyWithImpl<$Res, WishListItemDTO>;
  @useResult
  $Res call({String id, double quantity, ProductsItemsDTO product});

  $ProductsItemsDTOCopyWith<$Res> get product;
}

/// @nodoc
class _$WishListItemDTOCopyWithImpl<$Res, $Val extends WishListItemDTO>
    implements $WishListItemDTOCopyWith<$Res> {
  _$WishListItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishListItemDTO
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
                        as ProductsItemsDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of WishListItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsItemsDTOCopyWith<$Res> get product {
    return $ProductsItemsDTOCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WishListItemDTOImplCopyWith<$Res>
    implements $WishListItemDTOCopyWith<$Res> {
  factory _$$WishListItemDTOImplCopyWith(
    _$WishListItemDTOImpl value,
    $Res Function(_$WishListItemDTOImpl) then,
  ) = __$$WishListItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, double quantity, ProductsItemsDTO product});

  @override
  $ProductsItemsDTOCopyWith<$Res> get product;
}

/// @nodoc
class __$$WishListItemDTOImplCopyWithImpl<$Res>
    extends _$WishListItemDTOCopyWithImpl<$Res, _$WishListItemDTOImpl>
    implements _$$WishListItemDTOImplCopyWith<$Res> {
  __$$WishListItemDTOImplCopyWithImpl(
    _$WishListItemDTOImpl _value,
    $Res Function(_$WishListItemDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WishListItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? product = null,
  }) {
    return _then(
      _$WishListItemDTOImpl(
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
                    as ProductsItemsDTO,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WishListItemDTOImpl implements _WishListItemDTO {
  const _$WishListItemDTOImpl({
    required this.id,
    required this.quantity,
    required this.product,
  });

  factory _$WishListItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishListItemDTOImplFromJson(json);

  @override
  final String id;
  @override
  final double quantity;
  @override
  final ProductsItemsDTO product;

  @override
  String toString() {
    return 'WishListItemDTO(id: $id, quantity: $quantity, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishListItemDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, quantity, product);

  /// Create a copy of WishListItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishListItemDTOImplCopyWith<_$WishListItemDTOImpl> get copyWith =>
      __$$WishListItemDTOImplCopyWithImpl<_$WishListItemDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WishListItemDTOImplToJson(this);
  }
}

abstract class _WishListItemDTO implements WishListItemDTO {
  const factory _WishListItemDTO({
    required final String id,
    required final double quantity,
    required final ProductsItemsDTO product,
  }) = _$WishListItemDTOImpl;

  factory _WishListItemDTO.fromJson(Map<String, dynamic> json) =
      _$WishListItemDTOImpl.fromJson;

  @override
  String get id;
  @override
  double get quantity;
  @override
  ProductsItemsDTO get product;

  /// Create a copy of WishListItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishListItemDTOImplCopyWith<_$WishListItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WishListCreateResponseDTO _$WishListCreateResponseDTOFromJson(
  Map<String, dynamic> json,
) {
  return _WishListCreateResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$WishListCreateResponseDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get visibility => throw _privateConstructorUsedError;
  int get itemsCount => throw _privateConstructorUsedError;

  /// Serializes this WishListCreateResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishListCreateResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishListCreateResponseDTOCopyWith<WishListCreateResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListCreateResponseDTOCopyWith<$Res> {
  factory $WishListCreateResponseDTOCopyWith(
    WishListCreateResponseDTO value,
    $Res Function(WishListCreateResponseDTO) then,
  ) = _$WishListCreateResponseDTOCopyWithImpl<$Res, WishListCreateResponseDTO>;
  @useResult
  $Res call({String id, String name, String visibility, int itemsCount});
}

/// @nodoc
class _$WishListCreateResponseDTOCopyWithImpl<
  $Res,
  $Val extends WishListCreateResponseDTO
>
    implements $WishListCreateResponseDTOCopyWith<$Res> {
  _$WishListCreateResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishListCreateResponseDTO
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
abstract class _$$WishListCreateResponseDTOImplCopyWith<$Res>
    implements $WishListCreateResponseDTOCopyWith<$Res> {
  factory _$$WishListCreateResponseDTOImplCopyWith(
    _$WishListCreateResponseDTOImpl value,
    $Res Function(_$WishListCreateResponseDTOImpl) then,
  ) = __$$WishListCreateResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String visibility, int itemsCount});
}

/// @nodoc
class __$$WishListCreateResponseDTOImplCopyWithImpl<$Res>
    extends
        _$WishListCreateResponseDTOCopyWithImpl<
          $Res,
          _$WishListCreateResponseDTOImpl
        >
    implements _$$WishListCreateResponseDTOImplCopyWith<$Res> {
  __$$WishListCreateResponseDTOImplCopyWithImpl(
    _$WishListCreateResponseDTOImpl _value,
    $Res Function(_$WishListCreateResponseDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WishListCreateResponseDTO
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
      _$WishListCreateResponseDTOImpl(
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
class _$WishListCreateResponseDTOImpl implements _WishListCreateResponseDTO {
  const _$WishListCreateResponseDTOImpl({
    required this.id,
    required this.name,
    required this.visibility,
    required this.itemsCount,
  });

  factory _$WishListCreateResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishListCreateResponseDTOImplFromJson(json);

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
    return 'WishListCreateResponseDTO(id: $id, name: $name, visibility: $visibility, itemsCount: $itemsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishListCreateResponseDTOImpl &&
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

  /// Create a copy of WishListCreateResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishListCreateResponseDTOImplCopyWith<_$WishListCreateResponseDTOImpl>
  get copyWith => __$$WishListCreateResponseDTOImplCopyWithImpl<
    _$WishListCreateResponseDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishListCreateResponseDTOImplToJson(this);
  }
}

abstract class _WishListCreateResponseDTO implements WishListCreateResponseDTO {
  const factory _WishListCreateResponseDTO({
    required final String id,
    required final String name,
    required final String visibility,
    required final int itemsCount,
  }) = _$WishListCreateResponseDTOImpl;

  factory _WishListCreateResponseDTO.fromJson(Map<String, dynamic> json) =
      _$WishListCreateResponseDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get visibility;
  @override
  int get itemsCount;

  /// Create a copy of WishListCreateResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishListCreateResponseDTOImplCopyWith<_$WishListCreateResponseDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
