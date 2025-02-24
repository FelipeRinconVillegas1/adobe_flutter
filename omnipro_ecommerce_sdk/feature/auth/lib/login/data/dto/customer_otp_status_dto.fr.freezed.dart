// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_otp_status_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerOtpStatusDTO _$CustomerOtpStatusDTOFromJson(Map<String, dynamic> json) {
  return _CustomerOtpStatusDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerOtpStatusDTO {
  bool get status => throw _privateConstructorUsedError;

  /// Serializes this CustomerOtpStatusDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerOtpStatusDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerOtpStatusDTOCopyWith<CustomerOtpStatusDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerOtpStatusDTOCopyWith<$Res> {
  factory $CustomerOtpStatusDTOCopyWith(CustomerOtpStatusDTO value,
          $Res Function(CustomerOtpStatusDTO) then) =
      _$CustomerOtpStatusDTOCopyWithImpl<$Res, CustomerOtpStatusDTO>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class _$CustomerOtpStatusDTOCopyWithImpl<$Res,
        $Val extends CustomerOtpStatusDTO>
    implements $CustomerOtpStatusDTOCopyWith<$Res> {
  _$CustomerOtpStatusDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerOtpStatusDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerOtpStatusDTOImplCopyWith<$Res>
    implements $CustomerOtpStatusDTOCopyWith<$Res> {
  factory _$$CustomerOtpStatusDTOImplCopyWith(_$CustomerOtpStatusDTOImpl value,
          $Res Function(_$CustomerOtpStatusDTOImpl) then) =
      __$$CustomerOtpStatusDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$CustomerOtpStatusDTOImplCopyWithImpl<$Res>
    extends _$CustomerOtpStatusDTOCopyWithImpl<$Res, _$CustomerOtpStatusDTOImpl>
    implements _$$CustomerOtpStatusDTOImplCopyWith<$Res> {
  __$$CustomerOtpStatusDTOImplCopyWithImpl(_$CustomerOtpStatusDTOImpl _value,
      $Res Function(_$CustomerOtpStatusDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerOtpStatusDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$CustomerOtpStatusDTOImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerOtpStatusDTOImpl implements _CustomerOtpStatusDTO {
  const _$CustomerOtpStatusDTOImpl({required this.status});

  factory _$CustomerOtpStatusDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerOtpStatusDTOImplFromJson(json);

  @override
  final bool status;

  @override
  String toString() {
    return 'CustomerOtpStatusDTO(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerOtpStatusDTOImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of CustomerOtpStatusDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerOtpStatusDTOImplCopyWith<_$CustomerOtpStatusDTOImpl>
      get copyWith =>
          __$$CustomerOtpStatusDTOImplCopyWithImpl<_$CustomerOtpStatusDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerOtpStatusDTOImplToJson(
      this,
    );
  }
}

abstract class _CustomerOtpStatusDTO implements CustomerOtpStatusDTO {
  const factory _CustomerOtpStatusDTO({required final bool status}) =
      _$CustomerOtpStatusDTOImpl;

  factory _CustomerOtpStatusDTO.fromJson(Map<String, dynamic> json) =
      _$CustomerOtpStatusDTOImpl.fromJson;

  @override
  bool get status;

  /// Create a copy of CustomerOtpStatusDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerOtpStatusDTOImplCopyWith<_$CustomerOtpStatusDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
