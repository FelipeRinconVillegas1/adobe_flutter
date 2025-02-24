// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_cart_items_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UpdateCartItemsInputDTO {
  @JsonKey(name: 'cart_id')
  String get cartId => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart_items')
  List<CartItemUpdateInputDTO> get cartItems =>
      throw _privateConstructorUsedError;

  /// Create a copy of UpdateCartItemsInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateCartItemsInputDTOCopyWith<UpdateCartItemsInputDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCartItemsInputDTOCopyWith<$Res> {
  factory $UpdateCartItemsInputDTOCopyWith(
    UpdateCartItemsInputDTO value,
    $Res Function(UpdateCartItemsInputDTO) then,
  ) = _$UpdateCartItemsInputDTOCopyWithImpl<$Res, UpdateCartItemsInputDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'cart_id') String cartId,
    @JsonKey(name: 'cart_items') List<CartItemUpdateInputDTO> cartItems,
  });
}

/// @nodoc
class _$UpdateCartItemsInputDTOCopyWithImpl<
  $Res,
  $Val extends UpdateCartItemsInputDTO
>
    implements $UpdateCartItemsInputDTOCopyWith<$Res> {
  _$UpdateCartItemsInputDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateCartItemsInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cartId = null, Object? cartItems = null}) {
    return _then(
      _value.copyWith(
            cartId:
                null == cartId
                    ? _value.cartId
                    : cartId // ignore: cast_nullable_to_non_nullable
                        as String,
            cartItems:
                null == cartItems
                    ? _value.cartItems
                    : cartItems // ignore: cast_nullable_to_non_nullable
                        as List<CartItemUpdateInputDTO>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateCartItemsInputDTOImplCopyWith<$Res>
    implements $UpdateCartItemsInputDTOCopyWith<$Res> {
  factory _$$UpdateCartItemsInputDTOImplCopyWith(
    _$UpdateCartItemsInputDTOImpl value,
    $Res Function(_$UpdateCartItemsInputDTOImpl) then,
  ) = __$$UpdateCartItemsInputDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'cart_id') String cartId,
    @JsonKey(name: 'cart_items') List<CartItemUpdateInputDTO> cartItems,
  });
}

/// @nodoc
class __$$UpdateCartItemsInputDTOImplCopyWithImpl<$Res>
    extends
        _$UpdateCartItemsInputDTOCopyWithImpl<
          $Res,
          _$UpdateCartItemsInputDTOImpl
        >
    implements _$$UpdateCartItemsInputDTOImplCopyWith<$Res> {
  __$$UpdateCartItemsInputDTOImplCopyWithImpl(
    _$UpdateCartItemsInputDTOImpl _value,
    $Res Function(_$UpdateCartItemsInputDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateCartItemsInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cartId = null, Object? cartItems = null}) {
    return _then(
      _$UpdateCartItemsInputDTOImpl(
        cartId:
            null == cartId
                ? _value.cartId
                : cartId // ignore: cast_nullable_to_non_nullable
                    as String,
        cartItems:
            null == cartItems
                ? _value._cartItems
                : cartItems // ignore: cast_nullable_to_non_nullable
                    as List<CartItemUpdateInputDTO>,
      ),
    );
  }
}

/// @nodoc

class _$UpdateCartItemsInputDTOImpl implements _UpdateCartItemsInputDTO {
  _$UpdateCartItemsInputDTOImpl({
    @JsonKey(name: 'cart_id') required this.cartId,
    @JsonKey(name: 'cart_items')
    required final List<CartItemUpdateInputDTO> cartItems,
  }) : _cartItems = cartItems;

  @override
  @JsonKey(name: 'cart_id')
  final String cartId;
  final List<CartItemUpdateInputDTO> _cartItems;
  @override
  @JsonKey(name: 'cart_items')
  List<CartItemUpdateInputDTO> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'UpdateCartItemsInputDTO(cartId: $cartId, cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartItemsInputDTOImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            const DeepCollectionEquality().equals(
              other._cartItems,
              _cartItems,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    cartId,
    const DeepCollectionEquality().hash(_cartItems),
  );

  /// Create a copy of UpdateCartItemsInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartItemsInputDTOImplCopyWith<_$UpdateCartItemsInputDTOImpl>
  get copyWith => __$$UpdateCartItemsInputDTOImplCopyWithImpl<
    _$UpdateCartItemsInputDTOImpl
  >(this, _$identity);
}

abstract class _UpdateCartItemsInputDTO implements UpdateCartItemsInputDTO {
  factory _UpdateCartItemsInputDTO({
    @JsonKey(name: 'cart_id') required final String cartId,
    @JsonKey(name: 'cart_items')
    required final List<CartItemUpdateInputDTO> cartItems,
  }) = _$UpdateCartItemsInputDTOImpl;

  @override
  @JsonKey(name: 'cart_id')
  String get cartId;
  @override
  @JsonKey(name: 'cart_items')
  List<CartItemUpdateInputDTO> get cartItems;

  /// Create a copy of UpdateCartItemsInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCartItemsInputDTOImplCopyWith<_$UpdateCartItemsInputDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

CartItemUpdateInputDTO _$CartItemUpdateInputDTOFromJson(
  Map<String, dynamic> json,
) {
  return _CartItemUpdateInputDTO.fromJson(json);
}

/// @nodoc
mixin _$CartItemUpdateInputDTO {
  @JsonKey(name: 'cart_item_uid')
  String get cartItemUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  double get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'price', includeToJson: false)
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku', includeToJson: false)
  String get sku => throw _privateConstructorUsedError;

