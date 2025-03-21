// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instaleap_availability_response.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

InstaleapAvailabilityResponse _$InstaleapAvailabilityResponseFromJson(
  Map<String, dynamic> json,
) {
  return _InstaleapAvailabilityResponse.fromJson(json);
}

/// @nodoc
mixin _$InstaleapAvailabilityResponse {
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_at')
  String get expiresAt => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'operational_model')
  String get operationalModel => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_fee')
  bool get shippingFee => throw _privateConstructorUsedError;
  InstaleapStore get store => throw _privateConstructorUsedError;

  /// Serializes this InstaleapAvailabilityResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InstaleapAvailabilityResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstaleapAvailabilityResponseCopyWith<InstaleapAvailabilityResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstaleapAvailabilityResponseCopyWith<$Res> {
  factory $InstaleapAvailabilityResponseCopyWith(
    InstaleapAvailabilityResponse value,
    $Res Function(InstaleapAvailabilityResponse) then,
  ) =
      _$InstaleapAvailabilityResponseCopyWithImpl<
        $Res,
        InstaleapAvailabilityResponse
      >;
  @useResult
  $Res call({
    String description,
    @JsonKey(name: 'expires_at') String expiresAt,
    String from,
    String to,
    String id,
    @JsonKey(name: 'operational_model') String operationalModel,
    @JsonKey(name: 'shipping_fee') bool shippingFee,
    InstaleapStore store,
  });

  $InstaleapStoreCopyWith<$Res> get store;
}

/// @nodoc
class _$InstaleapAvailabilityResponseCopyWithImpl<
  $Res,
  $Val extends InstaleapAvailabilityResponse
