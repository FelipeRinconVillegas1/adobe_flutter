// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_data_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SessionDataDTO _$SessionDataDTOFromJson(Map<String, dynamic> json) {
  return _SessionDataDTO.fromJson(json);
}

/// @nodoc
mixin _$SessionDataDTO {
  String get token => throw _privateConstructorUsedError;
  @JsonValue("refresh_token")
  String? get refreshToken => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  UserCredentialResponseDTO? get userCredentialResponseDTO =>
      throw _privateConstructorUsedError;

  /// Serializes this SessionDataDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionDataDTOCopyWith<SessionDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDataDTOCopyWith<$Res> {
  factory $SessionDataDTOCopyWith(
    SessionDataDTO value,
    $Res Function(SessionDataDTO) then,
  ) = _$SessionDataDTOCopyWithImpl<$Res, SessionDataDTO>;
  @useResult
  $Res call({
    String token,
    @JsonValue("refresh_token") String? refreshToken,
    String? email,
    String? password,
    UserCredentialResponseDTO? userCredentialResponseDTO,
  });

  $UserCredentialResponseDTOCopyWith<$Res>? get userCredentialResponseDTO;
}

/// @nodoc
class _$SessionDataDTOCopyWithImpl<$Res, $Val extends SessionDataDTO>
    implements $SessionDataDTOCopyWith<$Res> {
  _$SessionDataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? refreshToken = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? userCredentialResponseDTO = freezed,
  }) {
    return _then(
      _value.copyWith(
            token:
                null == token
                    ? _value.token
                    : token // ignore: cast_nullable_to_non_nullable
                        as String,
            refreshToken:
                freezed == refreshToken
                    ? _value.refreshToken
                    : refreshToken // ignore: cast_nullable_to_non_nullable
                        as String?,
            email:
                freezed == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String?,
            password:
                freezed == password
                    ? _value.password
                    : password // ignore: cast_nullable_to_non_nullable
                        as String?,
            userCredentialResponseDTO:
                freezed == userCredentialResponseDTO
                    ? _value.userCredentialResponseDTO
                    : userCredentialResponseDTO // ignore: cast_nullable_to_non_nullable
                        as UserCredentialResponseDTO?,
          )
          as $Val,
    );
  }

  /// Create a copy of SessionDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCredentialResponseDTOCopyWith<$Res>? get userCredentialResponseDTO {
    if (_value.userCredentialResponseDTO == null) {
      return null;
    }

    return $UserCredentialResponseDTOCopyWith<$Res>(
      _value.userCredentialResponseDTO!,
      (value) {
        return _then(_value.copyWith(userCredentialResponseDTO: value) as $Val);
      },
    );
  }
}

/// @nodoc
abstract class _$$SessionDataDTOImplCopyWith<$Res>
    implements $SessionDataDTOCopyWith<$Res> {
  factory _$$SessionDataDTOImplCopyWith(
    _$SessionDataDTOImpl value,
    $Res Function(_$SessionDataDTOImpl) then,
  ) = __$$SessionDataDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String token,
    @JsonValue("refresh_token") String? refreshToken,
    String? email,
    String? password,
    UserCredentialResponseDTO? userCredentialResponseDTO,
  });

  @override
  $UserCredentialResponseDTOCopyWith<$Res>? get userCredentialResponseDTO;
}

/// @nodoc
class __$$SessionDataDTOImplCopyWithImpl<$Res>
    extends _$SessionDataDTOCopyWithImpl<$Res, _$SessionDataDTOImpl>
    implements _$$SessionDataDTOImplCopyWith<$Res> {
  __$$SessionDataDTOImplCopyWithImpl(
    _$SessionDataDTOImpl _value,
    $Res Function(_$SessionDataDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? refreshToken = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? userCredentialResponseDTO = freezed,
  }) {
    return _then(
      _$SessionDataDTOImpl(
        token:
            null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                    as String,
        refreshToken:
            freezed == refreshToken
                ? _value.refreshToken
                : refreshToken // ignore: cast_nullable_to_non_nullable
                    as String?,
        email:
            freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String?,
        password:
            freezed == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String?,
        userCredentialResponseDTO:
            freezed == userCredentialResponseDTO
                ? _value.userCredentialResponseDTO
                : userCredentialResponseDTO // ignore: cast_nullable_to_non_nullable
                    as UserCredentialResponseDTO?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionDataDTOImpl implements _SessionDataDTO {
  const _$SessionDataDTOImpl({
    required this.token,
    @JsonValue("refresh_token") this.refreshToken,
    this.email,
    this.password,
    this.userCredentialResponseDTO,
  });

  factory _$SessionDataDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionDataDTOImplFromJson(json);

  @override
  final String token;
  @override
  @JsonValue("refresh_token")
  final String? refreshToken;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final UserCredentialResponseDTO? userCredentialResponseDTO;

  @override
  String toString() {
    return 'SessionDataDTO(token: $token, refreshToken: $refreshToken, email: $email, password: $password, userCredentialResponseDTO: $userCredentialResponseDTO)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionDataDTOImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(
                  other.userCredentialResponseDTO,
                  userCredentialResponseDTO,
                ) ||
                other.userCredentialResponseDTO == userCredentialResponseDTO));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    token,
    refreshToken,
    email,
    password,
    userCredentialResponseDTO,
  );

  /// Create a copy of SessionDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionDataDTOImplCopyWith<_$SessionDataDTOImpl> get copyWith =>
      __$$SessionDataDTOImplCopyWithImpl<_$SessionDataDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionDataDTOImplToJson(this);
  }
}

abstract class _SessionDataDTO implements SessionDataDTO {
  const factory _SessionDataDTO({
    required final String token,
    @JsonValue("refresh_token") final String? refreshToken,
    final String? email,
    final String? password,
    final UserCredentialResponseDTO? userCredentialResponseDTO,
  }) = _$SessionDataDTOImpl;

  factory _SessionDataDTO.fromJson(Map<String, dynamic> json) =
      _$SessionDataDTOImpl.fromJson;

  @override
  String get token;
  @override
  @JsonValue("refresh_token")
  String? get refreshToken;
  @override
  String? get email;
  @override
  String? get password;
  @override
  UserCredentialResponseDTO? get userCredentialResponseDTO;

  /// Create a copy of SessionDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionDataDTOImplCopyWith<_$SessionDataDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
