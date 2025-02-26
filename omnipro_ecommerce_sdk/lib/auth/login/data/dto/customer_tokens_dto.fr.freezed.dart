// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_tokens_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerTokensDTO _$CustomerTokensDTOFromJson(Map<String, dynamic> json) {
  return _CustomerTokensDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerTokensDTO {
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String? get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this CustomerTokensDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerTokensDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerTokensDTOCopyWith<CustomerTokensDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerTokensDTOCopyWith<$Res> {
  factory $CustomerTokensDTOCopyWith(
    CustomerTokensDTO value,
    $Res Function(CustomerTokensDTO) then,
  ) = _$CustomerTokensDTOCopyWithImpl<$Res, CustomerTokensDTO>;
  @useResult
  $Res call({
    String token,
    @JsonKey(name: 'refresh_token') String? refreshToken,
  });
}

/// @nodoc
class _$CustomerTokensDTOCopyWithImpl<$Res, $Val extends CustomerTokensDTO>
    implements $CustomerTokensDTOCopyWith<$Res> {
  _$CustomerTokensDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerTokensDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null, Object? refreshToken = freezed}) {
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CustomerTokensDTOImplCopyWith<$Res>
    implements $CustomerTokensDTOCopyWith<$Res> {
  factory _$$CustomerTokensDTOImplCopyWith(
    _$CustomerTokensDTOImpl value,
    $Res Function(_$CustomerTokensDTOImpl) then,
  ) = __$$CustomerTokensDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String token,
    @JsonKey(name: 'refresh_token') String? refreshToken,
  });
}

/// @nodoc
class __$$CustomerTokensDTOImplCopyWithImpl<$Res>
    extends _$CustomerTokensDTOCopyWithImpl<$Res, _$CustomerTokensDTOImpl>
    implements _$$CustomerTokensDTOImplCopyWith<$Res> {
  __$$CustomerTokensDTOImplCopyWithImpl(
    _$CustomerTokensDTOImpl _value,
    $Res Function(_$CustomerTokensDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerTokensDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null, Object? refreshToken = freezed}) {
    return _then(
      _$CustomerTokensDTOImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerTokensDTOImpl implements _CustomerTokensDTO {
  const _$CustomerTokensDTOImpl({
    required this.token,
    @JsonKey(name: 'refresh_token') this.refreshToken,
  });

  factory _$CustomerTokensDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerTokensDTOImplFromJson(json);

  @override
  final String token;
  @override
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;

  @override
  String toString() {
    return 'CustomerTokensDTO(token: $token, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerTokensDTOImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, refreshToken);

  /// Create a copy of CustomerTokensDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerTokensDTOImplCopyWith<_$CustomerTokensDTOImpl> get copyWith =>
      __$$CustomerTokensDTOImplCopyWithImpl<_$CustomerTokensDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerTokensDTOImplToJson(this);
  }
}

abstract class _CustomerTokensDTO implements CustomerTokensDTO {
  const factory _CustomerTokensDTO({
    required final String token,
    @JsonKey(name: 'refresh_token') final String? refreshToken,
  }) = _$CustomerTokensDTOImpl;

  factory _CustomerTokensDTO.fromJson(Map<String, dynamic> json) =
      _$CustomerTokensDTOImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(name: 'refresh_token')
  String? get refreshToken;

  /// Create a copy of CustomerTokensDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerTokensDTOImplCopyWith<_$CustomerTokensDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
