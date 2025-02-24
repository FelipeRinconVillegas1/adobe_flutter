// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationCustomer _$NotificationCustomerFromJson(Map<String, dynamic> json) {
  return _NotificationCustomer.fromJson(json);
}

/// @nodoc
mixin _$NotificationCustomer {
  String get email => throw _privateConstructorUsedError;
  String? get fcmToken => throw _privateConstructorUsedError;
  String? get fcmTokenUpdatedAt => throw _privateConstructorUsedError;
  String? get platform => throw _privateConstructorUsedError;
  bool? get notificationsEnabled => throw _privateConstructorUsedError;

  /// Serializes this NotificationCustomer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationCustomer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationCustomerCopyWith<NotificationCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCustomerCopyWith<$Res> {
  factory $NotificationCustomerCopyWith(
    NotificationCustomer value,
    $Res Function(NotificationCustomer) then,
  ) = _$NotificationCustomerCopyWithImpl<$Res, NotificationCustomer>;
  @useResult
  $Res call({
    String email,
    String? fcmToken,
    String? fcmTokenUpdatedAt,
    String? platform,
    bool? notificationsEnabled,
  });
}

/// @nodoc
class _$NotificationCustomerCopyWithImpl<
  $Res,
  $Val extends NotificationCustomer
>
    implements $NotificationCustomerCopyWith<$Res> {
  _$NotificationCustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationCustomer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? fcmToken = freezed,
    Object? fcmTokenUpdatedAt = freezed,
    Object? platform = freezed,
    Object? notificationsEnabled = freezed,
  }) {
    return _then(
      _value.copyWith(
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            fcmToken:
                freezed == fcmToken
                    ? _value.fcmToken
                    : fcmToken // ignore: cast_nullable_to_non_nullable
                        as String?,
            fcmTokenUpdatedAt:
                freezed == fcmTokenUpdatedAt
                    ? _value.fcmTokenUpdatedAt
                    : fcmTokenUpdatedAt // ignore: cast_nullable_to_non_nullable
                        as String?,
            platform:
                freezed == platform
                    ? _value.platform
                    : platform // ignore: cast_nullable_to_non_nullable
                        as String?,
            notificationsEnabled:
                freezed == notificationsEnabled
                    ? _value.notificationsEnabled
                    : notificationsEnabled // ignore: cast_nullable_to_non_nullable
                        as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationCustomerImplCopyWith<$Res>
    implements $NotificationCustomerCopyWith<$Res> {
  factory _$$NotificationCustomerImplCopyWith(
    _$NotificationCustomerImpl value,
    $Res Function(_$NotificationCustomerImpl) then,
  ) = __$$NotificationCustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String email,
    String? fcmToken,
    String? fcmTokenUpdatedAt,
    String? platform,
    bool? notificationsEnabled,
  });
}

/// @nodoc
class __$$NotificationCustomerImplCopyWithImpl<$Res>
    extends _$NotificationCustomerCopyWithImpl<$Res, _$NotificationCustomerImpl>
    implements _$$NotificationCustomerImplCopyWith<$Res> {
  __$$NotificationCustomerImplCopyWithImpl(
    _$NotificationCustomerImpl _value,
    $Res Function(_$NotificationCustomerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationCustomer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? fcmToken = freezed,
    Object? fcmTokenUpdatedAt = freezed,
    Object? platform = freezed,
    Object? notificationsEnabled = freezed,
  }) {
    return _then(
      _$NotificationCustomerImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        fcmToken:
            freezed == fcmToken
                ? _value.fcmToken
                : fcmToken // ignore: cast_nullable_to_non_nullable
                    as String?,
        fcmTokenUpdatedAt:
            freezed == fcmTokenUpdatedAt
                ? _value.fcmTokenUpdatedAt
                : fcmTokenUpdatedAt // ignore: cast_nullable_to_non_nullable
                    as String?,
        platform:
            freezed == platform
                ? _value.platform
                : platform // ignore: cast_nullable_to_non_nullable
                    as String?,
        notificationsEnabled:
            freezed == notificationsEnabled
                ? _value.notificationsEnabled
                : notificationsEnabled // ignore: cast_nullable_to_non_nullable
                    as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationCustomerImpl implements _NotificationCustomer {
  const _$NotificationCustomerImpl({
    required this.email,
    this.fcmToken,
    this.fcmTokenUpdatedAt,
    this.platform,
    this.notificationsEnabled,
  });

  factory _$NotificationCustomerImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationCustomerImplFromJson(json);

  @override
  final String email;
  @override
  final String? fcmToken;
  @override
  final String? fcmTokenUpdatedAt;
  @override
  final String? platform;
  @override
  final bool? notificationsEnabled;

  @override
  String toString() {
    return 'NotificationCustomer(email: $email, fcmToken: $fcmToken, fcmTokenUpdatedAt: $fcmTokenUpdatedAt, platform: $platform, notificationsEnabled: $notificationsEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationCustomerImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.fcmTokenUpdatedAt, fcmTokenUpdatedAt) ||
                other.fcmTokenUpdatedAt == fcmTokenUpdatedAt) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.notificationsEnabled, notificationsEnabled) ||
                other.notificationsEnabled == notificationsEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    email,
    fcmToken,
    fcmTokenUpdatedAt,
    platform,
    notificationsEnabled,
  );

  /// Create a copy of NotificationCustomer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationCustomerImplCopyWith<_$NotificationCustomerImpl>
  get copyWith =>
      __$$NotificationCustomerImplCopyWithImpl<_$NotificationCustomerImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationCustomerImplToJson(this);
  }
}

abstract class _NotificationCustomer implements NotificationCustomer {
  const factory _NotificationCustomer({
    required final String email,
    final String? fcmToken,
    final String? fcmTokenUpdatedAt,
    final String? platform,
    final bool? notificationsEnabled,
  }) = _$NotificationCustomerImpl;

  factory _NotificationCustomer.fromJson(Map<String, dynamic> json) =
      _$NotificationCustomerImpl.fromJson;

  @override
  String get email;
  @override
  String? get fcmToken;
  @override
  String? get fcmTokenUpdatedAt;
  @override
  String? get platform;
  @override
  bool? get notificationsEnabled;

  /// Create a copy of NotificationCustomer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationCustomerImplCopyWith<_$NotificationCustomerImpl>
  get copyWith => throw _privateConstructorUsedError;
}
