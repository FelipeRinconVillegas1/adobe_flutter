// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Customer {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstname')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastname')
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'dob')
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  List<WishList> get wishlists => throw _privateConstructorUsedError;
  Map<CustomAttributeCode, CustomAttribute> get customAttributesRequired =>
      throw _privateConstructorUsedError;
  Map<CustomAttributeCode, CustomAttribute> get customAttributesOptionals =>
      throw _privateConstructorUsedError;
  List<CustomerAddressEntity> get addresses =>
      throw _privateConstructorUsedError;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res, Customer>;
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'firstname') String firstName,
    @JsonKey(name: 'lastname') String lastName,
    String email,
    @JsonKey(name: 'dob') DateTime dateOfBirth,
    int? gender,
    List<WishList> wishlists,
    Map<CustomAttributeCode, CustomAttribute> customAttributesRequired,
    Map<CustomAttributeCode, CustomAttribute> customAttributesOptionals,
    List<CustomerAddressEntity> addresses,
  });
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res, $Val extends Customer>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Customer
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
    Object? customAttributesRequired = null,
    Object? customAttributesOptionals = null,
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
                        as List<WishList>,
            customAttributesRequired:
                null == customAttributesRequired
                    ? _value.customAttributesRequired
                    : customAttributesRequired // ignore: cast_nullable_to_non_nullable
                        as Map<CustomAttributeCode, CustomAttribute>,
            customAttributesOptionals:
                null == customAttributesOptionals
                    ? _value.customAttributesOptionals
                    : customAttributesOptionals // ignore: cast_nullable_to_non_nullable
                        as Map<CustomAttributeCode, CustomAttribute>,
            addresses:
                null == addresses
                    ? _value.addresses
                    : addresses // ignore: cast_nullable_to_non_nullable
                        as List<CustomerAddressEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CustomerImplCopyWith<$Res>
    implements $CustomerCopyWith<$Res> {
  factory _$$CustomerImplCopyWith(
    _$CustomerImpl value,
    $Res Function(_$CustomerImpl) then,
  ) = __$$CustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'firstname') String firstName,
    @JsonKey(name: 'lastname') String lastName,
    String email,
    @JsonKey(name: 'dob') DateTime dateOfBirth,
    int? gender,
    List<WishList> wishlists,
    Map<CustomAttributeCode, CustomAttribute> customAttributesRequired,
    Map<CustomAttributeCode, CustomAttribute> customAttributesOptionals,
    List<CustomerAddressEntity> addresses,
  });
}

/// @nodoc
class __$$CustomerImplCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$CustomerImpl>
    implements _$$CustomerImplCopyWith<$Res> {
  __$$CustomerImplCopyWithImpl(
    _$CustomerImpl _value,
    $Res Function(_$CustomerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Customer
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
    Object? customAttributesRequired = null,
    Object? customAttributesOptionals = null,
    Object? addresses = null,
  }) {
    return _then(
      _$CustomerImpl(
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
                    as List<WishList>,
        customAttributesRequired:
            null == customAttributesRequired
                ? _value._customAttributesRequired
                : customAttributesRequired // ignore: cast_nullable_to_non_nullable
                    as Map<CustomAttributeCode, CustomAttribute>,
        customAttributesOptionals:
            null == customAttributesOptionals
                ? _value._customAttributesOptionals
                : customAttributesOptionals // ignore: cast_nullable_to_non_nullable
                    as Map<CustomAttributeCode, CustomAttribute>,
        addresses:
            null == addresses
                ? _value._addresses
                : addresses // ignore: cast_nullable_to_non_nullable
                    as List<CustomerAddressEntity>,
      ),
    );
  }
}

/// @nodoc

