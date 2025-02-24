// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_cart_oms_options_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AddToCartOmsOptionsDTO _$AddToCartOmsOptionsDTOFromJson(
  Map<String, dynamic> json,
) {
  return _AddToCartOmsOptionsDTO.fromJson(json);
}

/// @nodoc
mixin _$AddToCartOmsOptionsDTO {
  @JsonKey(name: 'oms_cid')
  String get omsCid => throw _privateConstructorUsedError;
  @JsonKey(name: 'oms_code')
  String get omsCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'oms_notes', defaultValue: "")
  String? get omsNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'oms_shipping_method')
  String get omsShippingMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'oms_store_name')
  String? get omsStoreName => throw _privateConstructorUsedError;

  /// Serializes this AddToCartOmsOptionsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddToCartOmsOptionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddToCartOmsOptionsDTOCopyWith<AddToCartOmsOptionsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToCartOmsOptionsDTOCopyWith<$Res> {
  factory $AddToCartOmsOptionsDTOCopyWith(
    AddToCartOmsOptionsDTO value,
    $Res Function(AddToCartOmsOptionsDTO) then,
  ) = _$AddToCartOmsOptionsDTOCopyWithImpl<$Res, AddToCartOmsOptionsDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'oms_cid') String omsCid,
    @JsonKey(name: 'oms_code') String omsCode,
    @JsonKey(name: 'oms_notes', defaultValue: "") String? omsNotes,
    @JsonKey(name: 'oms_shipping_method') String omsShippingMethod,
    @JsonKey(name: 'oms_store_name') String? omsStoreName,
  });
}

/// @nodoc
class _$AddToCartOmsOptionsDTOCopyWithImpl<
  $Res,
  $Val extends AddToCartOmsOptionsDTO
>
    implements $AddToCartOmsOptionsDTOCopyWith<$Res> {
  _$AddToCartOmsOptionsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddToCartOmsOptionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? omsCid = null,
    Object? omsCode = null,
    Object? omsNotes = freezed,
    Object? omsShippingMethod = null,
    Object? omsStoreName = freezed,
  }) {
    return _then(
      _value.copyWith(
            omsCid:
                null == omsCid
                    ? _value.omsCid
                    : omsCid // ignore: cast_nullable_to_non_nullable
                        as String,
            omsCode:
                null == omsCode
                    ? _value.omsCode
                    : omsCode // ignore: cast_nullable_to_non_nullable
                        as String,
            omsNotes:
                freezed == omsNotes
                    ? _value.omsNotes
                    : omsNotes // ignore: cast_nullable_to_non_nullable
                        as String?,
            omsShippingMethod:
                null == omsShippingMethod
                    ? _value.omsShippingMethod
                    : omsShippingMethod // ignore: cast_nullable_to_non_nullable
                        as String,
            omsStoreName:
                freezed == omsStoreName
                    ? _value.omsStoreName
                    : omsStoreName // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddToCartOmsOptionsDTOImplCopyWith<$Res>
    implements $AddToCartOmsOptionsDTOCopyWith<$Res> {
  factory _$$AddToCartOmsOptionsDTOImplCopyWith(
    _$AddToCartOmsOptionsDTOImpl value,
    $Res Function(_$AddToCartOmsOptionsDTOImpl) then,
  ) = __$$AddToCartOmsOptionsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'oms_cid') String omsCid,
    @JsonKey(name: 'oms_code') String omsCode,
    @JsonKey(name: 'oms_notes', defaultValue: "") String? omsNotes,
    @JsonKey(name: 'oms_shipping_method') String omsShippingMethod,
    @JsonKey(name: 'oms_store_name') String? omsStoreName,
  });
}

