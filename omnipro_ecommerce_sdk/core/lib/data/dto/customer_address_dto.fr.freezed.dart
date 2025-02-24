// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_address_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerAddressDTO _$CustomerAddressDTOFromJson(Map<String, dynamic> json) {
  return _CustomerAddressDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerAddressDTO {
  int get id => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  RegionDTO get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String get countryCode => throw _privateConstructorUsedError;
  List<String> get street => throw _privateConstructorUsedError;
  String get telephone => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'custom_attributesV2')
  List<CustomAttributeDTO> get customAttributes =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'default_shipping', defaultValue: false)
  bool? get defaultShipping => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_billing', defaultValue: false)
  bool? get defaultBilling => throw _privateConstructorUsedError;
  String? get postcode => throw _privateConstructorUsedError;

  /// Serializes this CustomerAddressDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerAddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerAddressDTOCopyWith<CustomerAddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAddressDTOCopyWith<$Res> {
  factory $CustomerAddressDTOCopyWith(
    CustomerAddressDTO value,
    $Res Function(CustomerAddressDTO) then,
  ) = _$CustomerAddressDTOCopyWithImpl<$Res, CustomerAddressDTO>;
  @useResult
  $Res call({
    int id,
    String firstname,
    String lastname,
    RegionDTO region,
    @JsonKey(name: 'country_code') String countryCode,
    List<String> street,
    String telephone,
    String city,
    @JsonKey(name: 'custom_attributesV2')
    List<CustomAttributeDTO> customAttributes,
    @JsonKey(name: 'default_shipping', defaultValue: false)
    bool? defaultShipping,
    @JsonKey(name: 'default_billing', defaultValue: false) bool? defaultBilling,
    String? postcode,
  });

  $RegionDTOCopyWith<$Res> get region;
}

/// @nodoc
class _$CustomerAddressDTOCopyWithImpl<$Res, $Val extends CustomerAddressDTO>
    implements $CustomerAddressDTOCopyWith<$Res> {
  _$CustomerAddressDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerAddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? region = null,
    Object? countryCode = null,
    Object? street = null,
    Object? telephone = null,
    Object? city = null,
    Object? customAttributes = null,
    Object? defaultShipping = freezed,
    Object? defaultBilling = freezed,
    Object? postcode = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            firstname:
                null == firstname
                    ? _value.firstname
                    : firstname // ignore: cast_nullable_to_non_nullable
                        as String,
            lastname:
                null == lastname
                    ? _value.lastname
                    : lastname // ignore: cast_nullable_to_non_nullable
                        as String,
            region:
                null == region
                    ? _value.region
                    : region // ignore: cast_nullable_to_non_nullable
                        as RegionDTO,
            countryCode:
                null == countryCode
                    ? _value.countryCode
                    : countryCode // ignore: cast_nullable_to_non_nullable
                        as String,
            street:
                null == street
                    ? _value.street
                    : street // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            telephone:
                null == telephone
                    ? _value.telephone
                    : telephone // ignore: cast_nullable_to_non_nullable
                        as String,
            city:
                null == city
                    ? _value.city
                    : city // ignore: cast_nullable_to_non_nullable
                        as String,
            customAttributes:
                null == customAttributes
                    ? _value.customAttributes
                    : customAttributes // ignore: cast_nullable_to_non_nullable
                        as List<CustomAttributeDTO>,
            defaultShipping:
                freezed == defaultShipping
                    ? _value.defaultShipping
                    : defaultShipping // ignore: cast_nullable_to_non_nullable
                        as bool?,
            defaultBilling:
                freezed == defaultBilling
                    ? _value.defaultBilling
                    : defaultBilling // ignore: cast_nullable_to_non_nullable
                        as bool?,
            postcode:
                freezed == postcode
                    ? _value.postcode
                    : postcode // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of CustomerAddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegionDTOCopyWith<$Res> get region {
    return $RegionDTOCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerAddressDTOImplCopyWith<$Res>
    implements $CustomerAddressDTOCopyWith<$Res> {
  factory _$$CustomerAddressDTOImplCopyWith(
    _$CustomerAddressDTOImpl value,
    $Res Function(_$CustomerAddressDTOImpl) then,
  ) = __$$CustomerAddressDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String firstname,
    String lastname,
    RegionDTO region,
    @JsonKey(name: 'country_code') String countryCode,
    List<String> street,
    String telephone,
    String city,
    @JsonKey(name: 'custom_attributesV2')
    List<CustomAttributeDTO> customAttributes,
    @JsonKey(name: 'default_shipping', defaultValue: false)
    bool? defaultShipping,
    @JsonKey(name: 'default_billing', defaultValue: false) bool? defaultBilling,
    String? postcode,
  });

  @override
  $RegionDTOCopyWith<$Res> get region;
}