  /// Serializes this CartItemUpdateInputDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartItemUpdateInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemUpdateInputDTOCopyWith<CartItemUpdateInputDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemUpdateInputDTOCopyWith<$Res> {
  factory $CartItemUpdateInputDTOCopyWith(
    CartItemUpdateInputDTO value,
    $Res Function(CartItemUpdateInputDTO) then,
  ) = _$CartItemUpdateInputDTOCopyWithImpl<$Res, CartItemUpdateInputDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'cart_item_uid') String cartItemUid,
    @JsonKey(name: 'quantity') double quantity,
    @JsonKey(name: 'price', includeToJson: false) double price,
    @JsonKey(name: 'sku', includeToJson: false) String sku,
  });
}

/// @nodoc
class _$CartItemUpdateInputDTOCopyWithImpl<
  $Res,
  $Val extends CartItemUpdateInputDTO
>
    implements $CartItemUpdateInputDTOCopyWith<$Res> {
  _$CartItemUpdateInputDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItemUpdateInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItemUid = null,
    Object? quantity = null,
    Object? price = null,
    Object? sku = null,
  }) {
    return _then(
      _value.copyWith(
            cartItemUid:
                null == cartItemUid
                    ? _value.cartItemUid
                    : cartItemUid // ignore: cast_nullable_to_non_nullable
                        as String,
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as double,
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as double,
            sku:
                null == sku
                    ? _value.sku
                    : sku // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CartItemUpdateInputDTOImplCopyWith<$Res>
    implements $CartItemUpdateInputDTOCopyWith<$Res> {
  factory _$$CartItemUpdateInputDTOImplCopyWith(
    _$CartItemUpdateInputDTOImpl value,
    $Res Function(_$CartItemUpdateInputDTOImpl) then,
  ) = __$$CartItemUpdateInputDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'cart_item_uid') String cartItemUid,
    @JsonKey(name: 'quantity') double quantity,
    @JsonKey(name: 'price', includeToJson: false) double price,
    @JsonKey(name: 'sku', includeToJson: false) String sku,
  });
}

/// @nodoc
class __$$CartItemUpdateInputDTOImplCopyWithImpl<$Res>
    extends
        _$CartItemUpdateInputDTOCopyWithImpl<$Res, _$CartItemUpdateInputDTOImpl>
    implements _$$CartItemUpdateInputDTOImplCopyWith<$Res> {
  __$$CartItemUpdateInputDTOImplCopyWithImpl(
    _$CartItemUpdateInputDTOImpl _value,
    $Res Function(_$CartItemUpdateInputDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartItemUpdateInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItemUid = null,
    Object? quantity = null,
    Object? price = null,
    Object? sku = null,
  }) {
    return _then(
      _$CartItemUpdateInputDTOImpl(
        cartItemUid:
            null == cartItemUid
                ? _value.cartItemUid
                : cartItemUid // ignore: cast_nullable_to_non_nullable
                    as String,
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as double,
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as double,
        sku:
            null == sku
                ? _value.sku
                : sku // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemUpdateInputDTOImpl implements _CartItemUpdateInputDTO {
  _$CartItemUpdateInputDTOImpl({
    @JsonKey(name: 'cart_item_uid') required this.cartItemUid,
    @JsonKey(name: 'quantity') required this.quantity,
    @JsonKey(name: 'price', includeToJson: false) required this.price,
    @JsonKey(name: 'sku', includeToJson: false) required this.sku,
  });

  factory _$CartItemUpdateInputDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemUpdateInputDTOImplFromJson(json);

  @override
  @JsonKey(name: 'cart_item_uid')
  final String cartItemUid;
  @override
  @JsonKey(name: 'quantity')
  final double quantity;
  @override
  @JsonKey(name: 'price', includeToJson: false)
  final double price;
  @override
  @JsonKey(name: 'sku', includeToJson: false)
  final String sku;

  @override
  String toString() {
    return 'CartItemUpdateInputDTO(cartItemUid: $cartItemUid, quantity: $quantity, price: $price, sku: $sku)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemUpdateInputDTOImpl &&
            (identical(other.cartItemUid, cartItemUid) ||
                other.cartItemUid == cartItemUid) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.sku, sku) || other.sku == sku));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cartItemUid, quantity, price, sku);

  /// Create a copy of CartItemUpdateInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemUpdateInputDTOImplCopyWith<_$CartItemUpdateInputDTOImpl>
  get copyWith =>
      __$$CartItemUpdateInputDTOImplCopyWithImpl<_$CartItemUpdateInputDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemUpdateInputDTOImplToJson(this);
  }
}

abstract class _CartItemUpdateInputDTO implements CartItemUpdateInputDTO {
  factory _CartItemUpdateInputDTO({
    @JsonKey(name: 'cart_item_uid') required final String cartItemUid,
    @JsonKey(name: 'quantity') required final double quantity,
    @JsonKey(name: 'price', includeToJson: false) required final double price,
    @JsonKey(name: 'sku', includeToJson: false) required final String sku,
  }) = _$CartItemUpdateInputDTOImpl;

  factory _CartItemUpdateInputDTO.fromJson(Map<String, dynamic> json) =
      _$CartItemUpdateInputDTOImpl.fromJson;

  @override
  @JsonKey(name: 'cart_item_uid')
  String get cartItemUid;
  @override
  @JsonKey(name: 'quantity')
  double get quantity;
  @override
  @JsonKey(name: 'price', includeToJson: false)
  double get price;
  @override
  @JsonKey(name: 'sku', includeToJson: false)
  String get sku;

  /// Create a copy of CartItemUpdateInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemUpdateInputDTOImplCopyWith<_$CartItemUpdateInputDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
