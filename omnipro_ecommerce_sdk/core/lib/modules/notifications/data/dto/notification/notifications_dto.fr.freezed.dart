// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationsDTO _$NotificationsDTOFromJson(Map<String, dynamic> json) {
  return _NotificationsDTO.fromJson(json);
}

/// @nodoc
mixin _$NotificationsDTO {
  List<NotificationDTO> get notifications => throw _privateConstructorUsedError;

  /// Serializes this NotificationsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationsDTOCopyWith<NotificationsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsDTOCopyWith<$Res> {
  factory $NotificationsDTOCopyWith(
    NotificationsDTO value,
    $Res Function(NotificationsDTO) then,
  ) = _$NotificationsDTOCopyWithImpl<$Res, NotificationsDTO>;
  @useResult
  $Res call({List<NotificationDTO> notifications});
}

/// @nodoc
class _$NotificationsDTOCopyWithImpl<$Res, $Val extends NotificationsDTO>
    implements $NotificationsDTOCopyWith<$Res> {
  _$NotificationsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? notifications = null}) {
    return _then(
      _value.copyWith(
            notifications:
                null == notifications
                    ? _value.notifications
                    : notifications // ignore: cast_nullable_to_non_nullable
                        as List<NotificationDTO>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationsDTOImplCopyWith<$Res>
    implements $NotificationsDTOCopyWith<$Res> {
  factory _$$NotificationsDTOImplCopyWith(
    _$NotificationsDTOImpl value,
    $Res Function(_$NotificationsDTOImpl) then,
  ) = __$$NotificationsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NotificationDTO> notifications});
}

/// @nodoc
class __$$NotificationsDTOImplCopyWithImpl<$Res>
    extends _$NotificationsDTOCopyWithImpl<$Res, _$NotificationsDTOImpl>
    implements _$$NotificationsDTOImplCopyWith<$Res> {
  __$$NotificationsDTOImplCopyWithImpl(
    _$NotificationsDTOImpl _value,
    $Res Function(_$NotificationsDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? notifications = null}) {
    return _then(
      _$NotificationsDTOImpl(
        notifications:
            null == notifications
                ? _value._notifications
                : notifications // ignore: cast_nullable_to_non_nullable
                    as List<NotificationDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationsDTOImpl implements _NotificationsDTO {
  const _$NotificationsDTOImpl({
    required final List<NotificationDTO> notifications,
  }) : _notifications = notifications;

  factory _$NotificationsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationsDTOImplFromJson(json);

  final List<NotificationDTO> _notifications;
  @override
  List<NotificationDTO> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  String toString() {
    return 'NotificationsDTO(notifications: $notifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsDTOImpl &&
            const DeepCollectionEquality().equals(
              other._notifications,
              _notifications,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_notifications),
  );

  /// Create a copy of NotificationsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsDTOImplCopyWith<_$NotificationsDTOImpl> get copyWith =>
      __$$NotificationsDTOImplCopyWithImpl<_$NotificationsDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationsDTOImplToJson(this);
  }
}

abstract class _NotificationsDTO implements NotificationsDTO {
  const factory _NotificationsDTO({
    required final List<NotificationDTO> notifications,
  }) = _$NotificationsDTOImpl;

  factory _NotificationsDTO.fromJson(Map<String, dynamic> json) =
      _$NotificationsDTOImpl.fromJson;

  @override
  List<NotificationDTO> get notifications;

  /// Create a copy of NotificationsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationsDTOImplCopyWith<_$NotificationsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
