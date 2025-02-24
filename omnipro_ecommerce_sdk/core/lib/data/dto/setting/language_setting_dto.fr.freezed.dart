// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_setting_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LanguageSettingDTO _$LanguageSettingDTOFromJson(Map<String, dynamic> json) {
  return _LanguageSettingDTO.fromJson(json);
}

/// @nodoc
mixin _$LanguageSettingDTO {
  List<String> get languagesCodesAvailable =>
      throw _privateConstructorUsedError;
  String get languageSelected => throw _privateConstructorUsedError;

  /// Serializes this LanguageSettingDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LanguageSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageSettingDTOCopyWith<LanguageSettingDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageSettingDTOCopyWith<$Res> {
  factory $LanguageSettingDTOCopyWith(
    LanguageSettingDTO value,
    $Res Function(LanguageSettingDTO) then,
  ) = _$LanguageSettingDTOCopyWithImpl<$Res, LanguageSettingDTO>;
  @useResult
  $Res call({List<String> languagesCodesAvailable, String languageSelected});
}

/// @nodoc
class _$LanguageSettingDTOCopyWithImpl<$Res, $Val extends LanguageSettingDTO>
    implements $LanguageSettingDTOCopyWith<$Res> {
  _$LanguageSettingDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languagesCodesAvailable = null,
    Object? languageSelected = null,
  }) {
    return _then(
      _value.copyWith(
            languagesCodesAvailable:
                null == languagesCodesAvailable
                    ? _value.languagesCodesAvailable
                    : languagesCodesAvailable // ignore: cast_nullable_to_non_nullable
                        as List<String>,
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
abstract class _$$LanguageSettingDTOImplCopyWith<$Res>
    implements $LanguageSettingDTOCopyWith<$Res> {
  factory _$$LanguageSettingDTOImplCopyWith(
    _$LanguageSettingDTOImpl value,
    $Res Function(_$LanguageSettingDTOImpl) then,
  ) = __$$LanguageSettingDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> languagesCodesAvailable, String languageSelected});
}

/// @nodoc
class __$$LanguageSettingDTOImplCopyWithImpl<$Res>
    extends _$LanguageSettingDTOCopyWithImpl<$Res, _$LanguageSettingDTOImpl>
    implements _$$LanguageSettingDTOImplCopyWith<$Res> {
  __$$LanguageSettingDTOImplCopyWithImpl(
    _$LanguageSettingDTOImpl _value,
    $Res Function(_$LanguageSettingDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LanguageSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languagesCodesAvailable = null,
    Object? languageSelected = null,
  }) {
    return _then(
      _$LanguageSettingDTOImpl(
        languagesCodesAvailable:
            null == languagesCodesAvailable
                ? _value._languagesCodesAvailable
                : languagesCodesAvailable // ignore: cast_nullable_to_non_nullable
                    as List<String>,
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
class _$LanguageSettingDTOImpl implements _LanguageSettingDTO {
  const _$LanguageSettingDTOImpl({
    required final List<String> languagesCodesAvailable,
    required this.languageSelected,
  }) : _languagesCodesAvailable = languagesCodesAvailable;

  factory _$LanguageSettingDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageSettingDTOImplFromJson(json);

  final List<String> _languagesCodesAvailable;
  @override
  List<String> get languagesCodesAvailable {
    if (_languagesCodesAvailable is EqualUnmodifiableListView)
      return _languagesCodesAvailable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languagesCodesAvailable);
  }

  @override
  final String languageSelected;

  @override
  String toString() {
    return 'LanguageSettingDTO(languagesCodesAvailable: $languagesCodesAvailable, languageSelected: $languageSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageSettingDTOImpl &&
            const DeepCollectionEquality().equals(
              other._languagesCodesAvailable,
              _languagesCodesAvailable,
            ) &&
            (identical(other.languageSelected, languageSelected) ||
                other.languageSelected == languageSelected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_languagesCodesAvailable),
    languageSelected,
  );

  /// Create a copy of LanguageSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageSettingDTOImplCopyWith<_$LanguageSettingDTOImpl> get copyWith =>
      __$$LanguageSettingDTOImplCopyWithImpl<_$LanguageSettingDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageSettingDTOImplToJson(this);
  }
}

abstract class _LanguageSettingDTO implements LanguageSettingDTO {
  const factory _LanguageSettingDTO({
    required final List<String> languagesCodesAvailable,
    required final String languageSelected,
  }) = _$LanguageSettingDTOImpl;

  factory _LanguageSettingDTO.fromJson(Map<String, dynamic> json) =
      _$LanguageSettingDTOImpl.fromJson;

  @override
  List<String> get languagesCodesAvailable;
  @override
  String get languageSelected;

  /// Create a copy of LanguageSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageSettingDTOImplCopyWith<_$LanguageSettingDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