>
    implements $InstaleapAvailabilityResponseCopyWith<$Res> {
  _$InstaleapAvailabilityResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstaleapAvailabilityResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? expiresAt = null,
    Object? from = null,
    Object? to = null,
    Object? id = null,
    Object? operationalModel = null,
    Object? shippingFee = null,
    Object? store = null,
  }) {
    return _then(
      _value.copyWith(
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            expiresAt:
                null == expiresAt
                    ? _value.expiresAt
                    : expiresAt // ignore: cast_nullable_to_non_nullable
                        as String,
            from:
                null == from
                    ? _value.from
                    : from // ignore: cast_nullable_to_non_nullable
                        as String,
            to:
                null == to
                    ? _value.to
                    : to // ignore: cast_nullable_to_non_nullable
                        as String,
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            operationalModel:
                null == operationalModel
                    ? _value.operationalModel
                    : operationalModel // ignore: cast_nullable_to_non_nullable
                        as String,
            shippingFee:
                null == shippingFee
                    ? _value.shippingFee
                    : shippingFee // ignore: cast_nullable_to_non_nullable
                        as bool,
            store:
                null == store
                    ? _value.store
                    : store // ignore: cast_nullable_to_non_nullable
                        as InstaleapStore,
          )
          as $Val,
    );
  }

  /// Create a copy of InstaleapAvailabilityResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InstaleapStoreCopyWith<$Res> get store {
    return $InstaleapStoreCopyWith<$Res>(_value.store, (value) {
      return _then(_value.copyWith(store: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InstaleapAvailabilityResponseImplCopyWith<$Res>
    implements $InstaleapAvailabilityResponseCopyWith<$Res> {
  factory _$$InstaleapAvailabilityResponseImplCopyWith(
    _$InstaleapAvailabilityResponseImpl value,
    $Res Function(_$InstaleapAvailabilityResponseImpl) then,
  ) = __$$InstaleapAvailabilityResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String description,
    @JsonKey(name: 'expires_at') String expiresAt,
    String from,
    String to,
    String id,
    @JsonKey(name: 'operational_model') String operationalModel,
    @JsonKey(name: 'shipping_fee') bool shippingFee,
    InstaleapStore store,
  });

  @override
  $InstaleapStoreCopyWith<$Res> get store;
}

/// @nodoc
class __$$InstaleapAvailabilityResponseImplCopyWithImpl<$Res>
    extends
        _$InstaleapAvailabilityResponseCopyWithImpl<
          $Res,
          _$InstaleapAvailabilityResponseImpl
        >
    implements _$$InstaleapAvailabilityResponseImplCopyWith<$Res> {
  __$$InstaleapAvailabilityResponseImplCopyWithImpl(
    _$InstaleapAvailabilityResponseImpl _value,
    $Res Function(_$InstaleapAvailabilityResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InstaleapAvailabilityResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? expiresAt = null,
    Object? from = null,
    Object? to = null,
    Object? id = null,
    Object? operationalModel = null,
    Object? shippingFee = null,
    Object? store = null,
  }) {
    return _then(
      _$InstaleapAvailabilityResponseImpl(
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        expiresAt:
            null == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                    as String,
        from:
            null == from
                ? _value.from
                : from // ignore: cast_nullable_to_non_nullable
                    as String,
        to:
            null == to
                ? _value.to
                : to // ignore: cast_nullable_to_non_nullable
                    as String,
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        operationalModel:
            null == operationalModel
                ? _value.operationalModel
                : operationalModel // ignore: cast_nullable_to_non_nullable
                    as String,
        shippingFee:
            null == shippingFee
                ? _value.shippingFee
                : shippingFee // ignore: cast_nullable_to_non_nullable
                    as bool,
        store:
            null == store
                ? _value.store
                : store // ignore: cast_nullable_to_non_nullable
                    as InstaleapStore,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InstaleapAvailabilityResponseImpl
    implements _InstaleapAvailabilityResponse {
  const _$InstaleapAvailabilityResponseImpl({
    required this.description,
    @JsonKey(name: 'expires_at') required this.expiresAt,
    required this.from,
    required this.to,
    required this.id,
    @JsonKey(name: 'operational_model') required this.operationalModel,
    @JsonKey(name: 'shipping_fee') required this.shippingFee,
    required this.store,
  });

  factory _$InstaleapAvailabilityResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$InstaleapAvailabilityResponseImplFromJson(json);

  @override
  final String description;
  @override
  @JsonKey(name: 'expires_at')
  final String expiresAt;
  @override
  final String from;
  @override
  final String to;
  @override
  final String id;
  @override
  @JsonKey(name: 'operational_model')
  final String operationalModel;
  @override
  @JsonKey(name: 'shipping_fee')
  final bool shippingFee;
  @override
  final InstaleapStore store;

  @override
  String toString() {
    return 'InstaleapAvailabilityResponse(description: $description, expiresAt: $expiresAt, from: $from, to: $to, id: $id, operationalModel: $operationalModel, shippingFee: $shippingFee, store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstaleapAvailabilityResponseImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.operationalModel, operationalModel) ||
                other.operationalModel == operationalModel) &&
            (identical(other.shippingFee, shippingFee) ||
                other.shippingFee == shippingFee) &&
            (identical(other.store, store) || other.store == store));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    description,
    expiresAt,
    from,
    to,
    id,
    operationalModel,
    shippingFee,
    store,
  );

  /// Create a copy of InstaleapAvailabilityResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstaleapAvailabilityResponseImplCopyWith<
    _$InstaleapAvailabilityResponseImpl
  >
  get copyWith => __$$InstaleapAvailabilityResponseImplCopyWithImpl<
    _$InstaleapAvailabilityResponseImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstaleapAvailabilityResponseImplToJson(this);
  }
}

abstract class _InstaleapAvailabilityResponse
    implements InstaleapAvailabilityResponse {
  const factory _InstaleapAvailabilityResponse({
    required final String description,
    @JsonKey(name: 'expires_at') required final String expiresAt,
    required final String from,
    required final String to,
    required final String id,
    @JsonKey(name: 'operational_model') required final String operationalModel,
    @JsonKey(name: 'shipping_fee') required final bool shippingFee,
    required final InstaleapStore store,
  }) = _$InstaleapAvailabilityResponseImpl;

  factory _InstaleapAvailabilityResponse.fromJson(Map<String, dynamic> json) =
      _$InstaleapAvailabilityResponseImpl.fromJson;

  @override
  String get description;
  @override
  @JsonKey(name: 'expires_at')
  String get expiresAt;
  @override
  String get from;
  @override
  String get to;
  @override
  String get id;
  @override
  @JsonKey(name: 'operational_model')
  String get operationalModel;
  @override
  @JsonKey(name: 'shipping_fee')
  bool get shippingFee;
  @override
  InstaleapStore get store;

  /// Create a copy of InstaleapAvailabilityResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstaleapAvailabilityResponseImplCopyWith<
    _$InstaleapAvailabilityResponseImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

InstaleapStore _$InstaleapStoreFromJson(Map<String, dynamic> json) {
  return _InstaleapStore.fromJson(json);
}

/// @nodoc
mixin _$InstaleapStore {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this InstaleapStore to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InstaleapStore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstaleapStoreCopyWith<InstaleapStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstaleapStoreCopyWith<$Res> {
  factory $InstaleapStoreCopyWith(
    InstaleapStore value,
    $Res Function(InstaleapStore) then,
  ) = _$InstaleapStoreCopyWithImpl<$Res, InstaleapStore>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$InstaleapStoreCopyWithImpl<$Res, $Val extends InstaleapStore>
    implements $InstaleapStoreCopyWith<$Res> {
  _$InstaleapStoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstaleapStore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InstaleapStoreImplCopyWith<$Res>
    implements $InstaleapStoreCopyWith<$Res> {
  factory _$$InstaleapStoreImplCopyWith(
    _$InstaleapStoreImpl value,
    $Res Function(_$InstaleapStoreImpl) then,
  ) = __$$InstaleapStoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$InstaleapStoreImplCopyWithImpl<$Res>
    extends _$InstaleapStoreCopyWithImpl<$Res, _$InstaleapStoreImpl>
    implements _$$InstaleapStoreImplCopyWith<$Res> {
  __$$InstaleapStoreImplCopyWithImpl(
    _$InstaleapStoreImpl _value,
    $Res Function(_$InstaleapStoreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InstaleapStore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _$InstaleapStoreImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InstaleapStoreImpl implements _InstaleapStore {
  const _$InstaleapStoreImpl({required this.id, required this.name});

  factory _$InstaleapStoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstaleapStoreImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'InstaleapStore(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstaleapStoreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of InstaleapStore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstaleapStoreImplCopyWith<_$InstaleapStoreImpl> get copyWith =>
      __$$InstaleapStoreImplCopyWithImpl<_$InstaleapStoreImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$InstaleapStoreImplToJson(this);
  }
}

abstract class _InstaleapStore implements InstaleapStore {
  const factory _InstaleapStore({
    required final String id,
    required final String name,
  }) = _$InstaleapStoreImpl;

  factory _InstaleapStore.fromJson(Map<String, dynamic> json) =
      _$InstaleapStoreImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of InstaleapStore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstaleapStoreImplCopyWith<_$InstaleapStoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
