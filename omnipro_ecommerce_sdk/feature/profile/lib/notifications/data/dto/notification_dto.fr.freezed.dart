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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationDTO _$NotificationDTOFromJson(Map<String, dynamic> json) {
  return _NotificationDTO.fromJson(json);
}

/// @nodoc
mixin _$NotificationDTO {
  int get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDTOCopyWith<NotificationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDTOCopyWith<$Res> {
  factory $NotificationDTOCopyWith(
          NotificationDTO value, $Res Function(NotificationDTO) then) =
      _$NotificationDTOCopyWithImpl<$Res, NotificationDTO>;
  @useResult
  $Res call({int id, String message, String dateTime});
}

/// @nodoc
class _$NotificationDTOCopyWithImpl<$Res, $Val extends NotificationDTO>
    implements $NotificationDTOCopyWith<$Res> {
  _$NotificationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? dateTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationDTOImplCopyWith<$Res>
    implements $NotificationDTOCopyWith<$Res> {
  factory _$$NotificationDTOImplCopyWith(_$NotificationDTOImpl value,
          $Res Function(_$NotificationDTOImpl) then) =
      __$$NotificationDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String message, String dateTime});
}

/// @nodoc
class __$$NotificationDTOImplCopyWithImpl<$Res>
    extends _$NotificationDTOCopyWithImpl<$Res, _$NotificationDTOImpl>
    implements _$$NotificationDTOImplCopyWith<$Res> {
  __$$NotificationDTOImplCopyWithImpl(
      _$NotificationDTOImpl _value, $Res Function(_$NotificationDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? dateTime = null,
  }) {
    return _then(_$NotificationDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationDTOImpl implements _NotificationDTO {
  const _$NotificationDTOImpl(
      {required this.id, required this.message, required this.dateTime});

  factory _$NotificationDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String message;
  @override
  final String dateTime;

  @override
  String toString() {
    return 'NotificationDTO(id: $id, message: $message, dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, message, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDTOImplCopyWith<_$NotificationDTOImpl> get copyWith =>
      __$$NotificationDTOImplCopyWithImpl<_$NotificationDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDTOImplToJson(
      this,
    );
  }
}

abstract class _NotificationDTO implements NotificationDTO {
  const factory _NotificationDTO(
      {required final int id,
      required final String message,
      required final String dateTime}) = _$NotificationDTOImpl;

  factory _NotificationDTO.fromJson(Map<String, dynamic> json) =
      _$NotificationDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get message;
  @override
  String get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$NotificationDTOImplCopyWith<_$NotificationDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
