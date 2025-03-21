// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instaleap_availability_response_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

InstaleapAvailabilityResponseDTO _$InstaleapAvailabilityResponseDTOFromJson(
  Map<String, dynamic> json,
) {
  return _InstaleapAvailabilityResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$InstaleapAvailabilityResponseDTO {
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
  InstaleapStoreDTO get store => throw _privateConstructorUsedError;

  /// Serializes this InstaleapAvailabilityResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InstaleapAvailabilityResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstaleapAvailabilityResponseDTOCopyWith<InstaleapAvailabilityResponseDTO>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstaleapAvailabilityResponseDTOCopyWith<$Res> {
  factory $InstaleapAvailabilityResponseDTOCopyWith(
    InstaleapAvailabilityResponseDTO value,
    $Res Function(InstaleapAvailabilityResponseDTO) then,
  ) =
      _$InstaleapAvailabilityResponseDTOCopyWithImpl<
        $Res,
        InstaleapAvailabilityResponseDTO
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
    InstaleapStoreDTO store,
  });

  $InstaleapStoreDTOCopyWith<$Res> get store;
}

/// @nodoc
class _$InstaleapAvailabilityResponseDTOCopyWithImpl<
  $Res,
  $Val extends InstaleapAvailabilityResponseDTO
>
    implements $InstaleapAvailabilityResponseDTOCopyWith<$Res> {
  _$InstaleapAvailabilityResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstaleapAvailabilityResponseDTO
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
                        as InstaleapStoreDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of InstaleapAvailabilityResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InstaleapStoreDTOCopyWith<$Res> get store {
    return $InstaleapStoreDTOCopyWith<$Res>(_value.store, (value) {
      return _then(_value.copyWith(store: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InstaleapAvailabilityResponseDTOImplCopyWith<$Res>
    implements $InstaleapAvailabilityResponseDTOCopyWith<$Res> {
  factory _$$InstaleapAvailabilityResponseDTOImplCopyWith(
    _$InstaleapAvailabilityResponseDTOImpl value,
    $Res Function(_$InstaleapAvailabilityResponseDTOImpl) then,
  ) = __$$InstaleapAvailabilityResponseDTOImplCopyWithImpl<$Res>;
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
    InstaleapStoreDTO store,
  });

  @override
  $InstaleapStoreDTOCopyWith<$Res> get store;
}

/// @nodoc
class __$$InstaleapAvailabilityResponseDTOImplCopyWithImpl<$Res>
    extends
        _$InstaleapAvailabilityResponseDTOCopyWithImpl<
          $Res,
          _$InstaleapAvailabilityResponseDTOImpl
        >
    implements _$$InstaleapAvailabilityResponseDTOImplCopyWith<$Res> {
  __$$InstaleapAvailabilityResponseDTOImplCopyWithImpl(
    _$InstaleapAvailabilityResponseDTOImpl _value,
    $Res Function(_$InstaleapAvailabilityResponseDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InstaleapAvailabilityResponseDTO
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
      _$InstaleapAvailabilityResponseDTOImpl(
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
                    as InstaleapStoreDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InstaleapAvailabilityResponseDTOImpl
    implements _InstaleapAvailabilityResponseDTO {
  const _$InstaleapAvailabilityResponseDTOImpl({
    required this.description,
    @JsonKey(name: 'expires_at') required this.expiresAt,
    required this.from,
    required this.to,
    required this.id,
    @JsonKey(name: 'operational_model') required this.operationalModel,
    @JsonKey(name: 'shipping_fee') required this.shippingFee,
    required this.store,
  });

  factory _$InstaleapAvailabilityResponseDTOImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$InstaleapAvailabilityResponseDTOImplFromJson(json);

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
  final InstaleapStoreDTO store;

  @override
  String toString() {
    return 'InstaleapAvailabilityResponseDTO(description: $description, expiresAt: $expiresAt, from: $from, to: $to, id: $id, operationalModel: $operationalModel, shippingFee: $shippingFee, store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstaleapAvailabilityResponseDTOImpl &&
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

  /// Create a copy of InstaleapAvailabilityResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstaleapAvailabilityResponseDTOImplCopyWith<
    _$InstaleapAvailabilityResponseDTOImpl
  >
  get copyWith => __$$InstaleapAvailabilityResponseDTOImplCopyWithImpl<
    _$InstaleapAvailabilityResponseDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstaleapAvailabilityResponseDTOImplToJson(this);
  }
}

abstract class _InstaleapAvailabilityResponseDTO
    implements InstaleapAvailabilityResponseDTO {
  const factory _InstaleapAvailabilityResponseDTO({
    required final String description,
    @JsonKey(name: 'expires_at') required final String expiresAt,
    required final String from,
    required final String to,
    required final String id,
    @JsonKey(name: 'operational_model') required final String operationalModel,
    @JsonKey(name: 'shipping_fee') required final bool shippingFee,
    required final InstaleapStoreDTO store,
  }) = _$InstaleapAvailabilityResponseDTOImpl;

  factory _InstaleapAvailabilityResponseDTO.fromJson(
    Map<String, dynamic> json,
  ) = _$InstaleapAvailabilityResponseDTOImpl.fromJson;

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
  InstaleapStoreDTO get store;

  /// Create a copy of InstaleapAvailabilityResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstaleapAvailabilityResponseDTOImplCopyWith<
    _$InstaleapAvailabilityResponseDTOImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

InstaleapStoreDTO _$InstaleapStoreDTOFromJson(Map<String, dynamic> json) {
  return _InstaleapStoreDTO.fromJson(json);
}

/// @nodoc
mixin _$InstaleapStoreDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this InstaleapStoreDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InstaleapStoreDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstaleapStoreDTOCopyWith<InstaleapStoreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstaleapStoreDTOCopyWith<$Res> {
  factory $InstaleapStoreDTOCopyWith(
    InstaleapStoreDTO value,
    $Res Function(InstaleapStoreDTO) then,
  ) = _$InstaleapStoreDTOCopyWithImpl<$Res, InstaleapStoreDTO>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$InstaleapStoreDTOCopyWithImpl<$Res, $Val extends InstaleapStoreDTO>
    implements $InstaleapStoreDTOCopyWith<$Res> {
  _$InstaleapStoreDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstaleapStoreDTO
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
abstract class _$$InstaleapStoreDTOImplCopyWith<$Res>
    implements $InstaleapStoreDTOCopyWith<$Res> {
  factory _$$InstaleapStoreDTOImplCopyWith(
    _$InstaleapStoreDTOImpl value,
    $Res Function(_$InstaleapStoreDTOImpl) then,
  ) = __$$InstaleapStoreDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$InstaleapStoreDTOImplCopyWithImpl<$Res>
    extends _$InstaleapStoreDTOCopyWithImpl<$Res, _$InstaleapStoreDTOImpl>
    implements _$$InstaleapStoreDTOImplCopyWith<$Res> {
  __$$InstaleapStoreDTOImplCopyWithImpl(
    _$InstaleapStoreDTOImpl _value,
    $Res Function(_$InstaleapStoreDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InstaleapStoreDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _$InstaleapStoreDTOImpl(
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
class _$InstaleapStoreDTOImpl implements _InstaleapStoreDTO {
  const _$InstaleapStoreDTOImpl({required this.id, required this.name});

  factory _$InstaleapStoreDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstaleapStoreDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'InstaleapStoreDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstaleapStoreDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of InstaleapStoreDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstaleapStoreDTOImplCopyWith<_$InstaleapStoreDTOImpl> get copyWith =>
      __$$InstaleapStoreDTOImplCopyWithImpl<_$InstaleapStoreDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$InstaleapStoreDTOImplToJson(this);
  }
}

abstract class _InstaleapStoreDTO implements InstaleapStoreDTO {
  const factory _InstaleapStoreDTO({
    required final String id,
    required final String name,
  }) = _$InstaleapStoreDTOImpl;

  factory _InstaleapStoreDTO.fromJson(Map<String, dynamic> json) =
      _$InstaleapStoreDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of InstaleapStoreDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstaleapStoreDTOImplCopyWith<_$InstaleapStoreDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
