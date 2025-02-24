// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config_shipping_method_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ConfigShippingMethodDTO _$ConfigShippingMethodDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ConfigShippingMethodDTO.fromJson(json);
}

/// @nodoc
mixin _$ConfigShippingMethodDTO {
  String get carrierCode => throw _privateConstructorUsedError;
  String get methodCode => throw _privateConstructorUsedError;

  /// Serializes this ConfigShippingMethodDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfigShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfigShippingMethodDTOCopyWith<ConfigShippingMethodDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigShippingMethodDTOCopyWith<$Res> {
  factory $ConfigShippingMethodDTOCopyWith(
    ConfigShippingMethodDTO value,
    $Res Function(ConfigShippingMethodDTO) then,
  ) = _$ConfigShippingMethodDTOCopyWithImpl<$Res, ConfigShippingMethodDTO>;
  @useResult
  $Res call({String carrierCode, String methodCode});
}

/// @nodoc
class _$ConfigShippingMethodDTOCopyWithImpl<
  $Res,
  $Val extends ConfigShippingMethodDTO
>
    implements $ConfigShippingMethodDTOCopyWith<$Res> {
  _$ConfigShippingMethodDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfigShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? carrierCode = null, Object? methodCode = null}) {
    return _then(
      _value.copyWith(
            carrierCode:
                null == carrierCode
                    ? _value.carrierCode
                    : carrierCode // ignore: cast_nullable_to_non_nullable
                        as String,
            methodCode:
                null == methodCode
                    ? _value.methodCode
                    : methodCode // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConfigShippingMethodDTOImplCopyWith<$Res>
    implements $ConfigShippingMethodDTOCopyWith<$Res> {
  factory _$$ConfigShippingMethodDTOImplCopyWith(
    _$ConfigShippingMethodDTOImpl value,
    $Res Function(_$ConfigShippingMethodDTOImpl) then,
  ) = __$$ConfigShippingMethodDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String carrierCode, String methodCode});
}

/// @nodoc
class __$$ConfigShippingMethodDTOImplCopyWithImpl<$Res>
    extends
        _$ConfigShippingMethodDTOCopyWithImpl<
          $Res,
          _$ConfigShippingMethodDTOImpl
        >
    implements _$$ConfigShippingMethodDTOImplCopyWith<$Res> {
  __$$ConfigShippingMethodDTOImplCopyWithImpl(
    _$ConfigShippingMethodDTOImpl _value,
    $Res Function(_$ConfigShippingMethodDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConfigShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? carrierCode = null, Object? methodCode = null}) {
    return _then(
      _$ConfigShippingMethodDTOImpl(
        carrierCode:
            null == carrierCode
                ? _value.carrierCode
                : carrierCode // ignore: cast_nullable_to_non_nullable
                    as String,
        methodCode:
            null == methodCode
                ? _value.methodCode
                : methodCode // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfigShippingMethodDTOImpl implements _ConfigShippingMethodDTO {
  _$ConfigShippingMethodDTOImpl({
    required this.carrierCode,
    required this.methodCode,
  });

  factory _$ConfigShippingMethodDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfigShippingMethodDTOImplFromJson(json);

  @override
  final String carrierCode;
  @override
  final String methodCode;

  @override
  String toString() {
    return 'ConfigShippingMethodDTO(carrierCode: $carrierCode, methodCode: $methodCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigShippingMethodDTOImpl &&
            (identical(other.carrierCode, carrierCode) ||
                other.carrierCode == carrierCode) &&
            (identical(other.methodCode, methodCode) ||
                other.methodCode == methodCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, carrierCode, methodCode);

  /// Create a copy of ConfigShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigShippingMethodDTOImplCopyWith<_$ConfigShippingMethodDTOImpl>
  get copyWith => __$$ConfigShippingMethodDTOImplCopyWithImpl<
    _$ConfigShippingMethodDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfigShippingMethodDTOImplToJson(this);
  }
}

abstract class _ConfigShippingMethodDTO implements ConfigShippingMethodDTO {
  factory _ConfigShippingMethodDTO({
    required final String carrierCode,
    required final String methodCode,
  }) = _$ConfigShippingMethodDTOImpl;

  factory _ConfigShippingMethodDTO.fromJson(Map<String, dynamic> json) =
      _$ConfigShippingMethodDTOImpl.fromJson;

  @override
  String get carrierCode;
  @override
  String get methodCode;

  /// Create a copy of ConfigShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfigShippingMethodDTOImplCopyWith<_$ConfigShippingMethodDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
