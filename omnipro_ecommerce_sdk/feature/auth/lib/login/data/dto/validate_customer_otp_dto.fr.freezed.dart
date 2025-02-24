// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_customer_otp_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidateCustomerOtpDTO _$ValidateCustomerOtpDTOFromJson(
    Map<String, dynamic> json) {
  return _ValidateCustomerOtpDTO.fromJson(json);
}

/// @nodoc
mixin _$ValidateCustomerOtpDTO {
  @JsonValue('customer')
  CustomerDTO? get customer => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  /// Serializes this ValidateCustomerOtpDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidateCustomerOtpDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidateCustomerOtpDTOCopyWith<ValidateCustomerOtpDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateCustomerOtpDTOCopyWith<$Res> {
  factory $ValidateCustomerOtpDTOCopyWith(ValidateCustomerOtpDTO value,
          $Res Function(ValidateCustomerOtpDTO) then) =
      _$ValidateCustomerOtpDTOCopyWithImpl<$Res, ValidateCustomerOtpDTO>;
  @useResult
  $Res call(
      {@JsonValue('customer') CustomerDTO? customer,
      bool status,
      String? token});

  $CustomerDTOCopyWith<$Res>? get customer;
}

/// @nodoc
class _$ValidateCustomerOtpDTOCopyWithImpl<$Res,
        $Val extends ValidateCustomerOtpDTO>
    implements $ValidateCustomerOtpDTOCopyWith<$Res> {
  _$ValidateCustomerOtpDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidateCustomerOtpDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = freezed,
    Object? status = null,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerDTO?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ValidateCustomerOtpDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerDTOCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerDTOCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ValidateCustomerOtpDTOImplCopyWith<$Res>
    implements $ValidateCustomerOtpDTOCopyWith<$Res> {
  factory _$$ValidateCustomerOtpDTOImplCopyWith(
          _$ValidateCustomerOtpDTOImpl value,
          $Res Function(_$ValidateCustomerOtpDTOImpl) then) =
      __$$ValidateCustomerOtpDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonValue('customer') CustomerDTO? customer,
      bool status,
      String? token});

  @override
  $CustomerDTOCopyWith<$Res>? get customer;
}

/// @nodoc
class __$$ValidateCustomerOtpDTOImplCopyWithImpl<$Res>
    extends _$ValidateCustomerOtpDTOCopyWithImpl<$Res,
        _$ValidateCustomerOtpDTOImpl>
    implements _$$ValidateCustomerOtpDTOImplCopyWith<$Res> {
  __$$ValidateCustomerOtpDTOImplCopyWithImpl(
      _$ValidateCustomerOtpDTOImpl _value,
      $Res Function(_$ValidateCustomerOtpDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidateCustomerOtpDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = freezed,
    Object? status = null,
    Object? token = freezed,
  }) {
    return _then(_$ValidateCustomerOtpDTOImpl(
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerDTO?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ValidateCustomerOtpDTOImpl implements _ValidateCustomerOtpDTO {
  const _$ValidateCustomerOtpDTOImpl(
      {@JsonValue('customer') required this.customer,
      required this.status,
      required this.token});

  factory _$ValidateCustomerOtpDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateCustomerOtpDTOImplFromJson(json);

  @override
  @JsonValue('customer')
  final CustomerDTO? customer;
  @override
  final bool status;
  @override
  final String? token;

  @override
  String toString() {
    return 'ValidateCustomerOtpDTO(customer: $customer, status: $status, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateCustomerOtpDTOImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customer, status, token);

  /// Create a copy of ValidateCustomerOtpDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateCustomerOtpDTOImplCopyWith<_$ValidateCustomerOtpDTOImpl>
      get copyWith => __$$ValidateCustomerOtpDTOImplCopyWithImpl<
          _$ValidateCustomerOtpDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateCustomerOtpDTOImplToJson(
      this,
    );
  }
}

abstract class _ValidateCustomerOtpDTO implements ValidateCustomerOtpDTO {
  const factory _ValidateCustomerOtpDTO(
      {@JsonValue('customer') required final CustomerDTO? customer,
      required final bool status,
      required final String? token}) = _$ValidateCustomerOtpDTOImpl;

  factory _ValidateCustomerOtpDTO.fromJson(Map<String, dynamic> json) =
      _$ValidateCustomerOtpDTOImpl.fromJson;

  @override
  @JsonValue('customer')
  CustomerDTO? get customer;
  @override
  bool get status;
  @override
  String? get token;

  /// Create a copy of ValidateCustomerOtpDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidateCustomerOtpDTOImplCopyWith<_$ValidateCustomerOtpDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