/// @nodoc
class __$$AddToCartOmsOptionsDTOImplCopyWithImpl<$Res>
    extends
        _$AddToCartOmsOptionsDTOCopyWithImpl<$Res, _$AddToCartOmsOptionsDTOImpl>
    implements _$$AddToCartOmsOptionsDTOImplCopyWith<$Res> {
  __$$AddToCartOmsOptionsDTOImplCopyWithImpl(
    _$AddToCartOmsOptionsDTOImpl _value,
    $Res Function(_$AddToCartOmsOptionsDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddToCartOmsOptionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? omsCid = null,
    Object? omsCode = null,
    Object? omsNotes = freezed,
    Object? omsShippingMethod = null,
    Object? omsStoreName = freezed,
  }) {
    return _then(
      _$AddToCartOmsOptionsDTOImpl(
        omsCid:
            null == omsCid
                ? _value.omsCid
                : omsCid // ignore: cast_nullable_to_non_nullable
                    as String,
        omsCode:
            null == omsCode
                ? _value.omsCode
                : omsCode // ignore: cast_nullable_to_non_nullable
                    as String,
        omsNotes:
            freezed == omsNotes
                ? _value.omsNotes
                : omsNotes // ignore: cast_nullable_to_non_nullable
                    as String?,
        omsShippingMethod:
            null == omsShippingMethod
                ? _value.omsShippingMethod
                : omsShippingMethod // ignore: cast_nullable_to_non_nullable
                    as String,
        omsStoreName:
            freezed == omsStoreName
                ? _value.omsStoreName
                : omsStoreName // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddToCartOmsOptionsDTOImpl implements _AddToCartOmsOptionsDTO {
  const _$AddToCartOmsOptionsDTOImpl({
    @JsonKey(name: 'oms_cid') required this.omsCid,
    @JsonKey(name: 'oms_code') required this.omsCode,
    @JsonKey(name: 'oms_notes', defaultValue: "") this.omsNotes,
    @JsonKey(name: 'oms_shipping_method') required this.omsShippingMethod,
    @JsonKey(name: 'oms_store_name') this.omsStoreName,
  });

  factory _$AddToCartOmsOptionsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddToCartOmsOptionsDTOImplFromJson(json);

  @override
  @JsonKey(name: 'oms_cid')
  final String omsCid;
  @override
  @JsonKey(name: 'oms_code')
  final String omsCode;
  @override
  @JsonKey(name: 'oms_notes', defaultValue: "")
  final String? omsNotes;
  @override
  @JsonKey(name: 'oms_shipping_method')
  final String omsShippingMethod;
  @override
  @JsonKey(name: 'oms_store_name')
  final String? omsStoreName;

  @override
  String toString() {
    return 'AddToCartOmsOptionsDTO(omsCid: $omsCid, omsCode: $omsCode, omsNotes: $omsNotes, omsShippingMethod: $omsShippingMethod, omsStoreName: $omsStoreName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartOmsOptionsDTOImpl &&
            (identical(other.omsCid, omsCid) || other.omsCid == omsCid) &&
            (identical(other.omsCode, omsCode) || other.omsCode == omsCode) &&
            (identical(other.omsNotes, omsNotes) ||
                other.omsNotes == omsNotes) &&
            (identical(other.omsShippingMethod, omsShippingMethod) ||
                other.omsShippingMethod == omsShippingMethod) &&
            (identical(other.omsStoreName, omsStoreName) ||
                other.omsStoreName == omsStoreName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    omsCid,
    omsCode,
    omsNotes,
    omsShippingMethod,
    omsStoreName,
  );

  /// Create a copy of AddToCartOmsOptionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartOmsOptionsDTOImplCopyWith<_$AddToCartOmsOptionsDTOImpl>
  get copyWith =>
      __$$AddToCartOmsOptionsDTOImplCopyWithImpl<_$AddToCartOmsOptionsDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AddToCartOmsOptionsDTOImplToJson(this);
  }
}

abstract class _AddToCartOmsOptionsDTO implements AddToCartOmsOptionsDTO {
  const factory _AddToCartOmsOptionsDTO({
    @JsonKey(name: 'oms_cid') required final String omsCid,
    @JsonKey(name: 'oms_code') required final String omsCode,
    @JsonKey(name: 'oms_notes', defaultValue: "") final String? omsNotes,
    @JsonKey(name: 'oms_shipping_method')
    required final String omsShippingMethod,
    @JsonKey(name: 'oms_store_name') final String? omsStoreName,
  }) = _$AddToCartOmsOptionsDTOImpl;

  factory _AddToCartOmsOptionsDTO.fromJson(Map<String, dynamic> json) =
      _$AddToCartOmsOptionsDTOImpl.fromJson;

  @override
  @JsonKey(name: 'oms_cid')
  String get omsCid;
  @override
  @JsonKey(name: 'oms_code')
  String get omsCode;
  @override
  @JsonKey(name: 'oms_notes', defaultValue: "")
  String? get omsNotes;
  @override
  @JsonKey(name: 'oms_shipping_method')
  String get omsShippingMethod;
  @override
  @JsonKey(name: 'oms_store_name')
  String? get omsStoreName;

  /// Create a copy of AddToCartOmsOptionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToCartOmsOptionsDTOImplCopyWith<_$AddToCartOmsOptionsDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
