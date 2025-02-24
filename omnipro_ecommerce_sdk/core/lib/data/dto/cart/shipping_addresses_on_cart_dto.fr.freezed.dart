// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_addresses_on_cart_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ShippingAddressesOnCartDTO _$ShippingAddressesOnCartDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ShippingAddressesOnCartDTO.fromJson(json);
}

/// @nodoc
mixin _$ShippingAddressesOnCartDTO {
  @JsonKey(name: 'shipping_addresses')
  List<ShippingAddressOnCartDTO> get shippingAddresses =>
      throw _privateConstructorUsedError;

  /// Serializes this ShippingAddressesOnCartDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShippingAddressesOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingAddressesOnCartDTOCopyWith<ShippingAddressesOnCartDTO>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingAddressesOnCartDTOCopyWith<$Res> {
  factory $ShippingAddressesOnCartDTOCopyWith(
    ShippingAddressesOnCartDTO value,
    $Res Function(ShippingAddressesOnCartDTO) then,
  ) =
      _$ShippingAddressesOnCartDTOCopyWithImpl<
        $Res,
        ShippingAddressesOnCartDTO
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'shipping_addresses')
    List<ShippingAddressOnCartDTO> shippingAddresses,
  });
}

/// @nodoc
class _$ShippingAddressesOnCartDTOCopyWithImpl<
  $Res,
  $Val extends ShippingAddressesOnCartDTO
>
    implements $ShippingAddressesOnCartDTOCopyWith<$Res> {
  _$ShippingAddressesOnCartDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingAddressesOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? shippingAddresses = null}) {
    return _then(
      _value.copyWith(
            shippingAddresses:
                null == shippingAddresses
                    ? _value.shippingAddresses
                    : shippingAddresses // ignore: cast_nullable_to_non_nullable
                        as List<ShippingAddressOnCartDTO>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShippingAddressesOnCartDTOImplCopyWith<$Res>
    implements $ShippingAddressesOnCartDTOCopyWith<$Res> {
  factory _$$ShippingAddressesOnCartDTOImplCopyWith(
    _$ShippingAddressesOnCartDTOImpl value,
    $Res Function(_$ShippingAddressesOnCartDTOImpl) then,
  ) = __$$ShippingAddressesOnCartDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'shipping_addresses')
    List<ShippingAddressOnCartDTO> shippingAddresses,
  });
}

/// @nodoc
class __$$ShippingAddressesOnCartDTOImplCopyWithImpl<$Res>
    extends
        _$ShippingAddressesOnCartDTOCopyWithImpl<
          $Res,
          _$ShippingAddressesOnCartDTOImpl
        >
    implements _$$ShippingAddressesOnCartDTOImplCopyWith<$Res> {
  __$$ShippingAddressesOnCartDTOImplCopyWithImpl(
    _$ShippingAddressesOnCartDTOImpl _value,
    $Res Function(_$ShippingAddressesOnCartDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShippingAddressesOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? shippingAddresses = null}) {
    return _then(
      _$ShippingAddressesOnCartDTOImpl(
        shippingAddresses:
            null == shippingAddresses
                ? _value._shippingAddresses
                : shippingAddresses // ignore: cast_nullable_to_non_nullable
                    as List<ShippingAddressOnCartDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingAddressesOnCartDTOImpl implements _ShippingAddressesOnCartDTO {
  const _$ShippingAddressesOnCartDTOImpl({
    @JsonKey(name: 'shipping_addresses')
    required final List<ShippingAddressOnCartDTO> shippingAddresses,
  }) : _shippingAddresses = shippingAddresses;

  factory _$ShippingAddressesOnCartDTOImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ShippingAddressesOnCartDTOImplFromJson(json);

  final List<ShippingAddressOnCartDTO> _shippingAddresses;
  @override
  @JsonKey(name: 'shipping_addresses')
  List<ShippingAddressOnCartDTO> get shippingAddresses {
    if (_shippingAddresses is EqualUnmodifiableListView)
      return _shippingAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shippingAddresses);
  }

  @override
  String toString() {
    return 'ShippingAddressesOnCartDTO(shippingAddresses: $shippingAddresses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingAddressesOnCartDTOImpl &&
            const DeepCollectionEquality().equals(
              other._shippingAddresses,
              _shippingAddresses,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_shippingAddresses),
  );

  /// Create a copy of ShippingAddressesOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingAddressesOnCartDTOImplCopyWith<_$ShippingAddressesOnCartDTOImpl>
  get copyWith => __$$ShippingAddressesOnCartDTOImplCopyWithImpl<
    _$ShippingAddressesOnCartDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingAddressesOnCartDTOImplToJson(this);
  }
}

abstract class _ShippingAddressesOnCartDTO
    implements ShippingAddressesOnCartDTO {
  const factory _ShippingAddressesOnCartDTO({
    @JsonKey(name: 'shipping_addresses')
    required final List<ShippingAddressOnCartDTO> shippingAddresses,
  }) = _$ShippingAddressesOnCartDTOImpl;

  factory _ShippingAddressesOnCartDTO.fromJson(Map<String, dynamic> json) =
      _$ShippingAddressesOnCartDTOImpl.fromJson;

  @override
  @JsonKey(name: 'shipping_addresses')
  List<ShippingAddressOnCartDTO> get shippingAddresses;

  /// Create a copy of ShippingAddressesOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingAddressesOnCartDTOImplCopyWith<_$ShippingAddressesOnCartDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
