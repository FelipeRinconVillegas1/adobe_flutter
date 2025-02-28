// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_slot_response_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CheckSlotResponseDTO _$CheckSlotResponseDTOFromJson(Map<String, dynamic> json) {
  return _CheckSlotResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$CheckSlotResponseDTO {
  @JsonKey(name: 'slot_valid')
  bool get slotValid => throw _privateConstructorUsedError;

  /// Serializes this CheckSlotResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckSlotResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckSlotResponseDTOCopyWith<CheckSlotResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSlotResponseDTOCopyWith<$Res> {
  factory $CheckSlotResponseDTOCopyWith(
    CheckSlotResponseDTO value,
    $Res Function(CheckSlotResponseDTO) then,
  ) = _$CheckSlotResponseDTOCopyWithImpl<$Res, CheckSlotResponseDTO>;
  @useResult
  $Res call({@JsonKey(name: 'slot_valid') bool slotValid});
}

/// @nodoc
class _$CheckSlotResponseDTOCopyWithImpl<
  $Res,
  $Val extends CheckSlotResponseDTO
>
    implements $CheckSlotResponseDTOCopyWith<$Res> {
  _$CheckSlotResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckSlotResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? slotValid = null}) {
    return _then(
      _value.copyWith(
            slotValid:
                null == slotValid
                    ? _value.slotValid
                    : slotValid // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CheckSlotResponseDTOImplCopyWith<$Res>
    implements $CheckSlotResponseDTOCopyWith<$Res> {
  factory _$$CheckSlotResponseDTOImplCopyWith(
    _$CheckSlotResponseDTOImpl value,
    $Res Function(_$CheckSlotResponseDTOImpl) then,
  ) = __$$CheckSlotResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'slot_valid') bool slotValid});
}

/// @nodoc
class __$$CheckSlotResponseDTOImplCopyWithImpl<$Res>
    extends _$CheckSlotResponseDTOCopyWithImpl<$Res, _$CheckSlotResponseDTOImpl>
    implements _$$CheckSlotResponseDTOImplCopyWith<$Res> {
  __$$CheckSlotResponseDTOImplCopyWithImpl(
    _$CheckSlotResponseDTOImpl _value,
    $Res Function(_$CheckSlotResponseDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CheckSlotResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? slotValid = null}) {
    return _then(
      _$CheckSlotResponseDTOImpl(
        slotValid:
            null == slotValid
                ? _value.slotValid
                : slotValid // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckSlotResponseDTOImpl implements _CheckSlotResponseDTO {
  const _$CheckSlotResponseDTOImpl({
    @JsonKey(name: 'slot_valid') required this.slotValid,
  });

  factory _$CheckSlotResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckSlotResponseDTOImplFromJson(json);

  @override
  @JsonKey(name: 'slot_valid')
  final bool slotValid;

  @override
  String toString() {
    return 'CheckSlotResponseDTO(slotValid: $slotValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckSlotResponseDTOImpl &&
            (identical(other.slotValid, slotValid) ||
                other.slotValid == slotValid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, slotValid);

  /// Create a copy of CheckSlotResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckSlotResponseDTOImplCopyWith<_$CheckSlotResponseDTOImpl>
  get copyWith =>
      __$$CheckSlotResponseDTOImplCopyWithImpl<_$CheckSlotResponseDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckSlotResponseDTOImplToJson(this);
  }
}

abstract class _CheckSlotResponseDTO implements CheckSlotResponseDTO {
  const factory _CheckSlotResponseDTO({
    @JsonKey(name: 'slot_valid') required final bool slotValid,
  }) = _$CheckSlotResponseDTOImpl;

  factory _CheckSlotResponseDTO.fromJson(Map<String, dynamic> json) =
      _$CheckSlotResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: 'slot_valid')
  bool get slotValid;

  /// Create a copy of CheckSlotResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckSlotResponseDTOImplCopyWith<_$CheckSlotResponseDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
