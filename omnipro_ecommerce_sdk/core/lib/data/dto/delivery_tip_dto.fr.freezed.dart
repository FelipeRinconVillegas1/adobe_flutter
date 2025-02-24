// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_tip_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeliveryTipDTO _$DeliveryTipDTOFromJson(Map<String, dynamic> json) {
  return _DeliveryTipDTO.fromJson(json);
}

/// @nodoc
mixin _$DeliveryTipDTO {
  String get labelTip => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  /// Serializes this DeliveryTipDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryTipDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryTipDTOCopyWith<DeliveryTipDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryTipDTOCopyWith<$Res> {
  factory $DeliveryTipDTOCopyWith(
    DeliveryTipDTO value,
    $Res Function(DeliveryTipDTO) then,
  ) = _$DeliveryTipDTOCopyWithImpl<$Res, DeliveryTipDTO>;
  @useResult
  $Res call({String labelTip, double value});
}

/// @nodoc
class _$DeliveryTipDTOCopyWithImpl<$Res, $Val extends DeliveryTipDTO>
    implements $DeliveryTipDTOCopyWith<$Res> {
  _$DeliveryTipDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryTipDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? labelTip = null, Object? value = null}) {
    return _then(
      _value.copyWith(
            labelTip:
                null == labelTip
                    ? _value.labelTip
                    : labelTip // ignore: cast_nullable_to_non_nullable
                        as String,
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
abstract class _$$DeliveryTipDTOImplCopyWith<$Res>
    implements $DeliveryTipDTOCopyWith<$Res> {
  factory _$$DeliveryTipDTOImplCopyWith(
    _$DeliveryTipDTOImpl value,
    $Res Function(_$DeliveryTipDTOImpl) then,
  ) = __$$DeliveryTipDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String labelTip, double value});
}

/// @nodoc
class __$$DeliveryTipDTOImplCopyWithImpl<$Res>
    extends _$DeliveryTipDTOCopyWithImpl<$Res, _$DeliveryTipDTOImpl>
    implements _$$DeliveryTipDTOImplCopyWith<$Res> {
  __$$DeliveryTipDTOImplCopyWithImpl(
    _$DeliveryTipDTOImpl _value,
    $Res Function(_$DeliveryTipDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeliveryTipDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? labelTip = null, Object? value = null}) {
    return _then(
      _$DeliveryTipDTOImpl(
        labelTip:
            null == labelTip
                ? _value.labelTip
                : labelTip // ignore: cast_nullable_to_non_nullable
                    as String,
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
class _$DeliveryTipDTOImpl implements _DeliveryTipDTO {
  const _$DeliveryTipDTOImpl({required this.labelTip, required this.value});

  factory _$DeliveryTipDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryTipDTOImplFromJson(json);

  @override
  final String labelTip;
  @override
  final double value;

  @override
  String toString() {
    return 'DeliveryTipDTO(labelTip: $labelTip, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryTipDTOImpl &&
            (identical(other.labelTip, labelTip) ||
                other.labelTip == labelTip) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, labelTip, value);

  /// Create a copy of DeliveryTipDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryTipDTOImplCopyWith<_$DeliveryTipDTOImpl> get copyWith =>
      __$$DeliveryTipDTOImplCopyWithImpl<_$DeliveryTipDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryTipDTOImplToJson(this);
  }
}

abstract class _DeliveryTipDTO implements DeliveryTipDTO {
  const factory _DeliveryTipDTO({
    required final String labelTip,
    required final double value,
  }) = _$DeliveryTipDTOImpl;

  factory _DeliveryTipDTO.fromJson(Map<String, dynamic> json) =
      _$DeliveryTipDTOImpl.fromJson;

  @override
  String get labelTip;
  @override
  double get value;

  /// Create a copy of DeliveryTipDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryTipDTOImplCopyWith<_$DeliveryTipDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
