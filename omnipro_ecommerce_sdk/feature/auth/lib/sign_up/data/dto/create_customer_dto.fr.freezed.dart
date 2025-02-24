// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_customer_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateCustomerDTO _$CreateCustomerDTOFromJson(Map<String, dynamic> json) {
  return _CreateCustomerDTO.fromJson(json);
}

/// @nodoc
mixin _$CreateCustomerDTO {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  @DateTimeConverterISO8601()
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_subscribed')
  bool get isSuscribed => throw _privateConstructorUsedError;
  @JsonKey(name: 'custom_attributes')
  List<CustomAttributeDTO> get customAttributes =>
      throw _privateConstructorUsedError;

  /// Serializes this CreateCustomerDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateCustomerDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateCustomerDTOCopyWith<CreateCustomerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCustomerDTOCopyWith<$Res> {
  factory $CreateCustomerDTOCopyWith(
          CreateCustomerDTO value, $Res Function(CreateCustomerDTO) then) =
      _$CreateCustomerDTOCopyWithImpl<$Res, CreateCustomerDTO>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String password,
      int gender,
      @JsonKey(name: 'date_of_birth')
      @DateTimeConverterISO8601()
      DateTime dateOfBirth,
      @JsonKey(name: 'is_subscribed') bool isSuscribed,
      @JsonKey(name: 'custom_attributes')
      List<CustomAttributeDTO> customAttributes});
}

/// @nodoc
class _$CreateCustomerDTOCopyWithImpl<$Res, $Val extends CreateCustomerDTO>
    implements $CreateCustomerDTOCopyWith<$Res> {
  _$CreateCustomerDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCustomerDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? isSuscribed = null,
    Object? customAttributes = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isSuscribed: null == isSuscribed
          ? _value.isSuscribed
          : isSuscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      customAttributes: null == customAttributes
          ? _value.customAttributes
          : customAttributes // ignore: cast_nullable_to_non_nullable
              as List<CustomAttributeDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCustomerDTOImplCopyWith<$Res>
    implements $CreateCustomerDTOCopyWith<$Res> {
  factory _$$CreateCustomerDTOImplCopyWith(_$CreateCustomerDTOImpl value,
          $Res Function(_$CreateCustomerDTOImpl) then) =
      __$$CreateCustomerDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String password,
      int gender,
      @JsonKey(name: 'date_of_birth')
      @DateTimeConverterISO8601()
      DateTime dateOfBirth,
      @JsonKey(name: 'is_subscribed') bool isSuscribed,
      @JsonKey(name: 'custom_attributes')
      List<CustomAttributeDTO> customAttributes});
}

/// @nodoc
class __$$CreateCustomerDTOImplCopyWithImpl<$Res>
    extends _$CreateCustomerDTOCopyWithImpl<$Res, _$CreateCustomerDTOImpl>
    implements _$$CreateCustomerDTOImplCopyWith<$Res> {
  __$$CreateCustomerDTOImplCopyWithImpl(_$CreateCustomerDTOImpl _value,
      $Res Function(_$CreateCustomerDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCustomerDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? isSuscribed = null,
    Object? customAttributes = null,
  }) {
    return _then(_$CreateCustomerDTOImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isSuscribed: null == isSuscribed
          ? _value.isSuscribed
          : isSuscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      customAttributes: null == customAttributes
          ? _value._customAttributes
          : customAttributes // ignore: cast_nullable_to_non_nullable
              as List<CustomAttributeDTO>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CreateCustomerDTOImpl implements _CreateCustomerDTO {
  const _$CreateCustomerDTOImpl(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.gender,
      @JsonKey(name: 'date_of_birth')
      @DateTimeConverterISO8601()
      required this.dateOfBirth,
      @JsonKey(name: 'is_subscribed') this.isSuscribed = true,
      @JsonKey(name: 'custom_attributes')
      required final List<CustomAttributeDTO> customAttributes})
      : _customAttributes = customAttributes;

  factory _$CreateCustomerDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCustomerDTOImplFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String password;
  @override
  final int gender;
  @override
  @JsonKey(name: 'date_of_birth')
  @DateTimeConverterISO8601()
  final DateTime dateOfBirth;
  @override
  @JsonKey(name: 'is_subscribed')
  final bool isSuscribed;
  final List<CustomAttributeDTO> _customAttributes;
  @override
  @JsonKey(name: 'custom_attributes')
  List<CustomAttributeDTO> get customAttributes {
    if (_customAttributes is EqualUnmodifiableListView)
      return _customAttributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customAttributes);
  }

  @override
  String toString() {
    return 'CreateCustomerDTO(firstName: $firstName, lastName: $lastName, email: $email, password: $password, gender: $gender, dateOfBirth: $dateOfBirth, isSuscribed: $isSuscribed, customAttributes: $customAttributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCustomerDTOImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.isSuscribed, isSuscribed) ||
                other.isSuscribed == isSuscribed) &&
            const DeepCollectionEquality()
                .equals(other._customAttributes, _customAttributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      email,
      password,
      gender,
      dateOfBirth,
      isSuscribed,
      const DeepCollectionEquality().hash(_customAttributes));

  /// Create a copy of CreateCustomerDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCustomerDTOImplCopyWith<_$CreateCustomerDTOImpl> get copyWith =>
      __$$CreateCustomerDTOImplCopyWithImpl<_$CreateCustomerDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCustomerDTOImplToJson(
      this,
    );
  }
}

abstract class _CreateCustomerDTO implements CreateCustomerDTO {
  const factory _CreateCustomerDTO(
          {required final String firstName,
          required final String lastName,
          required final String email,
          required final String password,
          required final int gender,
          @JsonKey(name: 'date_of_birth')
          @DateTimeConverterISO8601()
          required final DateTime dateOfBirth,
          @JsonKey(name: 'is_subscribed') final bool isSuscribed,
          @JsonKey(name: 'custom_attributes')
          required final List<CustomAttributeDTO> customAttributes}) =
      _$CreateCustomerDTOImpl;

  factory _CreateCustomerDTO.fromJson(Map<String, dynamic> json) =
      _$CreateCustomerDTOImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get password;
  @override
  int get gender;
  @override
  @JsonKey(name: 'date_of_birth')
  @DateTimeConverterISO8601()
  DateTime get dateOfBirth;
  @override
  @JsonKey(name: 'is_subscribed')
  bool get isSuscribed;
  @override
  @JsonKey(name: 'custom_attributes')
  List<CustomAttributeDTO> get customAttributes;

  /// Create a copy of CreateCustomerDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCustomerDTOImplCopyWith<_$CreateCustomerDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
