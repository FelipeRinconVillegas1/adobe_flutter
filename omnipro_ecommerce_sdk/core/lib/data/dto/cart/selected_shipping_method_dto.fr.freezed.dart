// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_shipping_method_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SelectedShippingMethodDTO _$SelectedShippingMethodDTOFromJson(
  Map<String, dynamic> json,
) {
  return _SelectedShippingMethodDTO.fromJson(json);
}

/// @nodoc
mixin _$SelectedShippingMethodDTO {
  @JsonKey(name: 'carrier_code')
  String get carrierCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'carrier_title')
  String get carrierTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'method_code')
  String get methodCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'method_title')
  String get methodTitle => throw _privateConstructorUsedError;
  MoneyDTO get amount => throw _privateConstructorUsedError;

  /// Serializes this SelectedShippingMethodDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SelectedShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectedShippingMethodDTOCopyWith<SelectedShippingMethodDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedShippingMethodDTOCopyWith<$Res> {
  factory $SelectedShippingMethodDTOCopyWith(
    SelectedShippingMethodDTO value,
    $Res Function(SelectedShippingMethodDTO) then,
  ) = _$SelectedShippingMethodDTOCopyWithImpl<$Res, SelectedShippingMethodDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'carrier_code') String carrierCode,
    @JsonKey(name: 'carrier_title') String carrierTitle,
    @JsonKey(name: 'method_code') String methodCode,
    @JsonKey(name: 'method_title') String methodTitle,
    MoneyDTO amount,
  });

  $MoneyDTOCopyWith<$Res> get amount;
}

/// @nodoc
class _$SelectedShippingMethodDTOCopyWithImpl<
  $Res,
  $Val extends SelectedShippingMethodDTO
