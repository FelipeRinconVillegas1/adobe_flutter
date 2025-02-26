// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_product_to_cart_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AddProductToCartDTO _$AddProductToCartDTOFromJson(Map<String, dynamic> json) {
  return _AddProductToCartDTO.fromJson(json);
}

/// @nodoc
mixin _$AddProductToCartDTO {
  String get cartId => throw _privateConstructorUsedError;
  CartItemInputDTO get cartItems => throw _privateConstructorUsedError;

  /// Serializes this AddProductToCartDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddProductToCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddProductToCartDTOCopyWith<AddProductToCartDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductToCartDTOCopyWith<$Res> {
  factory $AddProductToCartDTOCopyWith(
    AddProductToCartDTO value,
    $Res Function(AddProductToCartDTO) then,
  ) = _$AddProductToCartDTOCopyWithImpl<$Res, AddProductToCartDTO>;
  @useResult
  $Res call({String cartId, CartItemInputDTO cartItems});

  $CartItemInputDTOCopyWith<$Res> get cartItems;
}

/// @nodoc
class _$AddProductToCartDTOCopyWithImpl<$Res, $Val extends AddProductToCartDTO>
    implements $AddProductToCartDTOCopyWith<$Res> {
  _$AddProductToCartDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddProductToCartDTO
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
                        as CartItemInputDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of AddProductToCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartItemInputDTOCopyWith<$Res> get cartItems {
    return $CartItemInputDTOCopyWith<$Res>(_value.cartItems, (value) {
      return _then(_value.copyWith(cartItems: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddProductToCartDTOImplCopyWith<$Res>
    implements $AddProductToCartDTOCopyWith<$Res> {
  factory _$$AddProductToCartDTOImplCopyWith(
    _$AddProductToCartDTOImpl value,
    $Res Function(_$AddProductToCartDTOImpl) then,
  ) = __$$AddProductToCartDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cartId, CartItemInputDTO cartItems});

  @override
  $CartItemInputDTOCopyWith<$Res> get cartItems;
}

/// @nodoc
class __$$AddProductToCartDTOImplCopyWithImpl<$Res>
    extends _$AddProductToCartDTOCopyWithImpl<$Res, _$AddProductToCartDTOImpl>
    implements _$$AddProductToCartDTOImplCopyWith<$Res> {
  __$$AddProductToCartDTOImplCopyWithImpl(
    _$AddProductToCartDTOImpl _value,
    $Res Function(_$AddProductToCartDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddProductToCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cartId = null, Object? cartItems = null}) {
    return _then(
      _$AddProductToCartDTOImpl(
        cartId:
            null == cartId
                ? _value.cartId
                : cartId // ignore: cast_nullable_to_non_nullable
                    as String,
        cartItems:
            null == cartItems
                ? _value.cartItems
                : cartItems // ignore: cast_nullable_to_non_nullable
                    as CartItemInputDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddProductToCartDTOImpl implements _AddProductToCartDTO {
  const _$AddProductToCartDTOImpl({
    required this.cartId,
    required this.cartItems,
  });

  factory _$AddProductToCartDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddProductToCartDTOImplFromJson(json);

  @override
  final String cartId;
  @override
  final CartItemInputDTO cartItems;

  @override
  String toString() {
    return 'AddProductToCartDTO(cartId: $cartId, cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToCartDTOImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.cartItems, cartItems) ||
                other.cartItems == cartItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cartId, cartItems);

  /// Create a copy of AddProductToCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToCartDTOImplCopyWith<_$AddProductToCartDTOImpl> get copyWith =>
      __$$AddProductToCartDTOImplCopyWithImpl<_$AddProductToCartDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AddProductToCartDTOImplToJson(this);
  }
}

abstract class _AddProductToCartDTO implements AddProductToCartDTO {
  const factory _AddProductToCartDTO({
    required final String cartId,
    required final CartItemInputDTO cartItems,
  }) = _$AddProductToCartDTOImpl;

  factory _AddProductToCartDTO.fromJson(Map<String, dynamic> json) =
      _$AddProductToCartDTOImpl.fromJson;

  @override
  String get cartId;
  @override
  CartItemInputDTO get cartItems;

  /// Create a copy of AddProductToCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductToCartDTOImplCopyWith<_$AddProductToCartDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
