// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_credential.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ApiCredential _$ApiCredentialFromJson(Map<String, dynamic> json) {
  return _ApiCredential.fromJson(json);
}

/// @nodoc
mixin _$ApiCredential {
  @JsonKey(name: 'x_api_key')
  String get xApiKey => throw _privateConstructorUsedError;

  /// Serializes this ApiCredential to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiCredential
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiCredentialCopyWith<ApiCredential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiCredentialCopyWith<$Res> {
  factory $ApiCredentialCopyWith(
    ApiCredential value,
    $Res Function(ApiCredential) then,
  ) = _$ApiCredentialCopyWithImpl<$Res, ApiCredential>;
  @useResult
  $Res call({@JsonKey(name: 'x_api_key') String xApiKey});
}

/// @nodoc
class _$ApiCredentialCopyWithImpl<$Res, $Val extends ApiCredential>
    implements $ApiCredentialCopyWith<$Res> {
  _$ApiCredentialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiCredential
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? xApiKey = null}) {
    return _then(
      _value.copyWith(
            xApiKey:
                null == xApiKey
                    ? _value.xApiKey
                    : xApiKey // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiCredentialImplCopyWith<$Res>
    implements $ApiCredentialCopyWith<$Res> {
  factory _$$ApiCredentialImplCopyWith(
    _$ApiCredentialImpl value,
    $Res Function(_$ApiCredentialImpl) then,
  ) = __$$ApiCredentialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'x_api_key') String xApiKey});
}

/// @nodoc
class __$$ApiCredentialImplCopyWithImpl<$Res>
    extends _$ApiCredentialCopyWithImpl<$Res, _$ApiCredentialImpl>
    implements _$$ApiCredentialImplCopyWith<$Res> {
  __$$ApiCredentialImplCopyWithImpl(
    _$ApiCredentialImpl _value,
    $Res Function(_$ApiCredentialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiCredential
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? xApiKey = null}) {
    return _then(
      _$ApiCredentialImpl(
        xApiKey:
            null == xApiKey
                ? _value.xApiKey
                : xApiKey // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiCredentialImpl implements _ApiCredential {
  const _$ApiCredentialImpl({
    @JsonKey(name: 'x_api_key') required this.xApiKey,
  });

  factory _$ApiCredentialImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiCredentialImplFromJson(json);

  @override
  @JsonKey(name: 'x_api_key')
  final String xApiKey;

  @override
  String toString() {
    return 'ApiCredential(xApiKey: $xApiKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCredentialImpl &&
            (identical(other.xApiKey, xApiKey) || other.xApiKey == xApiKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, xApiKey);

  /// Create a copy of ApiCredential
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCredentialImplCopyWith<_$ApiCredentialImpl> get copyWith =>
      __$$ApiCredentialImplCopyWithImpl<_$ApiCredentialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiCredentialImplToJson(this);
  }
}

abstract class _ApiCredential implements ApiCredential {
  const factory _ApiCredential({
    @JsonKey(name: 'x_api_key') required final String xApiKey,
  }) = _$ApiCredentialImpl;

  factory _ApiCredential.fromJson(Map<String, dynamic> json) =
      _$ApiCredentialImpl.fromJson;

  @override
  @JsonKey(name: 'x_api_key')
  String get xApiKey;

  /// Create a copy of ApiCredential
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiCredentialImplCopyWith<_$ApiCredentialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
