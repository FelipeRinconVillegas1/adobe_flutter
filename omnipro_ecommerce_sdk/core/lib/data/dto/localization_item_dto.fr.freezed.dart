// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization_item_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LocalizationItemDTO _$LocalizationItemDTOFromJson(Map<String, dynamic> json) {
  return _LocalizationItemDTO.fromJson(json);
}

/// @nodoc
mixin _$LocalizationItemDTO {
  String get code => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  /// Serializes this LocalizationItemDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizationItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizationItemDTOCopyWith<LocalizationItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationItemDTOCopyWith<$Res> {
  factory $LocalizationItemDTOCopyWith(
    LocalizationItemDTO value,
    $Res Function(LocalizationItemDTO) then,
  ) = _$LocalizationItemDTOCopyWithImpl<$Res, LocalizationItemDTO>;
  @useResult
  $Res call({String code, String label});
}

/// @nodoc
class _$LocalizationItemDTOCopyWithImpl<$Res, $Val extends LocalizationItemDTO>
    implements $LocalizationItemDTOCopyWith<$Res> {
  _$LocalizationItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizationItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? label = null}) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            label:
                null == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocalizationItemDTOImplCopyWith<$Res>
    implements $LocalizationItemDTOCopyWith<$Res> {
  factory _$$LocalizationItemDTOImplCopyWith(
    _$LocalizationItemDTOImpl value,
    $Res Function(_$LocalizationItemDTOImpl) then,
  ) = __$$LocalizationItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String label});
}

/// @nodoc
class __$$LocalizationItemDTOImplCopyWithImpl<$Res>
    extends _$LocalizationItemDTOCopyWithImpl<$Res, _$LocalizationItemDTOImpl>
    implements _$$LocalizationItemDTOImplCopyWith<$Res> {
  __$$LocalizationItemDTOImplCopyWithImpl(
    _$LocalizationItemDTOImpl _value,
    $Res Function(_$LocalizationItemDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizationItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? label = null}) {
    return _then(
      _$LocalizationItemDTOImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        label:
            null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalizationItemDTOImpl implements _LocalizationItemDTO {
  const _$LocalizationItemDTOImpl({required this.code, required this.label});

  factory _$LocalizationItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizationItemDTOImplFromJson(json);

  @override
  final String code;
  @override
  final String label;

  @override
  String toString() {
    return 'LocalizationItemDTO(code: $code, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationItemDTOImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, label);

  /// Create a copy of LocalizationItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizationItemDTOImplCopyWith<_$LocalizationItemDTOImpl> get copyWith =>
      __$$LocalizationItemDTOImplCopyWithImpl<_$LocalizationItemDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizationItemDTOImplToJson(this);
  }
}

abstract class _LocalizationItemDTO implements LocalizationItemDTO {
  const factory _LocalizationItemDTO({
    required final String code,
    required final String label,
  }) = _$LocalizationItemDTOImpl;

  factory _LocalizationItemDTO.fromJson(Map<String, dynamic> json) =
      _$LocalizationItemDTOImpl.fromJson;

  @override
  String get code;
  @override
  String get label;

  /// Create a copy of LocalizationItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizationItemDTOImplCopyWith<_$LocalizationItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
