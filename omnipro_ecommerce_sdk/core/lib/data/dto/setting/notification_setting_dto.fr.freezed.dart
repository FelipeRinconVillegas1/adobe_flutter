// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_setting_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationSettingDTO _$NotificationSettingDTOFromJson(
  Map<String, dynamic> json,
) {
  return _NotificationSettingDTO.fromJson(json);
}

/// @nodoc
mixin _$NotificationSettingDTO {
  int get userId => throw _privateConstructorUsedError;
  bool get showNotifications => throw _privateConstructorUsedError;
  bool get isActiveSound => throw _privateConstructorUsedError;

  /// Serializes this NotificationSettingDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationSettingDTOCopyWith<NotificationSettingDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingDTOCopyWith<$Res> {
  factory $NotificationSettingDTOCopyWith(
    NotificationSettingDTO value,
    $Res Function(NotificationSettingDTO) then,
  ) = _$NotificationSettingDTOCopyWithImpl<$Res, NotificationSettingDTO>;
  @useResult
  $Res call({int userId, bool showNotifications, bool isActiveSound});
}

/// @nodoc
class _$NotificationSettingDTOCopyWithImpl<
  $Res,
  $Val extends NotificationSettingDTO
>
    implements $NotificationSettingDTOCopyWith<$Res> {
  _$NotificationSettingDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? showNotifications = null,
    Object? isActiveSound = null,
  }) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as int,
            showNotifications:
                null == showNotifications
                    ? _value.showNotifications
                    : showNotifications // ignore: cast_nullable_to_non_nullable
                        as bool,
            isActiveSound:
                null == isActiveSound
                    ? _value.isActiveSound
                    : isActiveSound // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationSettingDTOImplCopyWith<$Res>
    implements $NotificationSettingDTOCopyWith<$Res> {
  factory _$$NotificationSettingDTOImplCopyWith(
    _$NotificationSettingDTOImpl value,
    $Res Function(_$NotificationSettingDTOImpl) then,
  ) = __$$NotificationSettingDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, bool showNotifications, bool isActiveSound});
}

/// @nodoc
class __$$NotificationSettingDTOImplCopyWithImpl<$Res>
    extends
        _$NotificationSettingDTOCopyWithImpl<$Res, _$NotificationSettingDTOImpl>
    implements _$$NotificationSettingDTOImplCopyWith<$Res> {
  __$$NotificationSettingDTOImplCopyWithImpl(
    _$NotificationSettingDTOImpl _value,
    $Res Function(_$NotificationSettingDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? showNotifications = null,
    Object? isActiveSound = null,
  }) {
    return _then(
      _$NotificationSettingDTOImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as int,
        showNotifications:
            null == showNotifications
                ? _value.showNotifications
                : showNotifications // ignore: cast_nullable_to_non_nullable
                    as bool,
        isActiveSound:
            null == isActiveSound
                ? _value.isActiveSound
                : isActiveSound // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationSettingDTOImpl implements _NotificationSettingDTO {
  const _$NotificationSettingDTOImpl({
    required this.userId,
    required this.showNotifications,
    required this.isActiveSound,
  });

  factory _$NotificationSettingDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationSettingDTOImplFromJson(json);

  @override
  final int userId;
  @override
  final bool showNotifications;
  @override
  final bool isActiveSound;

  @override
  String toString() {
    return 'NotificationSettingDTO(userId: $userId, showNotifications: $showNotifications, isActiveSound: $isActiveSound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSettingDTOImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.showNotifications, showNotifications) ||
                other.showNotifications == showNotifications) &&
            (identical(other.isActiveSound, isActiveSound) ||
                other.isActiveSound == isActiveSound));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, showNotifications, isActiveSound);

  /// Create a copy of NotificationSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSettingDTOImplCopyWith<_$NotificationSettingDTOImpl>
  get copyWith =>
      __$$NotificationSettingDTOImplCopyWithImpl<_$NotificationSettingDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationSettingDTOImplToJson(this);
  }
}

abstract class _NotificationSettingDTO implements NotificationSettingDTO {
  const factory _NotificationSettingDTO({
    required final int userId,
    required final bool showNotifications,
    required final bool isActiveSound,
  }) = _$NotificationSettingDTOImpl;

  factory _NotificationSettingDTO.fromJson(Map<String, dynamic> json) =
      _$NotificationSettingDTOImpl.fromJson;

  @override
  int get userId;
  @override
  bool get showNotifications;
  @override
  bool get isActiveSound;

  /// Create a copy of NotificationSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationSettingDTOImplCopyWith<_$NotificationSettingDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
