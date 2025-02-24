// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_order_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerOrderDTO _$CustomerOrderDTOFromJson(Map<String, dynamic> json) {
  return _CustomerOrderDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerOrderDTO {
  @JsonKey(name: 'order_number')
  String get orderNumber => throw _privateConstructorUsedError;

  /// Serializes this CustomerOrderDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerOrderDTOCopyWith<CustomerOrderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerOrderDTOCopyWith<$Res> {
  factory $CustomerOrderDTOCopyWith(
          CustomerOrderDTO value, $Res Function(CustomerOrderDTO) then) =
      _$CustomerOrderDTOCopyWithImpl<$Res, CustomerOrderDTO>;
  @useResult
  $Res call({@JsonKey(name: 'order_number') String orderNumber});
}

/// @nodoc
class _$CustomerOrderDTOCopyWithImpl<$Res, $Val extends CustomerOrderDTO>
    implements $CustomerOrderDTOCopyWith<$Res> {
  _$CustomerOrderDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNumber = null,
  }) {
    return _then(_value.copyWith(
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerOrderDTOImplCopyWith<$Res>
    implements $CustomerOrderDTOCopyWith<$Res> {
  factory _$$CustomerOrderDTOImplCopyWith(_$CustomerOrderDTOImpl value,
          $Res Function(_$CustomerOrderDTOImpl) then) =
      __$$CustomerOrderDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'order_number') String orderNumber});
}

/// @nodoc
class __$$CustomerOrderDTOImplCopyWithImpl<$Res>
    extends _$CustomerOrderDTOCopyWithImpl<$Res, _$CustomerOrderDTOImpl>
    implements _$$CustomerOrderDTOImplCopyWith<$Res> {
  __$$CustomerOrderDTOImplCopyWithImpl(_$CustomerOrderDTOImpl _value,
      $Res Function(_$CustomerOrderDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNumber = null,
  }) {
    return _then(_$CustomerOrderDTOImpl(
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerOrderDTOImpl implements _CustomerOrderDTO {
  const _$CustomerOrderDTOImpl(
      {@JsonKey(name: 'order_number') required this.orderNumber});

  factory _$CustomerOrderDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerOrderDTOImplFromJson(json);

  @override
  @JsonKey(name: 'order_number')
  final String orderNumber;

  @override
  String toString() {
    return 'CustomerOrderDTO(orderNumber: $orderNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerOrderDTOImpl &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderNumber);

  /// Create a copy of CustomerOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerOrderDTOImplCopyWith<_$CustomerOrderDTOImpl> get copyWith =>
      __$$CustomerOrderDTOImplCopyWithImpl<_$CustomerOrderDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerOrderDTOImplToJson(
      this,
    );
  }
}

abstract class _CustomerOrderDTO implements CustomerOrderDTO {
  const factory _CustomerOrderDTO(
          {@JsonKey(name: 'order_number') required final String orderNumber}) =
      _$CustomerOrderDTOImpl;

  factory _CustomerOrderDTO.fromJson(Map<String, dynamic> json) =
      _$CustomerOrderDTOImpl.fromJson;

  @override
  @JsonKey(name: 'order_number')
  String get orderNumber;

  /// Create a copy of CustomerOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerOrderDTOImplCopyWith<_$CustomerOrderDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
