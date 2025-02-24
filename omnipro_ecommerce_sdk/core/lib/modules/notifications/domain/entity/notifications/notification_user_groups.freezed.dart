// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_user_groups.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NotificationUserGroups {
  List<String> get groups => throw _privateConstructorUsedError;

  /// Create a copy of NotificationUserGroups
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationUserGroupsCopyWith<NotificationUserGroups> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationUserGroupsCopyWith<$Res> {
  factory $NotificationUserGroupsCopyWith(
    NotificationUserGroups value,
    $Res Function(NotificationUserGroups) then,
  ) = _$NotificationUserGroupsCopyWithImpl<$Res, NotificationUserGroups>;
  @useResult
  $Res call({List<String> groups});
}

/// @nodoc
class _$NotificationUserGroupsCopyWithImpl<
  $Res,
  $Val extends NotificationUserGroups
>
    implements $NotificationUserGroupsCopyWith<$Res> {
  _$NotificationUserGroupsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationUserGroups
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? groups = null}) {
    return _then(
      _value.copyWith(
            groups:
                null == groups
                    ? _value.groups
                    : groups // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationUserGroupsImplCopyWith<$Res>
    implements $NotificationUserGroupsCopyWith<$Res> {
  factory _$$NotificationUserGroupsImplCopyWith(
    _$NotificationUserGroupsImpl value,
    $Res Function(_$NotificationUserGroupsImpl) then,
  ) = __$$NotificationUserGroupsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> groups});
}

/// @nodoc
class __$$NotificationUserGroupsImplCopyWithImpl<$Res>
    extends
        _$NotificationUserGroupsCopyWithImpl<$Res, _$NotificationUserGroupsImpl>
    implements _$$NotificationUserGroupsImplCopyWith<$Res> {
  __$$NotificationUserGroupsImplCopyWithImpl(
    _$NotificationUserGroupsImpl _value,
    $Res Function(_$NotificationUserGroupsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationUserGroups
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? groups = null}) {
    return _then(
      _$NotificationUserGroupsImpl(
        groups:
            null == groups
                ? _value._groups
                : groups // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$NotificationUserGroupsImpl implements _NotificationUserGroups {
  const _$NotificationUserGroupsImpl({final List<String> groups = const []})
    : _groups = groups;

  final List<String> _groups;
  @override
  @JsonKey()
  List<String> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'NotificationUserGroups(groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationUserGroupsImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  /// Create a copy of NotificationUserGroups
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationUserGroupsImplCopyWith<_$NotificationUserGroupsImpl>
  get copyWith =>
      __$$NotificationUserGroupsImplCopyWithImpl<_$NotificationUserGroupsImpl>(
        this,
        _$identity,
      );
}

abstract class _NotificationUserGroups implements NotificationUserGroups {
  const factory _NotificationUserGroups({final List<String> groups}) =
      _$NotificationUserGroupsImpl;

  @override
  List<String> get groups;

  /// Create a copy of NotificationUserGroups
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationUserGroupsImplCopyWith<_$NotificationUserGroupsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
