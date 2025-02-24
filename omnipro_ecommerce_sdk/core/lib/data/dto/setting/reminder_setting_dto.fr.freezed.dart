// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_setting_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReminderSettingDTO _$ReminderSettingDTOFromJson(Map<String, dynamic> json) {
  return _ReminderSettingDTO.fromJson(json);
}

/// @nodoc
mixin _$ReminderSettingDTO {
  int get snoozeDuration => throw _privateConstructorUsedError;
  bool get isActiveSound => throw _privateConstructorUsedError;

  /// Serializes this ReminderSettingDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReminderSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReminderSettingDTOCopyWith<ReminderSettingDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderSettingDTOCopyWith<$Res> {
  factory $ReminderSettingDTOCopyWith(
    ReminderSettingDTO value,
    $Res Function(ReminderSettingDTO) then,
  ) = _$ReminderSettingDTOCopyWithImpl<$Res, ReminderSettingDTO>;
  @useResult
  $Res call({int snoozeDuration, bool isActiveSound});
}

/// @nodoc
class _$ReminderSettingDTOCopyWithImpl<$Res, $Val extends ReminderSettingDTO>
    implements $ReminderSettingDTOCopyWith<$Res> {
  _$ReminderSettingDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReminderSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? snoozeDuration = null, Object? isActiveSound = null}) {
    return _then(
      _value.copyWith(
            snoozeDuration:
                null == snoozeDuration
                    ? _value.snoozeDuration
                    : snoozeDuration // ignore: cast_nullable_to_non_nullable
                        as int,
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
abstract class _$$ReminderSettingDTOImplCopyWith<$Res>
    implements $ReminderSettingDTOCopyWith<$Res> {
  factory _$$ReminderSettingDTOImplCopyWith(
    _$ReminderSettingDTOImpl value,
    $Res Function(_$ReminderSettingDTOImpl) then,
  ) = __$$ReminderSettingDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int snoozeDuration, bool isActiveSound});
}

/// @nodoc
class __$$ReminderSettingDTOImplCopyWithImpl<$Res>
    extends _$ReminderSettingDTOCopyWithImpl<$Res, _$ReminderSettingDTOImpl>
    implements _$$ReminderSettingDTOImplCopyWith<$Res> {
  __$$ReminderSettingDTOImplCopyWithImpl(
    _$ReminderSettingDTOImpl _value,
    $Res Function(_$ReminderSettingDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReminderSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? snoozeDuration = null, Object? isActiveSound = null}) {
    return _then(
      _$ReminderSettingDTOImpl(
        snoozeDuration:
            null == snoozeDuration
                ? _value.snoozeDuration
                : snoozeDuration // ignore: cast_nullable_to_non_nullable
                    as int,
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
class _$ReminderSettingDTOImpl implements _ReminderSettingDTO {
  const _$ReminderSettingDTOImpl({
    required this.snoozeDuration,
    required this.isActiveSound,
  });

  factory _$ReminderSettingDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReminderSettingDTOImplFromJson(json);

  @override
  final int snoozeDuration;
  @override
  final bool isActiveSound;

  @override
  String toString() {
    return 'ReminderSettingDTO(snoozeDuration: $snoozeDuration, isActiveSound: $isActiveSound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReminderSettingDTOImpl &&
            (identical(other.snoozeDuration, snoozeDuration) ||
                other.snoozeDuration == snoozeDuration) &&
            (identical(other.isActiveSound, isActiveSound) ||
                other.isActiveSound == isActiveSound));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, snoozeDuration, isActiveSound);

  /// Create a copy of ReminderSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReminderSettingDTOImplCopyWith<_$ReminderSettingDTOImpl> get copyWith =>
      __$$ReminderSettingDTOImplCopyWithImpl<_$ReminderSettingDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReminderSettingDTOImplToJson(this);
  }
}

abstract class _ReminderSettingDTO implements ReminderSettingDTO {
  const factory _ReminderSettingDTO({
    required final int snoozeDuration,
    required final bool isActiveSound,
  }) = _$ReminderSettingDTOImpl;

  factory _ReminderSettingDTO.fromJson(Map<String, dynamic> json) =
      _$ReminderSettingDTOImpl.fromJson;

  @override
  int get snoozeDuration;
  @override
  bool get isActiveSound;

  /// Create a copy of ReminderSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReminderSettingDTOImplCopyWith<_$ReminderSettingDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
