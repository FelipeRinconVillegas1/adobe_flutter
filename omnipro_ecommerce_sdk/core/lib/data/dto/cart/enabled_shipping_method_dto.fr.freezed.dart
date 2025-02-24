// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enabled_shipping_method_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EnabledShippingMethodDTO _$EnabledShippingMethodDTOFromJson(
  Map<String, dynamic> json,
) {
  return _EnabledShippingMethodDTO.fromJson(json);
}

/// @nodoc
mixin _$EnabledShippingMethodDTO {
  @JsonKey(name: 'method_code')
  String get methodCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'method_label')
  String get methodLabel => throw _privateConstructorUsedError;

  /// Serializes this EnabledShippingMethodDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EnabledShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnabledShippingMethodDTOCopyWith<EnabledShippingMethodDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnabledShippingMethodDTOCopyWith<$Res> {
  factory $EnabledShippingMethodDTOCopyWith(
    EnabledShippingMethodDTO value,
    $Res Function(EnabledShippingMethodDTO) then,
  ) = _$EnabledShippingMethodDTOCopyWithImpl<$Res, EnabledShippingMethodDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'method_code') String methodCode,
    @JsonKey(name: 'method_label') String methodLabel,
  });
}

/// @nodoc
class _$EnabledShippingMethodDTOCopyWithImpl<
  $Res,
  $Val extends EnabledShippingMethodDTO
>
    implements $EnabledShippingMethodDTOCopyWith<$Res> {
  _$EnabledShippingMethodDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EnabledShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? methodCode = null, Object? methodLabel = null}) {
    return _then(
      _value.copyWith(
            methodCode:
                null == methodCode
                    ? _value.methodCode
                    : methodCode // ignore: cast_nullable_to_non_nullable
                        as String,
            methodLabel:
                null == methodLabel
                    ? _value.methodLabel
                    : methodLabel // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EnabledShippingMethodDTOImplCopyWith<$Res>
    implements $EnabledShippingMethodDTOCopyWith<$Res> {
  factory _$$EnabledShippingMethodDTOImplCopyWith(
    _$EnabledShippingMethodDTOImpl value,
    $Res Function(_$EnabledShippingMethodDTOImpl) then,
  ) = __$$EnabledShippingMethodDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'method_code') String methodCode,
    @JsonKey(name: 'method_label') String methodLabel,
  });
}

/// @nodoc
class __$$EnabledShippingMethodDTOImplCopyWithImpl<$Res>
    extends
        _$EnabledShippingMethodDTOCopyWithImpl<
          $Res,
          _$EnabledShippingMethodDTOImpl
        >
    implements _$$EnabledShippingMethodDTOImplCopyWith<$Res> {
  __$$EnabledShippingMethodDTOImplCopyWithImpl(
    _$EnabledShippingMethodDTOImpl _value,
    $Res Function(_$EnabledShippingMethodDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EnabledShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? methodCode = null, Object? methodLabel = null}) {
    return _then(
      _$EnabledShippingMethodDTOImpl(
        methodCode:
            null == methodCode
                ? _value.methodCode
                : methodCode // ignore: cast_nullable_to_non_nullable
                    as String,
        methodLabel:
            null == methodLabel
                ? _value.methodLabel
                : methodLabel // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EnabledShippingMethodDTOImpl implements _EnabledShippingMethodDTO {
  const _$EnabledShippingMethodDTOImpl({
    @JsonKey(name: 'method_code') required this.methodCode,
    @JsonKey(name: 'method_label') required this.methodLabel,
  });

  factory _$EnabledShippingMethodDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnabledShippingMethodDTOImplFromJson(json);

  @override
  @JsonKey(name: 'method_code')
  final String methodCode;
  @override
  @JsonKey(name: 'method_label')
  final String methodLabel;

  @override
  String toString() {
    return 'EnabledShippingMethodDTO(methodCode: $methodCode, methodLabel: $methodLabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnabledShippingMethodDTOImpl &&
            (identical(other.methodCode, methodCode) ||
                other.methodCode == methodCode) &&
            (identical(other.methodLabel, methodLabel) ||
                other.methodLabel == methodLabel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, methodCode, methodLabel);

  /// Create a copy of EnabledShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnabledShippingMethodDTOImplCopyWith<_$EnabledShippingMethodDTOImpl>
  get copyWith => __$$EnabledShippingMethodDTOImplCopyWithImpl<
    _$EnabledShippingMethodDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnabledShippingMethodDTOImplToJson(this);
  }
}

abstract class _EnabledShippingMethodDTO implements EnabledShippingMethodDTO {
  const factory _EnabledShippingMethodDTO({
    @JsonKey(name: 'method_code') required final String methodCode,
    @JsonKey(name: 'method_label') required final String methodLabel,
  }) = _$EnabledShippingMethodDTOImpl;

  factory _EnabledShippingMethodDTO.fromJson(Map<String, dynamic> json) =
      _$EnabledShippingMethodDTOImpl.fromJson;

  @override
  @JsonKey(name: 'method_code')
  String get methodCode;
  @override
  @JsonKey(name: 'method_label')
  String get methodLabel;

  /// Create a copy of EnabledShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnabledShippingMethodDTOImplCopyWith<_$EnabledShippingMethodDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
