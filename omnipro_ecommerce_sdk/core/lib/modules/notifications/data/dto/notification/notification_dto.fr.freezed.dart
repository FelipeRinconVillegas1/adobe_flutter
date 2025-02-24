// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationDTO _$NotificationDTOFromJson(Map<String, dynamic> json) {
  return _NotificationDTO.fromJson(json);
}

/// @nodoc
mixin _$NotificationDTO {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  int? get isUsed => throw _privateConstructorUsedError;
  String? get notificationType => throw _privateConstructorUsedError;
  String? get mda => throw _privateConstructorUsedError;
  String? get balance => throw _privateConstructorUsedError;

  /// Serializes this NotificationDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationDTOCopyWith<NotificationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDTOCopyWith<$Res> {
  factory $NotificationDTOCopyWith(
    NotificationDTO value,
    $Res Function(NotificationDTO) then,
  ) = _$NotificationDTOCopyWithImpl<$Res, NotificationDTO>;
  @useResult
  $Res call({
    String id,
    String userId,
    String title,
    String message,
    String createdAt,
    int? isUsed,
    String? notificationType,
    String? mda,
    String? balance,
  });
}

/// @nodoc
class _$NotificationDTOCopyWithImpl<$Res, $Val extends NotificationDTO>
    implements $NotificationDTOCopyWith<$Res> {
  _$NotificationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? message = null,
    Object? createdAt = null,
    Object? isUsed = freezed,
    Object? notificationType = freezed,
    Object? mda = freezed,
    Object? balance = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as String,
            isUsed:
                freezed == isUsed
                    ? _value.isUsed
                    : isUsed // ignore: cast_nullable_to_non_nullable
                        as int?,
            notificationType:
                freezed == notificationType
                    ? _value.notificationType
                    : notificationType // ignore: cast_nullable_to_non_nullable
                        as String?,
            mda:
                freezed == mda
                    ? _value.mda
                    : mda // ignore: cast_nullable_to_non_nullable
                        as String?,
            balance:
                freezed == balance
                    ? _value.balance
                    : balance // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationDTOImplCopyWith<$Res>
    implements $NotificationDTOCopyWith<$Res> {
  factory _$$NotificationDTOImplCopyWith(
    _$NotificationDTOImpl value,
    $Res Function(_$NotificationDTOImpl) then,
  ) = __$$NotificationDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String userId,
    String title,
    String message,
    String createdAt,
    int? isUsed,
    String? notificationType,
    String? mda,
    String? balance,
  });
}

/// @nodoc
class __$$NotificationDTOImplCopyWithImpl<$Res>
    extends _$NotificationDTOCopyWithImpl<$Res, _$NotificationDTOImpl>
    implements _$$NotificationDTOImplCopyWith<$Res> {
  __$$NotificationDTOImplCopyWithImpl(
    _$NotificationDTOImpl _value,
    $Res Function(_$NotificationDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? message = null,
    Object? createdAt = null,
    Object? isUsed = freezed,
    Object? notificationType = freezed,
    Object? mda = freezed,
    Object? balance = freezed,
  }) {
    return _then(
      _$NotificationDTOImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as String,
        isUsed:
            freezed == isUsed
                ? _value.isUsed
                : isUsed // ignore: cast_nullable_to_non_nullable
                    as int?,
        notificationType:
            freezed == notificationType
                ? _value.notificationType
                : notificationType // ignore: cast_nullable_to_non_nullable
                    as String?,
        mda:
            freezed == mda
                ? _value.mda
                : mda // ignore: cast_nullable_to_non_nullable
                    as String?,
        balance:
            freezed == balance
                ? _value.balance
                : balance // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationDTOImpl implements _NotificationDTO {
  const _$NotificationDTOImpl({
    required this.id,
    required this.userId,
    required this.title,
    required this.message,
    required this.createdAt,
    this.isUsed = 0,
    this.notificationType = '',
    this.mda = '',
    this.balance = '',
  });

  factory _$NotificationDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String title;
  @override
  final String message;
  @override
  final String createdAt;
  @override
  @JsonKey()
  final int? isUsed;
  @override
  @JsonKey()
  final String? notificationType;
  @override
  @JsonKey()
  final String? mda;
  @override
  @JsonKey()
  final String? balance;

  @override
  String toString() {
    return 'NotificationDTO(id: $id, userId: $userId, title: $title, message: $message, createdAt: $createdAt, isUsed: $isUsed, notificationType: $notificationType, mda: $mda, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isUsed, isUsed) || other.isUsed == isUsed) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.mda, mda) || other.mda == mda) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    title,
    message,
    createdAt,
    isUsed,
    notificationType,
    mda,
    balance,
  );

  /// Create a copy of NotificationDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDTOImplCopyWith<_$NotificationDTOImpl> get copyWith =>
      __$$NotificationDTOImplCopyWithImpl<_$NotificationDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDTOImplToJson(this);
  }
}

abstract class _NotificationDTO implements NotificationDTO {
  const factory _NotificationDTO({
    required final String id,
    required final String userId,
    required final String title,
    required final String message,
    required final String createdAt,
    final int? isUsed,
    final String? notificationType,
    final String? mda,
    final String? balance,
  }) = _$NotificationDTOImpl;

  factory _NotificationDTO.fromJson(Map<String, dynamic> json) =
      _$NotificationDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get title;
  @override
  String get message;
  @override
  String get createdAt;
  @override
  int? get isUsed;
  @override
  String? get notificationType;
  @override
  String? get mda;
  @override
  String? get balance;

  /// Create a copy of NotificationDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationDTOImplCopyWith<_$NotificationDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