/// @nodoc
class __$$CustomerAddressDTOImplCopyWithImpl<$Res>
    extends _$CustomerAddressDTOCopyWithImpl<$Res, _$CustomerAddressDTOImpl>
    implements _$$CustomerAddressDTOImplCopyWith<$Res> {
  __$$CustomerAddressDTOImplCopyWithImpl(
    _$CustomerAddressDTOImpl _value,
    $Res Function(_$CustomerAddressDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerAddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? region = null,
    Object? countryCode = null,
    Object? street = null,
    Object? telephone = null,
    Object? city = null,
    Object? customAttributes = null,
    Object? defaultShipping = freezed,
    Object? defaultBilling = freezed,
    Object? postcode = freezed,
  }) {
    return _then(
      _$CustomerAddressDTOImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        firstname:
            null == firstname
                ? _value.firstname
                : firstname // ignore: cast_nullable_to_non_nullable
                    as String,
        lastname:
            null == lastname
                ? _value.lastname
                : lastname // ignore: cast_nullable_to_non_nullable
                    as String,
        region:
            null == region
                ? _value.region
                : region // ignore: cast_nullable_to_non_nullable
                    as RegionDTO,
        countryCode:
            null == countryCode
                ? _value.countryCode
                : countryCode // ignore: cast_nullable_to_non_nullable
                    as String,
        street:
            null == street
                ? _value._street
                : street // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        telephone:
            null == telephone
                ? _value.telephone
                : telephone // ignore: cast_nullable_to_non_nullable
                    as String,
        city:
            null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                    as String,
        customAttributes:
            null == customAttributes
                ? _value._customAttributes
                : customAttributes // ignore: cast_nullable_to_non_nullable
                    as List<CustomAttributeDTO>,
        defaultShipping:
            freezed == defaultShipping
                ? _value.defaultShipping
                : defaultShipping // ignore: cast_nullable_to_non_nullable
                    as bool?,
        defaultBilling:
            freezed == defaultBilling
                ? _value.defaultBilling
                : defaultBilling // ignore: cast_nullable_to_non_nullable
                    as bool?,
        postcode:
            freezed == postcode
                ? _value.postcode
                : postcode // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CustomerAddressDTOImpl implements _CustomerAddressDTO {
  const _$CustomerAddressDTOImpl({
    this.id = -1,
    required this.firstname,
    required this.lastname,
    required this.region,
    @JsonKey(name: 'country_code') required this.countryCode,
    final List<String> street = const [],
    required this.telephone,
    required this.city,
    @JsonKey(name: 'custom_attributesV2')
    required final List<CustomAttributeDTO> customAttributes,
    @JsonKey(name: 'default_shipping', defaultValue: false)
    this.defaultShipping,
    @JsonKey(name: 'default_billing', defaultValue: false) this.defaultBilling,
    this.postcode,
  }) : _street = street,
       _customAttributes = customAttributes;

  factory _$CustomerAddressDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerAddressDTOImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final RegionDTO region;
  @override
  @JsonKey(name: 'country_code')
  final String countryCode;
  final List<String> _street;
  @override
  @JsonKey()
  List<String> get street {
    if (_street is EqualUnmodifiableListView) return _street;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_street);
  }

  @override
  final String telephone;
  @override
  final String city;
  final List<CustomAttributeDTO> _customAttributes;
  @override
  @JsonKey(name: 'custom_attributesV2')
  List<CustomAttributeDTO> get customAttributes {
    if (_customAttributes is EqualUnmodifiableListView)
      return _customAttributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customAttributes);
  }

  @override
  @JsonKey(name: 'default_shipping', defaultValue: false)
  final bool? defaultShipping;
  @override
  @JsonKey(name: 'default_billing', defaultValue: false)
  final bool? defaultBilling;
  @override
  final String? postcode;

  @override
  String toString() {
    return 'CustomerAddressDTO(id: $id, firstname: $firstname, lastname: $lastname, region: $region, countryCode: $countryCode, street: $street, telephone: $telephone, city: $city, customAttributes: $customAttributes, defaultShipping: $defaultShipping, defaultBilling: $defaultBilling, postcode: $postcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerAddressDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            const DeepCollectionEquality().equals(other._street, _street) &&
            (identical(other.telephone, telephone) ||
                other.telephone == telephone) &&
            (identical(other.city, city) || other.city == city) &&
            const DeepCollectionEquality().equals(
              other._customAttributes,
              _customAttributes,
            ) &&
            (identical(other.defaultShipping, defaultShipping) ||
                other.defaultShipping == defaultShipping) &&
            (identical(other.defaultBilling, defaultBilling) ||
                other.defaultBilling == defaultBilling) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    firstname,
    lastname,
    region,
    countryCode,
    const DeepCollectionEquality().hash(_street),
    telephone,
    city,
    const DeepCollectionEquality().hash(_customAttributes),
    defaultShipping,
    defaultBilling,
    postcode,
  );

  /// Create a copy of CustomerAddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerAddressDTOImplCopyWith<_$CustomerAddressDTOImpl> get copyWith =>
      __$$CustomerAddressDTOImplCopyWithImpl<_$CustomerAddressDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerAddressDTOImplToJson(this);
  }
}

