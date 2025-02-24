// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_address_on_cart_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ShippingAddressOnCartDTO _$ShippingAddressOnCartDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ShippingAddressOnCartDTO.fromJson(json);
}

/// @nodoc
mixin _$ShippingAddressOnCartDTO {
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  List<String> get street => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get telephone => throw _privateConstructorUsedError;
  String? get postcode => throw _privateConstructorUsedError;
  LocalizationItemDTO get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_custom')
  String? get cityCustom => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_custom')
  String? get stateCustom => throw _privateConstructorUsedError;
  @JsonKey(name: 'zone_custom')
  String? get zoneCustom => throw _privateConstructorUsedError;
  @JsonKey(name: 'selected_shipping_method')
  SelectedShippingMethodDTO? get selectedShippingMethod =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'available_shipping_methods')
  List<SelectedShippingMethodDTO> get availableShippingMethods =>
      throw _privateConstructorUsedError;

  /// Serializes this ShippingAddressOnCartDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShippingAddressOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingAddressOnCartDTOCopyWith<ShippingAddressOnCartDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingAddressOnCartDTOCopyWith<$Res> {
  factory $ShippingAddressOnCartDTOCopyWith(
    ShippingAddressOnCartDTO value,
    $Res Function(ShippingAddressOnCartDTO) then,
  ) = _$ShippingAddressOnCartDTOCopyWithImpl<$Res, ShippingAddressOnCartDTO>;
  @useResult
  $Res call({
    String firstname,
    String lastname,
    List<String> street,
    String city,
    String telephone,
    String? postcode,
    LocalizationItemDTO country,
    @JsonKey(name: 'city_custom') String? cityCustom,
    @JsonKey(name: 'state_custom') String? stateCustom,
    @JsonKey(name: 'zone_custom') String? zoneCustom,
    @JsonKey(name: 'selected_shipping_method')
    SelectedShippingMethodDTO? selectedShippingMethod,
    @JsonKey(name: 'available_shipping_methods')
    List<SelectedShippingMethodDTO> availableShippingMethods,
  });

  $LocalizationItemDTOCopyWith<$Res> get country;
  $SelectedShippingMethodDTOCopyWith<$Res>? get selectedShippingMethod;
}

/// @nodoc
class _$ShippingAddressOnCartDTOCopyWithImpl<
  $Res,
  $Val extends ShippingAddressOnCartDTO
>
    implements $ShippingAddressOnCartDTOCopyWith<$Res> {
  _$ShippingAddressOnCartDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingAddressOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? street = null,
    Object? city = null,
    Object? telephone = null,
    Object? postcode = freezed,
    Object? country = null,
    Object? cityCustom = freezed,
    Object? stateCustom = freezed,
    Object? zoneCustom = freezed,
    Object? selectedShippingMethod = freezed,
    Object? availableShippingMethods = null,
  }) {
    return _then(
      _value.copyWith(
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
            street:
                null == street
                    ? _value.street
                    : street // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            city:
                null == city
                    ? _value.city
                    : city // ignore: cast_nullable_to_non_nullable
                        as String,
            telephone:
                null == telephone
                    ? _value.telephone
                    : telephone // ignore: cast_nullable_to_non_nullable
                        as String,
            postcode:
                freezed == postcode
                    ? _value.postcode
                    : postcode // ignore: cast_nullable_to_non_nullable
                        as String?,
            country:
                null == country
                    ? _value.country
                    : country // ignore: cast_nullable_to_non_nullable
                        as LocalizationItemDTO,
            cityCustom:
                freezed == cityCustom
                    ? _value.cityCustom
                    : cityCustom // ignore: cast_nullable_to_non_nullable
                        as String?,
            stateCustom:
                freezed == stateCustom
                    ? _value.stateCustom
                    : stateCustom // ignore: cast_nullable_to_non_nullable
                        as String?,
            zoneCustom:
                freezed == zoneCustom
                    ? _value.zoneCustom
                    : zoneCustom // ignore: cast_nullable_to_non_nullable
                        as String?,
            selectedShippingMethod:
                freezed == selectedShippingMethod
                    ? _value.selectedShippingMethod
                    : selectedShippingMethod // ignore: cast_nullable_to_non_nullable
                        as SelectedShippingMethodDTO?,
            availableShippingMethods:
                null == availableShippingMethods
                    ? _value.availableShippingMethods
                    : availableShippingMethods // ignore: cast_nullable_to_non_nullable
                        as List<SelectedShippingMethodDTO>,
          )
          as $Val,
    );
  }

  /// Create a copy of ShippingAddressOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizationItemDTOCopyWith<$Res> get country {
    return $LocalizationItemDTOCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }

  /// Create a copy of ShippingAddressOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SelectedShippingMethodDTOCopyWith<$Res>? get selectedShippingMethod {
    if (_value.selectedShippingMethod == null) {
      return null;
    }

    return $SelectedShippingMethodDTOCopyWith<$Res>(
      _value.selectedShippingMethod!,
      (value) {
        return _then(_value.copyWith(selectedShippingMethod: value) as $Val);
      },
    );
  }
}

