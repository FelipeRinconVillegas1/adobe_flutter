// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_config_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ServerConfigDto _$ServerConfigDtoFromJson(Map<String, dynamic> json) {
  return _ServerConfigDto.fromJson(json);
}

/// @nodoc
mixin _$ServerConfigDto {
  @JsonKey(name: 'service_urls')
  Map<String, String> get serverUrls => throw _privateConstructorUsedError;

  /// Serializes this ServerConfigDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServerConfigDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServerConfigDtoCopyWith<ServerConfigDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerConfigDtoCopyWith<$Res> {
  factory $ServerConfigDtoCopyWith(
    ServerConfigDto value,
    $Res Function(ServerConfigDto) then,
  ) = _$ServerConfigDtoCopyWithImpl<$Res, ServerConfigDto>;
  @useResult
  $Res call({@JsonKey(name: 'service_urls') Map<String, String> serverUrls});
}

/// @nodoc
class _$ServerConfigDtoCopyWithImpl<$Res, $Val extends ServerConfigDto>
    implements $ServerConfigDtoCopyWith<$Res> {
  _$ServerConfigDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServerConfigDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? serverUrls = null}) {
    return _then(
      _value.copyWith(
            serverUrls:
                null == serverUrls
                    ? _value.serverUrls
                    : serverUrls // ignore: cast_nullable_to_non_nullable
                        as Map<String, String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ServerConfigDtoImplCopyWith<$Res>
    implements $ServerConfigDtoCopyWith<$Res> {
  factory _$$ServerConfigDtoImplCopyWith(
    _$ServerConfigDtoImpl value,
    $Res Function(_$ServerConfigDtoImpl) then,
  ) = __$$ServerConfigDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'service_urls') Map<String, String> serverUrls});
}

/// @nodoc
class __$$ServerConfigDtoImplCopyWithImpl<$Res>
    extends _$ServerConfigDtoCopyWithImpl<$Res, _$ServerConfigDtoImpl>
    implements _$$ServerConfigDtoImplCopyWith<$Res> {
  __$$ServerConfigDtoImplCopyWithImpl(
    _$ServerConfigDtoImpl _value,
    $Res Function(_$ServerConfigDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ServerConfigDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? serverUrls = null}) {
    return _then(
      _$ServerConfigDtoImpl(
        serverUrls:
            null == serverUrls
                ? _value._serverUrls
                : serverUrls // ignore: cast_nullable_to_non_nullable
                    as Map<String, String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerConfigDtoImpl implements _ServerConfigDto {
  const _$ServerConfigDtoImpl({
    @JsonKey(name: 'service_urls')
    required final Map<String, String> serverUrls,
  }) : _serverUrls = serverUrls;

  factory _$ServerConfigDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerConfigDtoImplFromJson(json);

  final Map<String, String> _serverUrls;
  @override
  @JsonKey(name: 'service_urls')
  Map<String, String> get serverUrls {
    if (_serverUrls is EqualUnmodifiableMapView) return _serverUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_serverUrls);
  }

  @override
  String toString() {
    return 'ServerConfigDto(serverUrls: $serverUrls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerConfigDtoImpl &&
            const DeepCollectionEquality().equals(
              other._serverUrls,
              _serverUrls,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_serverUrls),
  );

  /// Create a copy of ServerConfigDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerConfigDtoImplCopyWith<_$ServerConfigDtoImpl> get copyWith =>
      __$$ServerConfigDtoImplCopyWithImpl<_$ServerConfigDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerConfigDtoImplToJson(this);
  }
}

abstract class _ServerConfigDto implements ServerConfigDto {
  const factory _ServerConfigDto({
    @JsonKey(name: 'service_urls')
    required final Map<String, String> serverUrls,
  }) = _$ServerConfigDtoImpl;

  factory _ServerConfigDto.fromJson(Map<String, dynamic> json) =
      _$ServerConfigDtoImpl.fromJson;

  @override
  @JsonKey(name: 'service_urls')
  Map<String, String> get serverUrls;

  /// Create a copy of ServerConfigDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerConfigDtoImplCopyWith<_$ServerConfigDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