class _$CustomerImpl implements _Customer {
  const _$CustomerImpl({
    this.id,
    @JsonKey(name: 'firstname') required this.firstName,
    @JsonKey(name: 'lastname') required this.lastName,
    required this.email,
    @JsonKey(name: 'dob') required this.dateOfBirth,
    this.gender,
    final List<WishList> wishlists = const [],
    required final Map<CustomAttributeCode, CustomAttribute>
    customAttributesRequired,
    final Map<CustomAttributeCode, CustomAttribute> customAttributesOptionals =
        const {},
    final List<CustomerAddressEntity> addresses = const [],
  }) : _wishlists = wishlists,
       _customAttributesRequired = customAttributesRequired,
       _customAttributesOptionals = customAttributesOptionals,
       _addresses = addresses;

  @override
  final int? id;
  @override
  @JsonKey(name: 'firstname')
  final String firstName;
  @override
  @JsonKey(name: 'lastname')
  final String lastName;
  @override
  final String email;
  @override
  @JsonKey(name: 'dob')
  final DateTime dateOfBirth;
  @override
  final int? gender;
  final List<WishList> _wishlists;
  @override
  @JsonKey()
  List<WishList> get wishlists {
    if (_wishlists is EqualUnmodifiableListView) return _wishlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishlists);
  }

  final Map<CustomAttributeCode, CustomAttribute> _customAttributesRequired;
  @override
  Map<CustomAttributeCode, CustomAttribute> get customAttributesRequired {
    if (_customAttributesRequired is EqualUnmodifiableMapView)
      return _customAttributesRequired;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_customAttributesRequired);
  }

  final Map<CustomAttributeCode, CustomAttribute> _customAttributesOptionals;
  @override
  @JsonKey()
  Map<CustomAttributeCode, CustomAttribute> get customAttributesOptionals {
    if (_customAttributesOptionals is EqualUnmodifiableMapView)
      return _customAttributesOptionals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_customAttributesOptionals);
  }

  final List<CustomerAddressEntity> _addresses;
  @override
  @JsonKey()
  List<CustomerAddressEntity> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  String toString() {
    return 'Customer(id: $id, firstName: $firstName, lastName: $lastName, email: $email, dateOfBirth: $dateOfBirth, gender: $gender, wishlists: $wishlists, customAttributesRequired: $customAttributesRequired, customAttributesOptionals: $customAttributesOptionals, addresses: $addresses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerImpl &&
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
              other._customAttributesRequired,
              _customAttributesRequired,
            ) &&
            const DeepCollectionEquality().equals(
              other._customAttributesOptionals,
              _customAttributesOptionals,
            ) &&
            const DeepCollectionEquality().equals(
              other._addresses,
              _addresses,
            ));
  }

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
    const DeepCollectionEquality().hash(_customAttributesRequired),
    const DeepCollectionEquality().hash(_customAttributesOptionals),
    const DeepCollectionEquality().hash(_addresses),
  );

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      __$$CustomerImplCopyWithImpl<_$CustomerImpl>(this, _$identity);
}

abstract class _Customer implements Customer {
  const factory _Customer({
    final int? id,
    @JsonKey(name: 'firstname') required final String firstName,
    @JsonKey(name: 'lastname') required final String lastName,
    required final String email,
    @JsonKey(name: 'dob') required final DateTime dateOfBirth,
    final int? gender,
    final List<WishList> wishlists,
    required final Map<CustomAttributeCode, CustomAttribute>
    customAttributesRequired,
    final Map<CustomAttributeCode, CustomAttribute> customAttributesOptionals,
    final List<CustomerAddressEntity> addresses,
  }) = _$CustomerImpl;

  @override
  int? get id;
  @override
  @JsonKey(name: 'firstname')
  String get firstName;
  @override
  @JsonKey(name: 'lastname')
  String get lastName;
  @override
  String get email;
  @override
  @JsonKey(name: 'dob')
  DateTime get dateOfBirth;
  @override
  int? get gender;
  @override
  List<WishList> get wishlists;
  @override
  Map<CustomAttributeCode, CustomAttribute> get customAttributesRequired;
  @override
  Map<CustomAttributeCode, CustomAttribute> get customAttributesOptionals;
  @override
  List<CustomerAddressEntity> get addresses;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
