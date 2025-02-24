// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_setting_local_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserSettingLocalDTO _$UserSettingLocalDTOFromJson(Map<String, dynamic> json) {
  return _UserSettingLocalDTO.fromJson(json);
}

/// @nodoc
mixin _$UserSettingLocalDTO {
  bool get soundReminder => throw _privateConstructorUsedError;
  int get snoozeDuration => throw _privateConstructorUsedError;
  String get languageSelected => throw _privateConstructorUsedError;

  /// Serializes this UserSettingLocalDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserSettingLocalDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSettingLocalDTOCopyWith<UserSettingLocalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingLocalDTOCopyWith<$Res> {
  factory $UserSettingLocalDTOCopyWith(
    UserSettingLocalDTO value,
    $Res Function(UserSettingLocalDTO) then,
  ) = _$UserSettingLocalDTOCopyWithImpl<$Res, UserSettingLocalDTO>;
  @useResult
  $Res call({bool soundReminder, int snoozeDuration, String languageSelected});
}

/// @nodoc
class _$UserSettingLocalDTOCopyWithImpl<$Res, $Val extends UserSettingLocalDTO>
    implements $UserSettingLocalDTOCopyWith<$Res> {
  _$UserSettingLocalDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSettingLocalDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soundReminder = null,
    Object? snoozeDuration = null,
    Object? languageSelected = null,
  }) {
    return _then(
      _value.copyWith(
            soundReminder:
                null == soundReminder
                    ? _value.soundReminder
                    : soundReminder // ignore: cast_nullable_to_non_nullable
                        as bool,
            snoozeDuration:
                null == snoozeDuration
                    ? _value.snoozeDuration
                    : snoozeDuration // ignore: cast_nullable_to_non_nullable
                        as int,
            languageSelected:
                null == languageSelected
                    ? _value.languageSelected
                    : languageSelected // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserSettingLocalDTOImplCopyWith<$Res>
    implements $UserSettingLocalDTOCopyWith<$Res> {
  factory _$$UserSettingLocalDTOImplCopyWith(
    _$UserSettingLocalDTOImpl value,
    $Res Function(_$UserSettingLocalDTOImpl) then,
  ) = __$$UserSettingLocalDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool soundReminder, int snoozeDuration, String languageSelected});
}

/// @nodoc
class __$$UserSettingLocalDTOImplCopyWithImpl<$Res>
    extends _$UserSettingLocalDTOCopyWithImpl<$Res, _$UserSettingLocalDTOImpl>
    implements _$$UserSettingLocalDTOImplCopyWith<$Res> {
  __$$UserSettingLocalDTOImplCopyWithImpl(
    _$UserSettingLocalDTOImpl _value,
    $Res Function(_$UserSettingLocalDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserSettingLocalDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soundReminder = null,
    Object? snoozeDuration = null,
    Object? languageSelected = null,
  }) {
    return _then(
      _$UserSettingLocalDTOImpl(
        soundReminder:
            null == soundReminder
                ? _value.soundReminder
                : soundReminder // ignore: cast_nullable_to_non_nullable
                    as bool,
        snoozeDuration:
            null == snoozeDuration
                ? _value.snoozeDuration
                : snoozeDuration // ignore: cast_nullable_to_non_nullable
                    as int,
        languageSelected:
            null == languageSelected
                ? _value.languageSelected
                : languageSelected // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSettingLocalDTOImpl implements _UserSettingLocalDTO {
  const _$UserSettingLocalDTOImpl({
    required this.soundReminder,
    required this.snoozeDuration,
    required this.languageSelected,
  });

  factory _$UserSettingLocalDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSettingLocalDTOImplFromJson(json);

  @override
  final bool soundReminder;
  @override
  final int snoozeDuration;
  @override
  final String languageSelected;

  @override
  String toString() {
    return 'UserSettingLocalDTO(soundReminder: $soundReminder, snoozeDuration: $snoozeDuration, languageSelected: $languageSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSettingLocalDTOImpl &&
            (identical(other.soundReminder, soundReminder) ||
                other.soundReminder == soundReminder) &&
            (identical(other.snoozeDuration, snoozeDuration) ||
                other.snoozeDuration == snoozeDuration) &&
            (identical(other.languageSelected, languageSelected) ||
                other.languageSelected == languageSelected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, soundReminder, snoozeDuration, languageSelected);

  /// Create a copy of UserSettingLocalDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSettingLocalDTOImplCopyWith<_$UserSettingLocalDTOImpl> get copyWith =>
      __$$UserSettingLocalDTOImplCopyWithImpl<_$UserSettingLocalDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSettingLocalDTOImplToJson(this);
  }
}

abstract class _UserSettingLocalDTO implements UserSettingLocalDTO {
  const factory _UserSettingLocalDTO({
    required final bool soundReminder,
    required final int snoozeDuration,
    required final String languageSelected,
  }) = _$UserSettingLocalDTOImpl;

  factory _UserSettingLocalDTO.fromJson(Map<String, dynamic> json) =
      _$UserSettingLocalDTOImpl.fromJson;

  @override
  bool get soundReminder;
  @override
  int get snoozeDuration;
  @override
  String get languageSelected;

  /// Create a copy of UserSettingLocalDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSettingLocalDTOImplCopyWith<_$UserSettingLocalDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