/// @nodoc
abstract class _$$ShippingAddressOnCartDTOImplCopyWith<$Res>
    implements $ShippingAddressOnCartDTOCopyWith<$Res> {
  factory _$$ShippingAddressOnCartDTOImplCopyWith(
    _$ShippingAddressOnCartDTOImpl value,
    $Res Function(_$ShippingAddressOnCartDTOImpl) then,
  ) = __$$ShippingAddressOnCartDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String firstname,
    String lastname,
    List<String> street,
    String city,
    String telephone,
    String? postcode,
    LocalizationItemDTO country,
    @JsonKey(name: 'city_custom') String? cityCustom,
    @JsonKey(name: 'state_custom') String? stateCustom,
    @JsonKey(name: 'zone_custom') String? zoneCustom,
    @JsonKey(name: 'selected_shipping_method')
    SelectedShippingMethodDTO? selectedShippingMethod,
    @JsonKey(name: 'available_shipping_methods')
    List<SelectedShippingMethodDTO> availableShippingMethods,
  });

  @override
  $LocalizationItemDTOCopyWith<$Res> get country;
  @override
  $SelectedShippingMethodDTOCopyWith<$Res>? get selectedShippingMethod;
}

/// @nodoc
class __$$ShippingAddressOnCartDTOImplCopyWithImpl<$Res>
    extends
        _$ShippingAddressOnCartDTOCopyWithImpl<
          $Res,
          _$ShippingAddressOnCartDTOImpl
        >
    implements _$$ShippingAddressOnCartDTOImplCopyWith<$Res> {
  __$$ShippingAddressOnCartDTOImplCopyWithImpl(
    _$ShippingAddressOnCartDTOImpl _value,
    $Res Function(_$ShippingAddressOnCartDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShippingAddressOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? street = null,
    Object? city = null,
    Object? telephone = null,
    Object? postcode = freezed,
    Object? country = null,
    Object? cityCustom = freezed,
    Object? stateCustom = freezed,
    Object? zoneCustom = freezed,
    Object? selectedShippingMethod = freezed,
    Object? availableShippingMethods = null,
  }) {
    return _then(
      _$ShippingAddressOnCartDTOImpl(
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
        street:
            null == street
                ? _value._street
                : street // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        city:
            null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                    as String,
        telephone:
            null == telephone
                ? _value.telephone
                : telephone // ignore: cast_nullable_to_non_nullable
                    as String,
        postcode:
            freezed == postcode
                ? _value.postcode
                : postcode // ignore: cast_nullable_to_non_nullable
                    as String?,
        country:
            null == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                    as LocalizationItemDTO,
        cityCustom:
            freezed == cityCustom
                ? _value.cityCustom
                : cityCustom // ignore: cast_nullable_to_non_nullable
                    as String?,
        stateCustom:
            freezed == stateCustom
                ? _value.stateCustom
                : stateCustom // ignore: cast_nullable_to_non_nullable
                    as String?,
        zoneCustom:
            freezed == zoneCustom
                ? _value.zoneCustom
                : zoneCustom // ignore: cast_nullable_to_non_nullable
                    as String?,
        selectedShippingMethod:
            freezed == selectedShippingMethod
                ? _value.selectedShippingMethod
                : selectedShippingMethod // ignore: cast_nullable_to_non_nullable
                    as SelectedShippingMethodDTO?,
        availableShippingMethods:
            null == availableShippingMethods
                ? _value._availableShippingMethods
                : availableShippingMethods // ignore: cast_nullable_to_non_nullable
                    as List<SelectedShippingMethodDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingAddressOnCartDTOImpl implements _ShippingAddressOnCartDTO {
  const _$ShippingAddressOnCartDTOImpl({
    required this.firstname,
    required this.lastname,
    required final List<String> street,
    required this.city,
    required this.telephone,
    this.postcode,
    required this.country,
    @JsonKey(name: 'city_custom') this.cityCustom,
    @JsonKey(name: 'state_custom') this.stateCustom,
    @JsonKey(name: 'zone_custom') this.zoneCustom,
    @JsonKey(name: 'selected_shipping_method') this.selectedShippingMethod,
    @JsonKey(name: 'available_shipping_methods')
    final List<SelectedShippingMethodDTO> availableShippingMethods = const [],
  }) : _street = street,
       _availableShippingMethods = availableShippingMethods;

  factory _$ShippingAddressOnCartDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingAddressOnCartDTOImplFromJson(json);

  @override
  final String firstname;
  @override
  final String lastname;
  final List<String> _street;
  @override
  List<String> get street {
    if (_street is EqualUnmodifiableListView) return _street;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_street);
  }

  @override
  final String city;
  @override
  final String telephone;
  @override
  final String? postcode;
  @override
  final LocalizationItemDTO country;
  @override
  @JsonKey(name: 'city_custom')
  final String? cityCustom;
  @override
  @JsonKey(name: 'state_custom')
  final String? stateCustom;
  @override
  @JsonKey(name: 'zone_custom')
  final String? zoneCustom;
  @override
  @JsonKey(name: 'selected_shipping_method')
  final SelectedShippingMethodDTO? selectedShippingMethod;
  final List<SelectedShippingMethodDTO> _availableShippingMethods;
  @override
  @JsonKey(name: 'available_shipping_methods')
  List<SelectedShippingMethodDTO> get availableShippingMethods {
    if (_availableShippingMethods is EqualUnmodifiableListView)
      return _availableShippingMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableShippingMethods);
  }

  @override
  String toString() {
    return 'ShippingAddressOnCartDTO(firstname: $firstname, lastname: $lastname, street: $street, city: $city, telephone: $telephone, postcode: $postcode, country: $country, cityCustom: $cityCustom, stateCustom: $stateCustom, zoneCustom: $zoneCustom, selectedShippingMethod: $selectedShippingMethod, availableShippingMethods: $availableShippingMethods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingAddressOnCartDTOImpl &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            const DeepCollectionEquality().equals(other._street, _street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.telephone, telephone) ||
                other.telephone == telephone) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.cityCustom, cityCustom) ||
                other.cityCustom == cityCustom) &&
            (identical(other.stateCustom, stateCustom) ||
                other.stateCustom == stateCustom) &&
            (identical(other.zoneCustom, zoneCustom) ||
                other.zoneCustom == zoneCustom) &&
            (identical(other.selectedShippingMethod, selectedShippingMethod) ||
                other.selectedShippingMethod == selectedShippingMethod) &&
            const DeepCollectionEquality().equals(
              other._availableShippingMethods,
              _availableShippingMethods,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    firstname,
    lastname,
    const DeepCollectionEquality().hash(_street),
    city,
    telephone,
    postcode,
    country,
    cityCustom,
    stateCustom,
    zoneCustom,
    selectedShippingMethod,
    const DeepCollectionEquality().hash(_availableShippingMethods),
  );

  /// Create a copy of ShippingAddressOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingAddressOnCartDTOImplCopyWith<_$ShippingAddressOnCartDTOImpl>
  get copyWith => __$$ShippingAddressOnCartDTOImplCopyWithImpl<
    _$ShippingAddressOnCartDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingAddressOnCartDTOImplToJson(this);
  }
}

