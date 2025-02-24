// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_address_cache_state.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CustomerAddressCache {
  List<CustomerAddressEntity> get shippingAddresses =>
      throw _privateConstructorUsedError;
  CustomerAddressEntity? get selectedAddress =>
      throw _privateConstructorUsedError;

  /// Create a copy of CustomerAddressCache
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerAddressCacheCopyWith<CustomerAddressCache> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAddressCacheCopyWith<$Res> {
  factory $CustomerAddressCacheCopyWith(
    CustomerAddressCache value,
    $Res Function(CustomerAddressCache) then,
  ) = _$CustomerAddressCacheCopyWithImpl<$Res, CustomerAddressCache>;
  @useResult
  $Res call({
    List<CustomerAddressEntity> shippingAddresses,
    CustomerAddressEntity? selectedAddress,
  });
}

/// @nodoc
class _$CustomerAddressCacheCopyWithImpl<
  $Res,
  $Val extends CustomerAddressCache
>
    implements $CustomerAddressCacheCopyWith<$Res> {
  _$CustomerAddressCacheCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerAddressCache
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingAddresses = null,
    Object? selectedAddress = freezed,
  }) {
    return _then(
      _value.copyWith(
            shippingAddresses:
                null == shippingAddresses
                    ? _value.shippingAddresses
                    : shippingAddresses // ignore: cast_nullable_to_non_nullable
                        as List<CustomerAddressEntity>,
            selectedAddress:
                freezed == selectedAddress
                    ? _value.selectedAddress
                    : selectedAddress // ignore: cast_nullable_to_non_nullable
                        as CustomerAddressEntity?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CustomerAddressCacheImplCopyWith<$Res>
    implements $CustomerAddressCacheCopyWith<$Res> {
  factory _$$CustomerAddressCacheImplCopyWith(
    _$CustomerAddressCacheImpl value,
    $Res Function(_$CustomerAddressCacheImpl) then,
  ) = __$$CustomerAddressCacheImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<CustomerAddressEntity> shippingAddresses,
    CustomerAddressEntity? selectedAddress,
  });
}

/// @nodoc
class __$$CustomerAddressCacheImplCopyWithImpl<$Res>
    extends _$CustomerAddressCacheCopyWithImpl<$Res, _$CustomerAddressCacheImpl>
    implements _$$CustomerAddressCacheImplCopyWith<$Res> {
  __$$CustomerAddressCacheImplCopyWithImpl(
    _$CustomerAddressCacheImpl _value,
    $Res Function(_$CustomerAddressCacheImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerAddressCache
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingAddresses = null,
    Object? selectedAddress = freezed,
  }) {
    return _then(
      _$CustomerAddressCacheImpl(
        shippingAddresses:
            null == shippingAddresses
                ? _value.shippingAddresses
                : shippingAddresses // ignore: cast_nullable_to_non_nullable
                    as List<CustomerAddressEntity>,
        selectedAddress:
            freezed == selectedAddress
                ? _value.selectedAddress
                : selectedAddress // ignore: cast_nullable_to_non_nullable
                    as CustomerAddressEntity?,
      ),
    );
  }
}

/// @nodoc

class _$CustomerAddressCacheImpl implements _CustomerAddressCache {
  const _$CustomerAddressCacheImpl({
    this.shippingAddresses = const [],
    this.selectedAddress,
  });

  @override
  @JsonKey()
  final List<CustomerAddressEntity> shippingAddresses;
  @override
  final CustomerAddressEntity? selectedAddress;

  @override
  String toString() {
    return 'CustomerAddressCache(shippingAddresses: $shippingAddresses, selectedAddress: $selectedAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerAddressCacheImpl &&
            const DeepCollectionEquality().equals(
              other.shippingAddresses,
              shippingAddresses,
            ) &&
            (identical(other.selectedAddress, selectedAddress) ||
                other.selectedAddress == selectedAddress));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(shippingAddresses),
    selectedAddress,
  );

  /// Create a copy of CustomerAddressCache
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerAddressCacheImplCopyWith<_$CustomerAddressCacheImpl>
  get copyWith =>
      __$$CustomerAddressCacheImplCopyWithImpl<_$CustomerAddressCacheImpl>(
        this,
        _$identity,
      );
}

abstract class _CustomerAddressCache implements CustomerAddressCache {
  const factory _CustomerAddressCache({
    final List<CustomerAddressEntity> shippingAddresses,
    final CustomerAddressEntity? selectedAddress,
  }) = _$CustomerAddressCacheImpl;

  @override
  List<CustomerAddressEntity> get shippingAddresses;
  @override
  CustomerAddressEntity? get selectedAddress;

  /// Create a copy of CustomerAddressCache
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerAddressCacheImplCopyWith<_$CustomerAddressCacheImpl>
  get copyWith => throw _privateConstructorUsedError;
}
