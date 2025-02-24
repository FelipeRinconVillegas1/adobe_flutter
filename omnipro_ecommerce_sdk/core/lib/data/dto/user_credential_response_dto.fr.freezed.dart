// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_credential_response_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserCredentialResponseDTO _$UserCredentialResponseDTOFromJson(
  Map<String, dynamic> json,
) {
  return _UserCredentialResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$UserCredentialResponseDTO {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get sub => throw _privateConstructorUsedError;
  String? get nonce => throw _privateConstructorUsedError;
  String? get authCode => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  ProviderAuthentication get provider => throw _privateConstructorUsedError;

  /// Serializes this UserCredentialResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserCredentialResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCredentialResponseDTOCopyWith<UserCredentialResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCredentialResponseDTOCopyWith<$Res> {
  factory $UserCredentialResponseDTOCopyWith(
    UserCredentialResponseDTO value,
    $Res Function(UserCredentialResponseDTO) then,
  ) = _$UserCredentialResponseDTOCopyWithImpl<$Res, UserCredentialResponseDTO>;
  @useResult
  $Res call({
    String? firstName,
    String? lastName,
    String? email,
    String? sub,
    String? nonce,
    String? authCode,
    String token,
    ProviderAuthentication provider,
  });
}

/// @nodoc
class _$UserCredentialResponseDTOCopyWithImpl<
  $Res,
  $Val extends UserCredentialResponseDTO
>
    implements $UserCredentialResponseDTOCopyWith<$Res> {
  _$UserCredentialResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCredentialResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? sub = freezed,
    Object? nonce = freezed,
    Object? authCode = freezed,
    Object? token = null,
    Object? provider = null,
  }) {
    return _then(
      _value.copyWith(
            firstName:
                freezed == firstName
                    ? _value.firstName
                    : firstName // ignore: cast_nullable_to_non_nullable
                        as String?,
            lastName:
                freezed == lastName
                    ? _value.lastName
                    : lastName // ignore: cast_nullable_to_non_nullable
                        as String?,
            email:
                freezed == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String?,
            sub:
                freezed == sub
                    ? _value.sub
                    : sub // ignore: cast_nullable_to_non_nullable
                        as String?,
            nonce:
                freezed == nonce
                    ? _value.nonce
                    : nonce // ignore: cast_nullable_to_non_nullable
                        as String?,
            authCode:
                freezed == authCode
                    ? _value.authCode
                    : authCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            token:
                null == token
                    ? _value.token
                    : token // ignore: cast_nullable_to_non_nullable
                        as String,
            provider:
                null == provider
                    ? _value.provider
                    : provider // ignore: cast_nullable_to_non_nullable
                        as ProviderAuthentication,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserCredentialResponseDTOImplCopyWith<$Res>
    implements $UserCredentialResponseDTOCopyWith<$Res> {
  factory _$$UserCredentialResponseDTOImplCopyWith(
    _$UserCredentialResponseDTOImpl value,
    $Res Function(_$UserCredentialResponseDTOImpl) then,
  ) = __$$UserCredentialResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? firstName,
    String? lastName,
    String? email,
    String? sub,
    String? nonce,
    String? authCode,
    String token,
    ProviderAuthentication provider,
  });
}

/// @nodoc
class __$$UserCredentialResponseDTOImplCopyWithImpl<$Res>
    extends
        _$UserCredentialResponseDTOCopyWithImpl<
          $Res,
          _$UserCredentialResponseDTOImpl
        >
    implements _$$UserCredentialResponseDTOImplCopyWith<$Res> {
  __$$UserCredentialResponseDTOImplCopyWithImpl(
    _$UserCredentialResponseDTOImpl _value,
    $Res Function(_$UserCredentialResponseDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserCredentialResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? sub = freezed,
    Object? nonce = freezed,
    Object? authCode = freezed,
    Object? token = null,
    Object? provider = null,
  }) {
    return _then(
      _$UserCredentialResponseDTOImpl(
        firstName:
            freezed == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                    as String?,
        lastName:
            freezed == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                    as String?,
        email:
            freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String?,
        sub:
            freezed == sub
                ? _value.sub
                : sub // ignore: cast_nullable_to_non_nullable
                    as String?,
        nonce:
            freezed == nonce
                ? _value.nonce
                : nonce // ignore: cast_nullable_to_non_nullable
                    as String?,
        authCode:
            freezed == authCode
                ? _value.authCode
                : authCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        token:
            null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                    as String,
        provider:
            null == provider
                ? _value.provider
                : provider // ignore: cast_nullable_to_non_nullable
                    as ProviderAuthentication,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCredentialResponseDTOImpl implements _UserCredentialResponseDTO {
  const _$UserCredentialResponseDTOImpl({
    this.firstName,
    this.lastName,
    this.email,
    this.sub,
    this.nonce,
    this.authCode,
    required this.token,
    required this.provider,
  });

  factory _$UserCredentialResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCredentialResponseDTOImplFromJson(json);

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? sub;
  @override
  final String? nonce;
  @override
  final String? authCode;
  @override
  final String token;
  @override
  final ProviderAuthentication provider;

  @override
  String toString() {
    return 'UserCredentialResponseDTO(firstName: $firstName, lastName: $lastName, email: $email, sub: $sub, nonce: $nonce, authCode: $authCode, token: $token, provider: $provider)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCredentialResponseDTOImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.sub, sub) || other.sub == sub) &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.authCode, authCode) ||
                other.authCode == authCode) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.provider, provider) ||
                other.provider == provider));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    firstName,
    lastName,
    email,
    sub,
    nonce,
    authCode,
    token,
    provider,
  );

  /// Create a copy of UserCredentialResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCredentialResponseDTOImplCopyWith<_$UserCredentialResponseDTOImpl>
  get copyWith => __$$UserCredentialResponseDTOImplCopyWithImpl<
    _$UserCredentialResponseDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCredentialResponseDTOImplToJson(this);
  }
}

abstract class _UserCredentialResponseDTO implements UserCredentialResponseDTO {
  const factory _UserCredentialResponseDTO({
    final String? firstName,
    final String? lastName,
    final String? email,
    final String? sub,
    final String? nonce,
    final String? authCode,
    required final String token,
    required final ProviderAuthentication provider,
  }) = _$UserCredentialResponseDTOImpl;

  factory _UserCredentialResponseDTO.fromJson(Map<String, dynamic> json) =
      _$UserCredentialResponseDTOImpl.fromJson;

  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get email;
  @override
  String? get sub;
  @override
  String? get nonce;
  @override
  String? get authCode;
  @override
  String get token;
  @override
  ProviderAuthentication get provider;

  /// Create a copy of UserCredentialResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCredentialResponseDTOImplCopyWith<_$UserCredentialResponseDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
