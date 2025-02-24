// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerDTO _$CustomerDTOFromJson(Map<String, dynamic> json) {
  return _CustomerDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerDTO {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstname')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastname')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'dob')
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  List<WishListDTO> get wishlists => throw _privateConstructorUsedError;
  @JsonKey(name: 'custom_attributes')
  List<CustomAttributeDTO> get customAttributes =>
      throw _privateConstructorUsedError;
  List<CustomerAddressDTO> get addresses => throw _privateConstructorUsedError;

  /// Serializes this CustomerDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerDTOCopyWith<CustomerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDTOCopyWith<$Res> {
  factory $CustomerDTOCopyWith(
    CustomerDTO value,
    $Res Function(CustomerDTO) then,
  ) = _$CustomerDTOCopyWithImpl<$Res, CustomerDTO>;
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'firstname') String firstName,
    @JsonKey(name: 'lastname') String lastName,
    @JsonKey(name: 'email') String email,
    @JsonKey(name: 'dob') DateTime dateOfBirth,
    int? gender,
    List<WishListDTO> wishlists,
    @JsonKey(name: 'custom_attributes')
    List<CustomAttributeDTO> customAttributes,
    List<CustomerAddressDTO> addresses,
  });
}

/// @nodoc
class _$CustomerDTOCopyWithImpl<$Res, $Val extends CustomerDTO>
    implements $CustomerDTOCopyWith<$Res> {
  _$CustomerDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? dateOfBirth = null,
    Object? gender = freezed,
    Object? wishlists = null,
    Object? customAttributes = null,
    Object? addresses = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            firstName:
                null == firstName
                    ? _value.firstName
                    : firstName // ignore: cast_nullable_to_non_nullable
                        as String,
            lastName:
                null == lastName
                    ? _value.lastName
                    : lastName // ignore: cast_nullable_to_non_nullable
                        as String,
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            dateOfBirth:
                null == dateOfBirth
                    ? _value.dateOfBirth
                    : dateOfBirth // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            gender:
                freezed == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as int?,
            wishlists:
                null == wishlists
                    ? _value.wishlists
                    : wishlists // ignore: cast_nullable_to_non_nullable
                        as List<WishListDTO>,
            customAttributes:
                null == customAttributes
                    ? _value.customAttributes
                    : customAttributes // ignore: cast_nullable_to_non_nullable
                        as List<CustomAttributeDTO>,
            addresses:
                null == addresses
                    ? _value.addresses
                    : addresses // ignore: cast_nullable_to_non_nullable
                        as List<CustomerAddressDTO>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CustomerDTOImplCopyWith<$Res>
    implements $CustomerDTOCopyWith<$Res> {
  factory _$$CustomerDTOImplCopyWith(
    _$CustomerDTOImpl value,
    $Res Function(_$CustomerDTOImpl) then,
  ) = __$$CustomerDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'firstname') String firstName,
    @JsonKey(name: 'lastname') String lastName,
    @JsonKey(name: 'email') String email,
    @JsonKey(name: 'dob') DateTime dateOfBirth,
    int? gender,
    List<WishListDTO> wishlists,
    @JsonKey(name: 'custom_attributes')
    List<CustomAttributeDTO> customAttributes,
    List<CustomerAddressDTO> addresses,
  });
}

