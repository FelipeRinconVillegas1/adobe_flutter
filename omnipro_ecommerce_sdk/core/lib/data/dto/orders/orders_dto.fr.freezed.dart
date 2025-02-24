// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrdersDTO _$OrdersDTOFromJson(Map<String, dynamic> json) {
  return _OrdersDTO.fromJson(json);
}

/// @nodoc
mixin _$OrdersDTO {
  @JsonKey(name: "page_info")
  OrderPageInfoDTO get pageInfo => throw _privateConstructorUsedError;
  List<OrderItemDTO> get items => throw _privateConstructorUsedError;

  /// Serializes this OrdersDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrdersDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersDTOCopyWith<OrdersDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersDTOCopyWith<$Res> {
  factory $OrdersDTOCopyWith(OrdersDTO value, $Res Function(OrdersDTO) then) =
      _$OrdersDTOCopyWithImpl<$Res, OrdersDTO>;
  @useResult
  $Res call({
    @JsonKey(name: "page_info") OrderPageInfoDTO pageInfo,
    List<OrderItemDTO> items,
  });

  $OrderPageInfoDTOCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$OrdersDTOCopyWithImpl<$Res, $Val extends OrdersDTO>
    implements $OrdersDTOCopyWith<$Res> {
  _$OrdersDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pageInfo = null, Object? items = null}) {
    return _then(
      _value.copyWith(
            pageInfo:
                null == pageInfo
                    ? _value.pageInfo
                    : pageInfo // ignore: cast_nullable_to_non_nullable
                        as OrderPageInfoDTO,
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<OrderItemDTO>,
          )
          as $Val,
    );
  }

  /// Create a copy of OrdersDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderPageInfoDTOCopyWith<$Res> get pageInfo {
    return $OrderPageInfoDTOCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrdersDTOImplCopyWith<$Res>
    implements $OrdersDTOCopyWith<$Res> {
  factory _$$OrdersDTOImplCopyWith(
    _$OrdersDTOImpl value,
    $Res Function(_$OrdersDTOImpl) then,
  ) = __$$OrdersDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "page_info") OrderPageInfoDTO pageInfo,
    List<OrderItemDTO> items,
  });

  @override
  $OrderPageInfoDTOCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$$OrdersDTOImplCopyWithImpl<$Res>
    extends _$OrdersDTOCopyWithImpl<$Res, _$OrdersDTOImpl>
    implements _$$OrdersDTOImplCopyWith<$Res> {
  __$$OrdersDTOImplCopyWithImpl(
    _$OrdersDTOImpl _value,
    $Res Function(_$OrdersDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pageInfo = null, Object? items = null}) {
    return _then(
      _$OrdersDTOImpl(
        pageInfo:
            null == pageInfo
                ? _value.pageInfo
                : pageInfo // ignore: cast_nullable_to_non_nullable
                    as OrderPageInfoDTO,
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<OrderItemDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersDTOImpl implements _OrdersDTO {
  const _$OrdersDTOImpl({
    @JsonKey(name: "page_info") required this.pageInfo,
    final List<OrderItemDTO> items = const [],
  }) : _items = items;

  factory _$OrdersDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersDTOImplFromJson(json);

  @override
  @JsonKey(name: "page_info")
  final OrderPageInfoDTO pageInfo;
  final List<OrderItemDTO> _items;
  @override
  @JsonKey()
  List<OrderItemDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'OrdersDTO(pageInfo: $pageInfo, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersDTOImpl &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    pageInfo,
    const DeepCollectionEquality().hash(_items),
  );

  /// Create a copy of OrdersDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersDTOImplCopyWith<_$OrdersDTOImpl> get copyWith =>
      __$$OrdersDTOImplCopyWithImpl<_$OrdersDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersDTOImplToJson(this);
  }
}

abstract class _OrdersDTO implements OrdersDTO {
  const factory _OrdersDTO({
    @JsonKey(name: "page_info") required final OrderPageInfoDTO pageInfo,
    final List<OrderItemDTO> items,
  }) = _$OrdersDTOImpl;

  factory _OrdersDTO.fromJson(Map<String, dynamic> json) =
      _$OrdersDTOImpl.fromJson;

  @override
  @JsonKey(name: "page_info")
  OrderPageInfoDTO get pageInfo;
  @override
  List<OrderItemDTO> get items;

  /// Create a copy of OrdersDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersDTOImplCopyWith<_$OrdersDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderPageInfoDTO _$OrderPageInfoDTOFromJson(Map<String, dynamic> json) {
  return _OrderPageInfoDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderPageInfoDTO {
  @JsonKey(name: "total_pages")
  int get totalPages => throw _privateConstructorUsedError;

  /// Serializes this OrderPageInfoDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderPageInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderPageInfoDTOCopyWith<OrderPageInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPageInfoDTOCopyWith<$Res> {
  factory $OrderPageInfoDTOCopyWith(
    OrderPageInfoDTO value,
    $Res Function(OrderPageInfoDTO) then,
  ) = _$OrderPageInfoDTOCopyWithImpl<$Res, OrderPageInfoDTO>;
  @useResult
  $Res call({@JsonKey(name: "total_pages") int totalPages});
}

/// @nodoc
class _$OrderPageInfoDTOCopyWithImpl<$Res, $Val extends OrderPageInfoDTO>
    implements $OrderPageInfoDTOCopyWith<$Res> {
  _$OrderPageInfoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderPageInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalPages = null}) {
    return _then(
      _value.copyWith(
            totalPages:
                null == totalPages
                    ? _value.totalPages
                    : totalPages // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderPageInfoDTOImplCopyWith<$Res>
    implements $OrderPageInfoDTOCopyWith<$Res> {
  factory _$$OrderPageInfoDTOImplCopyWith(
    _$OrderPageInfoDTOImpl value,
    $Res Function(_$OrderPageInfoDTOImpl) then,
  ) = __$$OrderPageInfoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "total_pages") int totalPages});
}

/// @nodoc
class __$$OrderPageInfoDTOImplCopyWithImpl<$Res>
    extends _$OrderPageInfoDTOCopyWithImpl<$Res, _$OrderPageInfoDTOImpl>
    implements _$$OrderPageInfoDTOImplCopyWith<$Res> {
  __$$OrderPageInfoDTOImplCopyWithImpl(
    _$OrderPageInfoDTOImpl _value,
    $Res Function(_$OrderPageInfoDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderPageInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalPages = null}) {
    return _then(
      _$OrderPageInfoDTOImpl(
        totalPages:
            null == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderPageInfoDTOImpl implements _OrderPageInfoDTO {
  const _$OrderPageInfoDTOImpl({
    @JsonKey(name: "total_pages") required this.totalPages,
  });

  factory _$OrderPageInfoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderPageInfoDTOImplFromJson(json);

  @override
  @JsonKey(name: "total_pages")
  final int totalPages;

  @override
  String toString() {
    return 'OrderPageInfoDTO(totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPageInfoDTOImpl &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalPages);

  /// Create a copy of OrderPageInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPageInfoDTOImplCopyWith<_$OrderPageInfoDTOImpl> get copyWith =>
      __$$OrderPageInfoDTOImplCopyWithImpl<_$OrderPageInfoDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderPageInfoDTOImplToJson(this);
  }
}

abstract class _OrderPageInfoDTO implements OrderPageInfoDTO {
  const factory _OrderPageInfoDTO({
    @JsonKey(name: "total_pages") required final int totalPages,
  }) = _$OrderPageInfoDTOImpl;

  factory _OrderPageInfoDTO.fromJson(Map<String, dynamic> json) =
      _$OrderPageInfoDTOImpl.fromJson;

  @override
  @JsonKey(name: "total_pages")
  int get totalPages;

  /// Create a copy of OrderPageInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderPageInfoDTOImplCopyWith<_$OrderPageInfoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReorderItemsDTO _$ReorderItemsDTOFromJson(Map<String, dynamic> json) {
  return _ReorderItemsDTO.fromJson(json);
}

/// @nodoc
mixin _$ReorderItemsDTO {
  CartDTO get cart => throw _privateConstructorUsedError;
  List<UserInputErrorDTO> get userInputErrors =>
      throw _privateConstructorUsedError;

  /// Serializes this ReorderItemsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReorderItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReorderItemsDTOCopyWith<ReorderItemsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReorderItemsDTOCopyWith<$Res> {
  factory $ReorderItemsDTOCopyWith(
    ReorderItemsDTO value,
    $Res Function(ReorderItemsDTO) then,
  ) = _$ReorderItemsDTOCopyWithImpl<$Res, ReorderItemsDTO>;
  @useResult
  $Res call({CartDTO cart, List<UserInputErrorDTO> userInputErrors});

  $CartDTOCopyWith<$Res> get cart;
}

/// @nodoc
class _$ReorderItemsDTOCopyWithImpl<$Res, $Val extends ReorderItemsDTO>
    implements $ReorderItemsDTOCopyWith<$Res> {
  _$ReorderItemsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReorderItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cart = null, Object? userInputErrors = null}) {
    return _then(
      _value.copyWith(
            cart:
                null == cart
                    ? _value.cart
                    : cart // ignore: cast_nullable_to_non_nullable
                        as CartDTO,
            userInputErrors:
                null == userInputErrors
                    ? _value.userInputErrors
                    : userInputErrors // ignore: cast_nullable_to_non_nullable
                        as List<UserInputErrorDTO>,
          )
          as $Val,
    );
  }

  /// Create a copy of ReorderItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartDTOCopyWith<$Res> get cart {
    return $CartDTOCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReorderItemsDTOImplCopyWith<$Res>
    implements $ReorderItemsDTOCopyWith<$Res> {
  factory _$$ReorderItemsDTOImplCopyWith(
    _$ReorderItemsDTOImpl value,
    $Res Function(_$ReorderItemsDTOImpl) then,
  ) = __$$ReorderItemsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartDTO cart, List<UserInputErrorDTO> userInputErrors});

  @override
  $CartDTOCopyWith<$Res> get cart;
}

/// @nodoc
class __$$ReorderItemsDTOImplCopyWithImpl<$Res>
    extends _$ReorderItemsDTOCopyWithImpl<$Res, _$ReorderItemsDTOImpl>
    implements _$$ReorderItemsDTOImplCopyWith<$Res> {
  __$$ReorderItemsDTOImplCopyWithImpl(
    _$ReorderItemsDTOImpl _value,
    $Res Function(_$ReorderItemsDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReorderItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cart = null, Object? userInputErrors = null}) {
    return _then(
      _$ReorderItemsDTOImpl(
        cart:
            null == cart
                ? _value.cart
                : cart // ignore: cast_nullable_to_non_nullable
                    as CartDTO,
        userInputErrors:
            null == userInputErrors
                ? _value._userInputErrors
                : userInputErrors // ignore: cast_nullable_to_non_nullable
                    as List<UserInputErrorDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReorderItemsDTOImpl implements _ReorderItemsDTO {
  const _$ReorderItemsDTOImpl({
    required this.cart,
    required final List<UserInputErrorDTO> userInputErrors,
  }) : _userInputErrors = userInputErrors;

  factory _$ReorderItemsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReorderItemsDTOImplFromJson(json);

  @override
  final CartDTO cart;
  final List<UserInputErrorDTO> _userInputErrors;
  @override
  List<UserInputErrorDTO> get userInputErrors {
    if (_userInputErrors is EqualUnmodifiableListView) return _userInputErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userInputErrors);
  }

  @override
  String toString() {
    return 'ReorderItemsDTO(cart: $cart, userInputErrors: $userInputErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReorderItemsDTOImpl &&
            (identical(other.cart, cart) || other.cart == cart) &&
            const DeepCollectionEquality().equals(
              other._userInputErrors,
              _userInputErrors,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    cart,
    const DeepCollectionEquality().hash(_userInputErrors),
  );

  /// Create a copy of ReorderItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReorderItemsDTOImplCopyWith<_$ReorderItemsDTOImpl> get copyWith =>
      __$$ReorderItemsDTOImplCopyWithImpl<_$ReorderItemsDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReorderItemsDTOImplToJson(this);
  }
}

abstract class _ReorderItemsDTO implements ReorderItemsDTO {
  const factory _ReorderItemsDTO({
    required final CartDTO cart,
    required final List<UserInputErrorDTO> userInputErrors,
  }) = _$ReorderItemsDTOImpl;

  factory _ReorderItemsDTO.fromJson(Map<String, dynamic> json) =
      _$ReorderItemsDTOImpl.fromJson;

  @override
  CartDTO get cart;
  @override
  List<UserInputErrorDTO> get userInputErrors;

  /// Create a copy of ReorderItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReorderItemsDTOImplCopyWith<_$ReorderItemsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInputErrorDTO _$UserInputErrorDTOFromJson(Map<String, dynamic> json) {
  return _UserInputErrorDTO.fromJson(json);
}

/// @nodoc
mixin _$UserInputErrorDTO {
  String get message => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  List<String> get path => throw _privateConstructorUsedError;

  /// Serializes this UserInputErrorDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInputErrorDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInputErrorDTOCopyWith<UserInputErrorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInputErrorDTOCopyWith<$Res> {
  factory $UserInputErrorDTOCopyWith(
    UserInputErrorDTO value,
    $Res Function(UserInputErrorDTO) then,
  ) = _$UserInputErrorDTOCopyWithImpl<$Res, UserInputErrorDTO>;
  @useResult
  $Res call({String message, String code, List<String> path});
}

/// @nodoc
class _$UserInputErrorDTOCopyWithImpl<$Res, $Val extends UserInputErrorDTO>
    implements $UserInputErrorDTOCopyWith<$Res> {
  _$UserInputErrorDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInputErrorDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? path = null,
  }) {
    return _then(
      _value.copyWith(
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            path:
                null == path
                    ? _value.path
                    : path // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserInputErrorDTOImplCopyWith<$Res>
    implements $UserInputErrorDTOCopyWith<$Res> {
  factory _$$UserInputErrorDTOImplCopyWith(
    _$UserInputErrorDTOImpl value,
    $Res Function(_$UserInputErrorDTOImpl) then,
  ) = __$$UserInputErrorDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String code, List<String> path});
}

/// @nodoc
class __$$UserInputErrorDTOImplCopyWithImpl<$Res>
    extends _$UserInputErrorDTOCopyWithImpl<$Res, _$UserInputErrorDTOImpl>
    implements _$$UserInputErrorDTOImplCopyWith<$Res> {
  __$$UserInputErrorDTOImplCopyWithImpl(
    _$UserInputErrorDTOImpl _value,
    $Res Function(_$UserInputErrorDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserInputErrorDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? path = null,
  }) {
    return _then(
      _$UserInputErrorDTOImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        path:
            null == path
                ? _value._path
                : path // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInputErrorDTOImpl implements _UserInputErrorDTO {
  const _$UserInputErrorDTOImpl({
    required this.message,
    required this.code,
    final List<String> path = const [],
  }) : _path = path;

  factory _$UserInputErrorDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInputErrorDTOImplFromJson(json);

  @override
  final String message;
  @override
  final String code;
  final List<String> _path;
  @override
  @JsonKey()
  List<String> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

  @override
  String toString() {
    return 'UserInputErrorDTO(message: $message, code: $code, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInputErrorDTOImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._path, _path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    code,
    const DeepCollectionEquality().hash(_path),
  );

  /// Create a copy of UserInputErrorDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInputErrorDTOImplCopyWith<_$UserInputErrorDTOImpl> get copyWith =>
      __$$UserInputErrorDTOImplCopyWithImpl<_$UserInputErrorDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInputErrorDTOImplToJson(this);
  }
}

abstract class _UserInputErrorDTO implements UserInputErrorDTO {
  const factory _UserInputErrorDTO({
    required final String message,
    required final String code,
    final List<String> path,
  }) = _$UserInputErrorDTOImpl;

  factory _UserInputErrorDTO.fromJson(Map<String, dynamic> json) =
      _$UserInputErrorDTOImpl.fromJson;

  @override
  String get message;
  @override
  String get code;
  @override
  List<String> get path;

  /// Create a copy of UserInputErrorDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInputErrorDTOImplCopyWith<_$UserInputErrorDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
