// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_setting_remote_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserSettingRemoteDTO _$UserSettingRemoteDTOFromJson(Map<String, dynamic> json) {
  return _UserSettingRemoteDTO.fromJson(json);
}

/// @nodoc
mixin _$UserSettingRemoteDTO {
  int get userId => throw _privateConstructorUsedError;
  bool get showNotification => throw _privateConstructorUsedError;
  bool get soundNotification => throw _privateConstructorUsedError;

  /// Serializes this UserSettingRemoteDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserSettingRemoteDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSettingRemoteDTOCopyWith<UserSettingRemoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingRemoteDTOCopyWith<$Res> {
  factory $UserSettingRemoteDTOCopyWith(
    UserSettingRemoteDTO value,
    $Res Function(UserSettingRemoteDTO) then,
  ) = _$UserSettingRemoteDTOCopyWithImpl<$Res, UserSettingRemoteDTO>;
  @useResult
  $Res call({int userId, bool showNotification, bool soundNotification});
}

/// @nodoc
class _$UserSettingRemoteDTOCopyWithImpl<
  $Res,
  $Val extends UserSettingRemoteDTO
>
    implements $UserSettingRemoteDTOCopyWith<$Res> {
  _$UserSettingRemoteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSettingRemoteDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? showNotification = null,
    Object? soundNotification = null,
  }) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as int,
            showNotification:
                null == showNotification
                    ? _value.showNotification
                    : showNotification // ignore: cast_nullable_to_non_nullable
                        as bool,
            soundNotification:
                null == soundNotification
                    ? _value.soundNotification
                    : soundNotification // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserSettingRemoteDTOImplCopyWith<$Res>
    implements $UserSettingRemoteDTOCopyWith<$Res> {
  factory _$$UserSettingRemoteDTOImplCopyWith(
    _$UserSettingRemoteDTOImpl value,
    $Res Function(_$UserSettingRemoteDTOImpl) then,
  ) = __$$UserSettingRemoteDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, bool showNotification, bool soundNotification});
}

/// @nodoc
class __$$UserSettingRemoteDTOImplCopyWithImpl<$Res>
    extends _$UserSettingRemoteDTOCopyWithImpl<$Res, _$UserSettingRemoteDTOImpl>
    implements _$$UserSettingRemoteDTOImplCopyWith<$Res> {
  __$$UserSettingRemoteDTOImplCopyWithImpl(
    _$UserSettingRemoteDTOImpl _value,
    $Res Function(_$UserSettingRemoteDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserSettingRemoteDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? showNotification = null,
    Object? soundNotification = null,
  }) {
    return _then(
      _$UserSettingRemoteDTOImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as int,
        showNotification:
            null == showNotification
                ? _value.showNotification
                : showNotification // ignore: cast_nullable_to_non_nullable
                    as bool,
        soundNotification:
            null == soundNotification
                ? _value.soundNotification
                : soundNotification // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSettingRemoteDTOImpl implements _UserSettingRemoteDTO {
  const _$UserSettingRemoteDTOImpl({
    required this.userId,
    required this.showNotification,
    required this.soundNotification,
  });

  factory _$UserSettingRemoteDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSettingRemoteDTOImplFromJson(json);

  @override
  final int userId;
  @override
  final bool showNotification;
  @override
  final bool soundNotification;

  @override
  String toString() {
    return 'UserSettingRemoteDTO(userId: $userId, showNotification: $showNotification, soundNotification: $soundNotification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSettingRemoteDTOImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.showNotification, showNotification) ||
                other.showNotification == showNotification) &&
            (identical(other.soundNotification, soundNotification) ||
                other.soundNotification == soundNotification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, showNotification, soundNotification);

  /// Create a copy of UserSettingRemoteDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSettingRemoteDTOImplCopyWith<_$UserSettingRemoteDTOImpl>
  get copyWith =>
      __$$UserSettingRemoteDTOImplCopyWithImpl<_$UserSettingRemoteDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSettingRemoteDTOImplToJson(this);
  }
}

abstract class _UserSettingRemoteDTO implements UserSettingRemoteDTO {
  const factory _UserSettingRemoteDTO({
    required final int userId,
    required final bool showNotification,
    required final bool soundNotification,
  }) = _$UserSettingRemoteDTOImpl;

  factory _UserSettingRemoteDTO.fromJson(Map<String, dynamic> json) =
      _$UserSettingRemoteDTOImpl.fromJson;

  @override
  int get userId;
  @override
  bool get showNotification;
  @override
  bool get soundNotification;

  /// Create a copy of UserSettingRemoteDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSettingRemoteDTOImplCopyWith<_$UserSettingRemoteDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