/// @nodoc
class __$$CustomerDTOImplCopyWithImpl<$Res>
    extends _$CustomerDTOCopyWithImpl<$Res, _$CustomerDTOImpl>
    implements _$$CustomerDTOImplCopyWith<$Res> {
  __$$CustomerDTOImplCopyWithImpl(
    _$CustomerDTOImpl _value,
    $Res Function(_$CustomerDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? dateOfBirth = null,
    Object? gender = freezed,
    Object? wishlists = null,
    Object? customAttributes = null,
    Object? addresses = null,
  }) {
    return _then(
      _$CustomerDTOImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        firstName:
            null == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                    as String,
        lastName:
            null == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                    as String,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        dateOfBirth:
            null == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        gender:
            freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as int?,
        wishlists:
            null == wishlists
                ? _value._wishlists
                : wishlists // ignore: cast_nullable_to_non_nullable
                    as List<WishListDTO>,
        customAttributes:
            null == customAttributes
                ? _value._customAttributes
                : customAttributes // ignore: cast_nullable_to_non_nullable
                    as List<CustomAttributeDTO>,
        addresses:
            null == addresses
                ? _value._addresses
                : addresses // ignore: cast_nullable_to_non_nullable
                    as List<CustomerAddressDTO>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CustomerDTOImpl implements _CustomerDTO {
  const _$CustomerDTOImpl({
    this.id,
    @JsonKey(name: 'firstname') required this.firstName,
    @JsonKey(name: 'lastname') required this.lastName,
    @JsonKey(name: 'email') required this.email,
    @JsonKey(name: 'dob') required this.dateOfBirth,
    this.gender,
    final List<WishListDTO> wishlists = const [],
    @JsonKey(name: 'custom_attributes')
    required final List<CustomAttributeDTO> customAttributes,
    final List<CustomerAddressDTO> addresses = const [],
  }) : _wishlists = wishlists,
       _customAttributes = customAttributes,
       _addresses = addresses;

  factory _$CustomerDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerDTOImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'firstname')
  final String firstName;
  @override
  @JsonKey(name: 'lastname')
  final String lastName;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'dob')
  final DateTime dateOfBirth;
  @override
  final int? gender;
  final List<WishListDTO> _wishlists;
  @override
  @JsonKey()
  List<WishListDTO> get wishlists {
    if (_wishlists is EqualUnmodifiableListView) return _wishlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishlists);
  }

  final List<CustomAttributeDTO> _customAttributes;
  @override
  @JsonKey(name: 'custom_attributes')
  List<CustomAttributeDTO> get customAttributes {
    if (_customAttributes is EqualUnmodifiableListView)
      return _customAttributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customAttributes);
  }

  final List<CustomerAddressDTO> _addresses;
  @override
  @JsonKey()
  List<CustomerAddressDTO> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  String toString() {
    return 'CustomerDTO(id: $id, firstName: $firstName, lastName: $lastName, email: $email, dateOfBirth: $dateOfBirth, gender: $gender, wishlists: $wishlists, customAttributes: $customAttributes, addresses: $addresses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            const DeepCollectionEquality().equals(
              other._wishlists,
              _wishlists,
            ) &&
            const DeepCollectionEquality().equals(
              other._customAttributes,
              _customAttributes,
            ) &&
            const DeepCollectionEquality().equals(
              other._addresses,
              _addresses,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    firstName,
    lastName,
    email,
    dateOfBirth,
    gender,
    const DeepCollectionEquality().hash(_wishlists),
    const DeepCollectionEquality().hash(_customAttributes),
    const DeepCollectionEquality().hash(_addresses),
  );

  /// Create a copy of CustomerDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerDTOImplCopyWith<_$CustomerDTOImpl> get copyWith =>
      __$$CustomerDTOImplCopyWithImpl<_$CustomerDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerDTOImplToJson(this);
  }
}

abstract class _CustomerDTO implements CustomerDTO {
  const factory _CustomerDTO({
    final int? id,
    @JsonKey(name: 'firstname') required final String firstName,
    @JsonKey(name: 'lastname') required final String lastName,
    @JsonKey(name: 'email') required final String email,
    @JsonKey(name: 'dob') required final DateTime dateOfBirth,
    final int? gender,
    final List<WishListDTO> wishlists,
    @JsonKey(name: 'custom_attributes')
    required final List<CustomAttributeDTO> customAttributes,
    final List<CustomerAddressDTO> addresses,
  }) = _$CustomerDTOImpl;

  factory _CustomerDTO.fromJson(Map<String, dynamic> json) =
      _$CustomerDTOImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'firstname')
  String get firstName;
  @override
  @JsonKey(name: 'lastname')
  String get lastName;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'dob')
  DateTime get dateOfBirth;
  @override
  int? get gender;
  @override
  List<WishListDTO> get wishlists;
  @override
  @JsonKey(name: 'custom_attributes')
  List<CustomAttributeDTO> get customAttributes;
  @override
  List<CustomerAddressDTO> get addresses;

  /// Create a copy of CustomerDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerDTOImplCopyWith<_$CustomerDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
