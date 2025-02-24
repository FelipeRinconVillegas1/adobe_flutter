// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refundable_fee_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RefundableFeeDTO _$RefundableFeeDTOFromJson(Map<String, dynamic> json) {
  return _RefundableFeeDTO.fromJson(json);
}

/// @nodoc
mixin _$RefundableFeeDTO {
  double get value => throw _privateConstructorUsedError;

  /// Serializes this RefundableFeeDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundableFeeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundableFeeDTOCopyWith<RefundableFeeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundableFeeDTOCopyWith<$Res> {
  factory $RefundableFeeDTOCopyWith(
    RefundableFeeDTO value,
    $Res Function(RefundableFeeDTO) then,
  ) = _$RefundableFeeDTOCopyWithImpl<$Res, RefundableFeeDTO>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$RefundableFeeDTOCopyWithImpl<$Res, $Val extends RefundableFeeDTO>
    implements $RefundableFeeDTOCopyWith<$Res> {
  _$RefundableFeeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundableFeeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _value.copyWith(
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RefundableFeeDTOImplCopyWith<$Res>
    implements $RefundableFeeDTOCopyWith<$Res> {
  factory _$$RefundableFeeDTOImplCopyWith(
    _$RefundableFeeDTOImpl value,
    $Res Function(_$RefundableFeeDTOImpl) then,
  ) = __$$RefundableFeeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$RefundableFeeDTOImplCopyWithImpl<$Res>
    extends _$RefundableFeeDTOCopyWithImpl<$Res, _$RefundableFeeDTOImpl>
    implements _$$RefundableFeeDTOImplCopyWith<$Res> {
  __$$RefundableFeeDTOImplCopyWithImpl(
    _$RefundableFeeDTOImpl _value,
    $Res Function(_$RefundableFeeDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RefundableFeeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$RefundableFeeDTOImpl(
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundableFeeDTOImpl implements _RefundableFeeDTO {
  const _$RefundableFeeDTOImpl({required this.value});

  factory _$RefundableFeeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundableFeeDTOImplFromJson(json);

  @override
  final double value;

  @override
  String toString() {
    return 'RefundableFeeDTO(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundableFeeDTOImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of RefundableFeeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundableFeeDTOImplCopyWith<_$RefundableFeeDTOImpl> get copyWith =>
      __$$RefundableFeeDTOImplCopyWithImpl<_$RefundableFeeDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundableFeeDTOImplToJson(this);
  }
}

abstract class _RefundableFeeDTO implements RefundableFeeDTO {
  const factory _RefundableFeeDTO({required final double value}) =
      _$RefundableFeeDTOImpl;

  factory _RefundableFeeDTO.fromJson(Map<String, dynamic> json) =
      _$RefundableFeeDTOImpl.fromJson;

  @override
  double get value;

  /// Create a copy of RefundableFeeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundableFeeDTOImplCopyWith<_$RefundableFeeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
