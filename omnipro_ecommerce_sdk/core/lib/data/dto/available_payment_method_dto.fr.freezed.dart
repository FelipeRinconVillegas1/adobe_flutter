// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_payment_method_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AvailablePaymentMethodDTO _$AvailablePaymentMethodDTOFromJson(
  Map<String, dynamic> json,
) {
  return _AvailablePaymentMethodDTO.fromJson(json);
}

/// @nodoc
mixin _$AvailablePaymentMethodDTO {
  String get code => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this AvailablePaymentMethodDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailablePaymentMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailablePaymentMethodDTOCopyWith<AvailablePaymentMethodDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailablePaymentMethodDTOCopyWith<$Res> {
  factory $AvailablePaymentMethodDTOCopyWith(
    AvailablePaymentMethodDTO value,
    $Res Function(AvailablePaymentMethodDTO) then,
  ) = _$AvailablePaymentMethodDTOCopyWithImpl<$Res, AvailablePaymentMethodDTO>;
  @useResult
  $Res call({String code, String title});
}

/// @nodoc
class _$AvailablePaymentMethodDTOCopyWithImpl<
  $Res,
  $Val extends AvailablePaymentMethodDTO
>
    implements $AvailablePaymentMethodDTOCopyWith<$Res> {
  _$AvailablePaymentMethodDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailablePaymentMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? title = null}) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AvailablePaymentMethodDTOImplCopyWith<$Res>
    implements $AvailablePaymentMethodDTOCopyWith<$Res> {
  factory _$$AvailablePaymentMethodDTOImplCopyWith(
    _$AvailablePaymentMethodDTOImpl value,
    $Res Function(_$AvailablePaymentMethodDTOImpl) then,
  ) = __$$AvailablePaymentMethodDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String title});
}

/// @nodoc
class __$$AvailablePaymentMethodDTOImplCopyWithImpl<$Res>
    extends
        _$AvailablePaymentMethodDTOCopyWithImpl<
          $Res,
          _$AvailablePaymentMethodDTOImpl
        >
    implements _$$AvailablePaymentMethodDTOImplCopyWith<$Res> {
  __$$AvailablePaymentMethodDTOImplCopyWithImpl(
    _$AvailablePaymentMethodDTOImpl _value,
    $Res Function(_$AvailablePaymentMethodDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AvailablePaymentMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? title = null}) {
    return _then(
      _$AvailablePaymentMethodDTOImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailablePaymentMethodDTOImpl implements _AvailablePaymentMethodDTO {
  const _$AvailablePaymentMethodDTOImpl({
    required this.code,
    required this.title,
  });

  factory _$AvailablePaymentMethodDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailablePaymentMethodDTOImplFromJson(json);

  @override
  final String code;
  @override
  final String title;

  @override
  String toString() {
    return 'AvailablePaymentMethodDTO(code: $code, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailablePaymentMethodDTOImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, title);

  /// Create a copy of AvailablePaymentMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailablePaymentMethodDTOImplCopyWith<_$AvailablePaymentMethodDTOImpl>
  get copyWith => __$$AvailablePaymentMethodDTOImplCopyWithImpl<
    _$AvailablePaymentMethodDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailablePaymentMethodDTOImplToJson(this);
  }
}

abstract class _AvailablePaymentMethodDTO implements AvailablePaymentMethodDTO {
  const factory _AvailablePaymentMethodDTO({
    required final String code,
    required final String title,
  }) = _$AvailablePaymentMethodDTOImpl;

  factory _AvailablePaymentMethodDTO.fromJson(Map<String, dynamic> json) =
      _$AvailablePaymentMethodDTOImpl.fromJson;

  @override
  String get code;
  @override
  String get title;

  /// Create a copy of AvailablePaymentMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailablePaymentMethodDTOImplCopyWith<_$AvailablePaymentMethodDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
