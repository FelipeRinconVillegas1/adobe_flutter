// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_inventory_request_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductInventoryRequestDTO _$ProductInventoryRequestDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ProductInventoryRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductInventoryRequestDTO {
  ProductInventoryRequestDetailsDTO get data =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductInventoryRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductInventoryRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductInventoryRequestDTOCopyWith<ProductInventoryRequestDTO>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductInventoryRequestDTOCopyWith<$Res> {
  factory $ProductInventoryRequestDTOCopyWith(
    ProductInventoryRequestDTO value,
    $Res Function(ProductInventoryRequestDTO) then,
  ) =
      _$ProductInventoryRequestDTOCopyWithImpl<
        $Res,
        ProductInventoryRequestDTO
      >;
  @useResult
  $Res call({ProductInventoryRequestDetailsDTO data});

  $ProductInventoryRequestDetailsDTOCopyWith<$Res> get data;
}

/// @nodoc
class _$ProductInventoryRequestDTOCopyWithImpl<
  $Res,
  $Val extends ProductInventoryRequestDTO
>
    implements $ProductInventoryRequestDTOCopyWith<$Res> {
  _$ProductInventoryRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductInventoryRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _value.copyWith(
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as ProductInventoryRequestDetailsDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductInventoryRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductInventoryRequestDetailsDTOCopyWith<$Res> get data {
    return $ProductInventoryRequestDetailsDTOCopyWith<$Res>(_value.data, (
      value,
    ) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductInventoryRequestDTOImplCopyWith<$Res>
    implements $ProductInventoryRequestDTOCopyWith<$Res> {
  factory _$$ProductInventoryRequestDTOImplCopyWith(
    _$ProductInventoryRequestDTOImpl value,
    $Res Function(_$ProductInventoryRequestDTOImpl) then,
  ) = __$$ProductInventoryRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductInventoryRequestDetailsDTO data});

  @override
  $ProductInventoryRequestDetailsDTOCopyWith<$Res> get data;
}

/// @nodoc
class __$$ProductInventoryRequestDTOImplCopyWithImpl<$Res>
    extends
        _$ProductInventoryRequestDTOCopyWithImpl<
          $Res,
          _$ProductInventoryRequestDTOImpl
        >
    implements _$$ProductInventoryRequestDTOImplCopyWith<$Res> {
  __$$ProductInventoryRequestDTOImplCopyWithImpl(
    _$ProductInventoryRequestDTOImpl _value,
    $Res Function(_$ProductInventoryRequestDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductInventoryRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$ProductInventoryRequestDTOImpl(
        data:
            null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as ProductInventoryRequestDetailsDTO,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProductInventoryRequestDTOImpl implements _ProductInventoryRequestDTO {
  const _$ProductInventoryRequestDTOImpl({required this.data});

  factory _$ProductInventoryRequestDTOImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductInventoryRequestDTOImplFromJson(json);

  @override
  final ProductInventoryRequestDetailsDTO data;

  @override
  String toString() {
    return 'ProductInventoryRequestDTO(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductInventoryRequestDTOImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of ProductInventoryRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductInventoryRequestDTOImplCopyWith<_$ProductInventoryRequestDTOImpl>
  get copyWith => __$$ProductInventoryRequestDTOImplCopyWithImpl<
    _$ProductInventoryRequestDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductInventoryRequestDTOImplToJson(this);
  }
}

abstract class _ProductInventoryRequestDTO
    implements ProductInventoryRequestDTO {
  const factory _ProductInventoryRequestDTO({
    required final ProductInventoryRequestDetailsDTO data,
  }) = _$ProductInventoryRequestDTOImpl;

  factory _ProductInventoryRequestDTO.fromJson(Map<String, dynamic> json) =
      _$ProductInventoryRequestDTOImpl.fromJson;

  @override
  ProductInventoryRequestDetailsDTO get data;

  /// Create a copy of ProductInventoryRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductInventoryRequestDTOImplCopyWith<_$ProductInventoryRequestDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductInventoryRequestDetailsDTO _$ProductInventoryRequestDetailsDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ProductInventoryRequestDetailsDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductInventoryRequestDetailsDTO {
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  String get zipcode => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  List<ItemInventoryDetailDTO> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'show_multi_store')
  bool get showMultiStore => throw _privateConstructorUsedError;
  @JsonKey(name: 'add_store_address')
  bool get addStoreAddress => throw _privateConstructorUsedError;

  /// Serializes this ProductInventoryRequestDetailsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductInventoryRequestDetailsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductInventoryRequestDetailsDTOCopyWith<ProductInventoryRequestDetailsDTO>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductInventoryRequestDetailsDTOCopyWith<$Res> {
  factory $ProductInventoryRequestDetailsDTOCopyWith(
    ProductInventoryRequestDetailsDTO value,
    $Res Function(ProductInventoryRequestDetailsDTO) then,
  ) =
      _$ProductInventoryRequestDetailsDTOCopyWithImpl<
        $Res,
        ProductInventoryRequestDetailsDTO
      >;
  @useResult
  $Res call({
    String latitude,
    String longitude,
    String zipcode,
    String region,
    List<ItemInventoryDetailDTO> items,
    @JsonKey(name: 'show_multi_store') bool showMultiStore,
    @JsonKey(name: 'add_store_address') bool addStoreAddress,
  });
}

/// @nodoc
class _$ProductInventoryRequestDetailsDTOCopyWithImpl<
  $Res,
  $Val extends ProductInventoryRequestDetailsDTO
>
    implements $ProductInventoryRequestDetailsDTOCopyWith<$Res> {
  _$ProductInventoryRequestDetailsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductInventoryRequestDetailsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? zipcode = null,
    Object? region = null,
    Object? items = null,
    Object? showMultiStore = null,
    Object? addStoreAddress = null,
  }) {
    return _then(
      _value.copyWith(
            latitude:
                null == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as String,
            longitude:
                null == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as String,
            zipcode:
                null == zipcode
                    ? _value.zipcode
                    : zipcode // ignore: cast_nullable_to_non_nullable
                        as String,
            region:
                null == region
                    ? _value.region
                    : region // ignore: cast_nullable_to_non_nullable
                        as String,
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<ItemInventoryDetailDTO>,
            showMultiStore:
                null == showMultiStore
                    ? _value.showMultiStore
                    : showMultiStore // ignore: cast_nullable_to_non_nullable
                        as bool,
            addStoreAddress:
                null == addStoreAddress
                    ? _value.addStoreAddress
                    : addStoreAddress // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductInventoryRequestDetailsDTOImplCopyWith<$Res>
    implements $ProductInventoryRequestDetailsDTOCopyWith<$Res> {
  factory _$$ProductInventoryRequestDetailsDTOImplCopyWith(
    _$ProductInventoryRequestDetailsDTOImpl value,
    $Res Function(_$ProductInventoryRequestDetailsDTOImpl) then,
  ) = __$$ProductInventoryRequestDetailsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String latitude,
    String longitude,
    String zipcode,
    String region,
    List<ItemInventoryDetailDTO> items,
    @JsonKey(name: 'show_multi_store') bool showMultiStore,
    @JsonKey(name: 'add_store_address') bool addStoreAddress,
  });
}

/// @nodoc
class __$$ProductInventoryRequestDetailsDTOImplCopyWithImpl<$Res>
    extends
        _$ProductInventoryRequestDetailsDTOCopyWithImpl<
          $Res,
          _$ProductInventoryRequestDetailsDTOImpl
        >
    implements _$$ProductInventoryRequestDetailsDTOImplCopyWith<$Res> {
  __$$ProductInventoryRequestDetailsDTOImplCopyWithImpl(
    _$ProductInventoryRequestDetailsDTOImpl _value,
    $Res Function(_$ProductInventoryRequestDetailsDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductInventoryRequestDetailsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? zipcode = null,
    Object? region = null,
    Object? items = null,
    Object? showMultiStore = null,
    Object? addStoreAddress = null,
  }) {
    return _then(
      _$ProductInventoryRequestDetailsDTOImpl(
        latitude:
            null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as String,
        longitude:
            null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as String,
        zipcode:
            null == zipcode
                ? _value.zipcode
                : zipcode // ignore: cast_nullable_to_non_nullable
                    as String,
        region:
            null == region
                ? _value.region
                : region // ignore: cast_nullable_to_non_nullable
                    as String,
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<ItemInventoryDetailDTO>,
        showMultiStore:
            null == showMultiStore
                ? _value.showMultiStore
                : showMultiStore // ignore: cast_nullable_to_non_nullable
                    as bool,
        addStoreAddress:
            null == addStoreAddress
                ? _value.addStoreAddress
                : addStoreAddress // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProductInventoryRequestDetailsDTOImpl
    implements _ProductInventoryRequestDetailsDTO {
  const _$ProductInventoryRequestDetailsDTOImpl({
    required this.latitude,
    required this.longitude,
    required this.zipcode,
    required this.region,
    required final List<ItemInventoryDetailDTO> items,
    @JsonKey(name: 'show_multi_store') this.showMultiStore = false,
    @JsonKey(name: 'add_store_address') this.addStoreAddress = false,
  }) : _items = items;

  factory _$ProductInventoryRequestDetailsDTOImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductInventoryRequestDetailsDTOImplFromJson(json);

  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String zipcode;
  @override
  final String region;
  final List<ItemInventoryDetailDTO> _items;
  @override
  List<ItemInventoryDetailDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'show_multi_store')
  final bool showMultiStore;
  @override
  @JsonKey(name: 'add_store_address')
  final bool addStoreAddress;

  @override
  String toString() {
    return 'ProductInventoryRequestDetailsDTO(latitude: $latitude, longitude: $longitude, zipcode: $zipcode, region: $region, items: $items, showMultiStore: $showMultiStore, addStoreAddress: $addStoreAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductInventoryRequestDetailsDTOImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode) &&
            (identical(other.region, region) || other.region == region) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.showMultiStore, showMultiStore) ||
                other.showMultiStore == showMultiStore) &&
            (identical(other.addStoreAddress, addStoreAddress) ||
                other.addStoreAddress == addStoreAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    latitude,
    longitude,
    zipcode,
    region,
    const DeepCollectionEquality().hash(_items),
    showMultiStore,
    addStoreAddress,
  );

  /// Create a copy of ProductInventoryRequestDetailsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductInventoryRequestDetailsDTOImplCopyWith<
    _$ProductInventoryRequestDetailsDTOImpl
  >
  get copyWith => __$$ProductInventoryRequestDetailsDTOImplCopyWithImpl<
    _$ProductInventoryRequestDetailsDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductInventoryRequestDetailsDTOImplToJson(this);
  }
}

abstract class _ProductInventoryRequestDetailsDTO
    implements ProductInventoryRequestDetailsDTO {
  const factory _ProductInventoryRequestDetailsDTO({
    required final String latitude,
    required final String longitude,
    required final String zipcode,
    required final String region,
    required final List<ItemInventoryDetailDTO> items,
    @JsonKey(name: 'show_multi_store') final bool showMultiStore,
    @JsonKey(name: 'add_store_address') final bool addStoreAddress,
  }) = _$ProductInventoryRequestDetailsDTOImpl;

  factory _ProductInventoryRequestDetailsDTO.fromJson(
    Map<String, dynamic> json,
  ) = _$ProductInventoryRequestDetailsDTOImpl.fromJson;

  @override
  String get latitude;
  @override
  String get longitude;
  @override
  String get zipcode;
  @override
  String get region;
  @override
  List<ItemInventoryDetailDTO> get items;
  @override
  @JsonKey(name: 'show_multi_store')
  bool get showMultiStore;
  @override
  @JsonKey(name: 'add_store_address')
  bool get addStoreAddress;

  /// Create a copy of ProductInventoryRequestDetailsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductInventoryRequestDetailsDTOImplCopyWith<
    _$ProductInventoryRequestDetailsDTOImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