abstract class _CustomerAddressDTO implements CustomerAddressDTO {
  const factory _CustomerAddressDTO({
    final int id,
    required final String firstname,
    required final String lastname,
    required final RegionDTO region,
    @JsonKey(name: 'country_code') required final String countryCode,
    final List<String> street,
    required final String telephone,
    required final String city,
    @JsonKey(name: 'custom_attributesV2')
    required final List<CustomAttributeDTO> customAttributes,
    @JsonKey(name: 'default_shipping', defaultValue: false)
    final bool? defaultShipping,
    @JsonKey(name: 'default_billing', defaultValue: false)
    final bool? defaultBilling,
    final String? postcode,
  }) = _$CustomerAddressDTOImpl;

  factory _CustomerAddressDTO.fromJson(Map<String, dynamic> json) =
      _$CustomerAddressDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  RegionDTO get region;
  @override
  @JsonKey(name: 'country_code')
  String get countryCode;
  @override
  List<String> get street;
  @override
  String get telephone;
  @override
  String get city;
  @override
  @JsonKey(name: 'custom_attributesV2')
  List<CustomAttributeDTO> get customAttributes;
  @override
  @JsonKey(name: 'default_shipping', defaultValue: false)
  bool? get defaultShipping;
  @override
  @JsonKey(name: 'default_billing', defaultValue: false)
  bool? get defaultBilling;
  @override
  String? get postcode;

  /// Create a copy of CustomerAddressDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerAddressDTOImplCopyWith<_$CustomerAddressDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegionDTO _$RegionDTOFromJson(Map<String, dynamic> json) {
  return _RegionDTO.fromJson(json);
}

/// @nodoc
mixin _$RegionDTO {
  String get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_id')
  int get regionId => throw _privateConstructorUsedError;

  /// Serializes this RegionDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegionDTOCopyWith<RegionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionDTOCopyWith<$Res> {
  factory $RegionDTOCopyWith(RegionDTO value, $Res Function(RegionDTO) then) =
      _$RegionDTOCopyWithImpl<$Res, RegionDTO>;
  @useResult
  $Res call({
    String region,
    @JsonKey(name: 'region_code') String code,
    @JsonKey(name: 'region_id') int regionId,
  });
}

/// @nodoc
class _$RegionDTOCopyWithImpl<$Res, $Val extends RegionDTO>
    implements $RegionDTOCopyWith<$Res> {
  _$RegionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = null,
    Object? code = null,
    Object? regionId = null,
  }) {
    return _then(
      _value.copyWith(
            region:
                null == region
                    ? _value.region
                    : region // ignore: cast_nullable_to_non_nullable
                        as String,
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            regionId:
                null == regionId
                    ? _value.regionId
                    : regionId // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RegionDTOImplCopyWith<$Res>
    implements $RegionDTOCopyWith<$Res> {
  factory _$$RegionDTOImplCopyWith(
    _$RegionDTOImpl value,
    $Res Function(_$RegionDTOImpl) then,
  ) = __$$RegionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String region,
    @JsonKey(name: 'region_code') String code,
    @JsonKey(name: 'region_id') int regionId,
  });
}

/// @nodoc
class __$$RegionDTOImplCopyWithImpl<$Res>
    extends _$RegionDTOCopyWithImpl<$Res, _$RegionDTOImpl>
    implements _$$RegionDTOImplCopyWith<$Res> {
  __$$RegionDTOImplCopyWithImpl(
    _$RegionDTOImpl _value,
    $Res Function(_$RegionDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = null,
    Object? code = null,
    Object? regionId = null,
  }) {
    return _then(
      _$RegionDTOImpl(
        region:
            null == region
                ? _value.region
                : region // ignore: cast_nullable_to_non_nullable
                    as String,
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        regionId:
            null == regionId
                ? _value.regionId
                : regionId // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionDTOImpl implements _RegionDTO {
  const _$RegionDTOImpl({
    required this.region,
    @JsonKey(name: 'region_code') this.code = '',
    @JsonKey(name: 'region_id') required this.regionId,
  });

  factory _$RegionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionDTOImplFromJson(json);

  @override
  final String region;
  @override
  @JsonKey(name: 'region_code')
  final String code;
  @override
  @JsonKey(name: 'region_id')
  final int regionId;

  @override
  String toString() {
    return 'RegionDTO(region: $region, code: $code, regionId: $regionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionDTOImpl &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.regionId, regionId) ||
                other.regionId == regionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, region, code, regionId);

  /// Create a copy of RegionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionDTOImplCopyWith<_$RegionDTOImpl> get copyWith =>
      __$$RegionDTOImplCopyWithImpl<_$RegionDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionDTOImplToJson(this);
  }
}

abstract class _RegionDTO implements RegionDTO {
  const factory _RegionDTO({
    required final String region,
    @JsonKey(name: 'region_code') final String code,
    @JsonKey(name: 'region_id') required final int regionId,
  }) = _$RegionDTOImpl;

  factory _RegionDTO.fromJson(Map<String, dynamic> json) =
      _$RegionDTOImpl.fromJson;

  @override
  String get region;
  @override
  @JsonKey(name: 'region_code')
  String get code;
  @override
  @JsonKey(name: 'region_id')
  int get regionId;

  /// Create a copy of RegionDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegionDTOImplCopyWith<_$RegionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
