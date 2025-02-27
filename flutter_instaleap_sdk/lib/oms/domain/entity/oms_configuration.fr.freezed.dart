// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oms_configuration.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OmsConfiguration _$OmsConfigurationFromJson(Map<String, dynamic> json) {
  return _OmsConfiguration.fromJson(json);
}

/// @nodoc
mixin _$OmsConfiguration {
  ApiCredential get apiCredential => throw _privateConstructorUsedError;
  UrlsOms get urlsOms => throw _privateConstructorUsedError;

  /// Serializes this OmsConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OmsConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OmsConfigurationCopyWith<OmsConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OmsConfigurationCopyWith<$Res> {
  factory $OmsConfigurationCopyWith(
    OmsConfiguration value,
    $Res Function(OmsConfiguration) then,
  ) = _$OmsConfigurationCopyWithImpl<$Res, OmsConfiguration>;
  @useResult
  $Res call({ApiCredential apiCredential, UrlsOms urlsOms});

  $ApiCredentialCopyWith<$Res> get apiCredential;
  $UrlsOmsCopyWith<$Res> get urlsOms;
}

/// @nodoc
class _$OmsConfigurationCopyWithImpl<$Res, $Val extends OmsConfiguration>
    implements $OmsConfigurationCopyWith<$Res> {
  _$OmsConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OmsConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? apiCredential = null, Object? urlsOms = null}) {
    return _then(
      _value.copyWith(
            apiCredential:
                null == apiCredential
                    ? _value.apiCredential
                    : apiCredential // ignore: cast_nullable_to_non_nullable
                        as ApiCredential,
            urlsOms:
                null == urlsOms
                    ? _value.urlsOms
                    : urlsOms // ignore: cast_nullable_to_non_nullable
                        as UrlsOms,
          )
          as $Val,
    );
  }

  /// Create a copy of OmsConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiCredentialCopyWith<$Res> get apiCredential {
    return $ApiCredentialCopyWith<$Res>(_value.apiCredential, (value) {
      return _then(_value.copyWith(apiCredential: value) as $Val);
    });
  }

  /// Create a copy of OmsConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UrlsOmsCopyWith<$Res> get urlsOms {
    return $UrlsOmsCopyWith<$Res>(_value.urlsOms, (value) {
      return _then(_value.copyWith(urlsOms: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OmsConfigurationImplCopyWith<$Res>
    implements $OmsConfigurationCopyWith<$Res> {
  factory _$$OmsConfigurationImplCopyWith(
    _$OmsConfigurationImpl value,
    $Res Function(_$OmsConfigurationImpl) then,
  ) = __$$OmsConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiCredential apiCredential, UrlsOms urlsOms});

  @override
  $ApiCredentialCopyWith<$Res> get apiCredential;
  @override
  $UrlsOmsCopyWith<$Res> get urlsOms;
}

/// @nodoc
class __$$OmsConfigurationImplCopyWithImpl<$Res>
    extends _$OmsConfigurationCopyWithImpl<$Res, _$OmsConfigurationImpl>
    implements _$$OmsConfigurationImplCopyWith<$Res> {
  __$$OmsConfigurationImplCopyWithImpl(
    _$OmsConfigurationImpl _value,
    $Res Function(_$OmsConfigurationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OmsConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? apiCredential = null, Object? urlsOms = null}) {
    return _then(
      _$OmsConfigurationImpl(
        apiCredential:
            null == apiCredential
                ? _value.apiCredential
                : apiCredential // ignore: cast_nullable_to_non_nullable
                    as ApiCredential,
        urlsOms:
            null == urlsOms
                ? _value.urlsOms
                : urlsOms // ignore: cast_nullable_to_non_nullable
                    as UrlsOms,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OmsConfigurationImpl implements _OmsConfiguration {
  const _$OmsConfigurationImpl({
    required this.apiCredential,
    required this.urlsOms,
  });

  factory _$OmsConfigurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OmsConfigurationImplFromJson(json);

  @override
  final ApiCredential apiCredential;
  @override
  final UrlsOms urlsOms;

  @override
  String toString() {
    return 'OmsConfiguration(apiCredential: $apiCredential, urlsOms: $urlsOms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OmsConfigurationImpl &&
            (identical(other.apiCredential, apiCredential) ||
                other.apiCredential == apiCredential) &&
            (identical(other.urlsOms, urlsOms) || other.urlsOms == urlsOms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, apiCredential, urlsOms);

  /// Create a copy of OmsConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OmsConfigurationImplCopyWith<_$OmsConfigurationImpl> get copyWith =>
      __$$OmsConfigurationImplCopyWithImpl<_$OmsConfigurationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OmsConfigurationImplToJson(this);
  }
}

abstract class _OmsConfiguration implements OmsConfiguration {
  const factory _OmsConfiguration({
    required final ApiCredential apiCredential,
    required final UrlsOms urlsOms,
  }) = _$OmsConfigurationImpl;

  factory _OmsConfiguration.fromJson(Map<String, dynamic> json) =
      _$OmsConfigurationImpl.fromJson;

  @override
  ApiCredential get apiCredential;
  @override
  UrlsOms get urlsOms;

  /// Create a copy of OmsConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OmsConfigurationImplCopyWith<_$OmsConfigurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