abstract class _ShippingAddressOnCartDTO implements ShippingAddressOnCartDTO {
  const factory _ShippingAddressOnCartDTO({
    required final String firstname,
    required final String lastname,
    required final List<String> street,
    required final String city,
    required final String telephone,
    final String? postcode,
    required final LocalizationItemDTO country,
    @JsonKey(name: 'city_custom') final String? cityCustom,
    @JsonKey(name: 'state_custom') final String? stateCustom,
    @JsonKey(name: 'zone_custom') final String? zoneCustom,
    @JsonKey(name: 'selected_shipping_method')
    final SelectedShippingMethodDTO? selectedShippingMethod,
    @JsonKey(name: 'available_shipping_methods')
    final List<SelectedShippingMethodDTO> availableShippingMethods,
  }) = _$ShippingAddressOnCartDTOImpl;

  factory _ShippingAddressOnCartDTO.fromJson(Map<String, dynamic> json) =
      _$ShippingAddressOnCartDTOImpl.fromJson;

  @override
  String get firstname;
  @override
  String get lastname;
  @override
  List<String> get street;
  @override
  String get city;
  @override
  String get telephone;
  @override
  String? get postcode;
  @override
  LocalizationItemDTO get country;
  @override
  @JsonKey(name: 'city_custom')
  String? get cityCustom;
  @override
  @JsonKey(name: 'state_custom')
  String? get stateCustom;
  @override
  @JsonKey(name: 'zone_custom')
  String? get zoneCustom;
  @override
  @JsonKey(name: 'selected_shipping_method')
  SelectedShippingMethodDTO? get selectedShippingMethod;
  @override
  @JsonKey(name: 'available_shipping_methods')
  List<SelectedShippingMethodDTO> get availableShippingMethods;

  /// Create a copy of ShippingAddressOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingAddressOnCartDTOImplCopyWith<_$ShippingAddressOnCartDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