>
    implements $SelectedShippingMethodDTOCopyWith<$Res> {
  _$SelectedShippingMethodDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carrierCode = null,
    Object? carrierTitle = null,
    Object? methodCode = null,
    Object? methodTitle = null,
    Object? amount = null,
  }) {
    return _then(
      _value.copyWith(
            carrierCode:
                null == carrierCode
                    ? _value.carrierCode
                    : carrierCode // ignore: cast_nullable_to_non_nullable
                        as String,
            carrierTitle:
                null == carrierTitle
                    ? _value.carrierTitle
                    : carrierTitle // ignore: cast_nullable_to_non_nullable
                        as String,
            methodCode:
                null == methodCode
                    ? _value.methodCode
                    : methodCode // ignore: cast_nullable_to_non_nullable
                        as String,
            methodTitle:
                null == methodTitle
                    ? _value.methodTitle
                    : methodTitle // ignore: cast_nullable_to_non_nullable
                        as String,
            amount:
                null == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as MoneyDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of SelectedShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyDTOCopyWith<$Res> get amount {
    return $MoneyDTOCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SelectedShippingMethodDTOImplCopyWith<$Res>
    implements $SelectedShippingMethodDTOCopyWith<$Res> {
  factory _$$SelectedShippingMethodDTOImplCopyWith(
    _$SelectedShippingMethodDTOImpl value,
    $Res Function(_$SelectedShippingMethodDTOImpl) then,
  ) = __$$SelectedShippingMethodDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'carrier_code') String carrierCode,
    @JsonKey(name: 'carrier_title') String carrierTitle,
    @JsonKey(name: 'method_code') String methodCode,
    @JsonKey(name: 'method_title') String methodTitle,
    MoneyDTO amount,
  });

  @override
  $MoneyDTOCopyWith<$Res> get amount;
}

/// @nodoc
class __$$SelectedShippingMethodDTOImplCopyWithImpl<$Res>
    extends
        _$SelectedShippingMethodDTOCopyWithImpl<
          $Res,
          _$SelectedShippingMethodDTOImpl
        >
    implements _$$SelectedShippingMethodDTOImplCopyWith<$Res> {
  __$$SelectedShippingMethodDTOImplCopyWithImpl(
    _$SelectedShippingMethodDTOImpl _value,
    $Res Function(_$SelectedShippingMethodDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SelectedShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carrierCode = null,
    Object? carrierTitle = null,
    Object? methodCode = null,
    Object? methodTitle = null,
    Object? amount = null,
  }) {
    return _then(
      _$SelectedShippingMethodDTOImpl(
        carrierCode:
            null == carrierCode
                ? _value.carrierCode
                : carrierCode // ignore: cast_nullable_to_non_nullable
                    as String,
        carrierTitle:
            null == carrierTitle
                ? _value.carrierTitle
                : carrierTitle // ignore: cast_nullable_to_non_nullable
                    as String,
        methodCode:
            null == methodCode
                ? _value.methodCode
                : methodCode // ignore: cast_nullable_to_non_nullable
                    as String,
        methodTitle:
            null == methodTitle
                ? _value.methodTitle
                : methodTitle // ignore: cast_nullable_to_non_nullable
                    as String,
        amount:
            null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as MoneyDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectedShippingMethodDTOImpl implements _SelectedShippingMethodDTO {
  const _$SelectedShippingMethodDTOImpl({
    @JsonKey(name: 'carrier_code') required this.carrierCode,
    @JsonKey(name: 'carrier_title') required this.carrierTitle,
    @JsonKey(name: 'method_code') required this.methodCode,
    @JsonKey(name: 'method_title') required this.methodTitle,
    required this.amount,
  });

  factory _$SelectedShippingMethodDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectedShippingMethodDTOImplFromJson(json);

  @override
  @JsonKey(name: 'carrier_code')
  final String carrierCode;
  @override
  @JsonKey(name: 'carrier_title')
  final String carrierTitle;
  @override
  @JsonKey(name: 'method_code')
  final String methodCode;
  @override
  @JsonKey(name: 'method_title')
  final String methodTitle;
  @override
  final MoneyDTO amount;

  @override
  String toString() {
    return 'SelectedShippingMethodDTO(carrierCode: $carrierCode, carrierTitle: $carrierTitle, methodCode: $methodCode, methodTitle: $methodTitle, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedShippingMethodDTOImpl &&
            (identical(other.carrierCode, carrierCode) ||
                other.carrierCode == carrierCode) &&
            (identical(other.carrierTitle, carrierTitle) ||
                other.carrierTitle == carrierTitle) &&
            (identical(other.methodCode, methodCode) ||
                other.methodCode == methodCode) &&
            (identical(other.methodTitle, methodTitle) ||
                other.methodTitle == methodTitle) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    carrierCode,
    carrierTitle,
    methodCode,
    methodTitle,
    amount,
  );

  /// Create a copy of SelectedShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedShippingMethodDTOImplCopyWith<_$SelectedShippingMethodDTOImpl>
  get copyWith => __$$SelectedShippingMethodDTOImplCopyWithImpl<
    _$SelectedShippingMethodDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedShippingMethodDTOImplToJson(this);
  }
}

abstract class _SelectedShippingMethodDTO implements SelectedShippingMethodDTO {
  const factory _SelectedShippingMethodDTO({
    @JsonKey(name: 'carrier_code') required final String carrierCode,
    @JsonKey(name: 'carrier_title') required final String carrierTitle,
    @JsonKey(name: 'method_code') required final String methodCode,
    @JsonKey(name: 'method_title') required final String methodTitle,
    required final MoneyDTO amount,
  }) = _$SelectedShippingMethodDTOImpl;

  factory _SelectedShippingMethodDTO.fromJson(Map<String, dynamic> json) =
      _$SelectedShippingMethodDTOImpl.fromJson;

  @override
  @JsonKey(name: 'carrier_code')
  String get carrierCode;
  @override
  @JsonKey(name: 'carrier_title')
  String get carrierTitle;
  @override
  @JsonKey(name: 'method_code')
  String get methodCode;
  @override
  @JsonKey(name: 'method_title')
  String get methodTitle;
  @override
  MoneyDTO get amount;

  /// Create a copy of SelectedShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedShippingMethodDTOImplCopyWith<_$SelectedShippingMethodDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
