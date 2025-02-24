// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'money_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MoneyDTO _$MoneyDTOFromJson(Map<String, dynamic> json) {
  return _MoneyDTO.fromJson(json);
}

/// @nodoc
mixin _$MoneyDTO {
  double get value => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  /// Serializes this MoneyDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MoneyDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoneyDTOCopyWith<MoneyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyDTOCopyWith<$Res> {
  factory $MoneyDTOCopyWith(MoneyDTO value, $Res Function(MoneyDTO) then) =
      _$MoneyDTOCopyWithImpl<$Res, MoneyDTO>;
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class _$MoneyDTOCopyWithImpl<$Res, $Val extends MoneyDTO>
    implements $MoneyDTOCopyWith<$Res> {
  _$MoneyDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoneyDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? currency = null}) {
    return _then(
      _value.copyWith(
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as double,
            currency:
                null == currency
                    ? _value.currency
                    : currency // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MoneyDTOImplCopyWith<$Res>
    implements $MoneyDTOCopyWith<$Res> {
  factory _$$MoneyDTOImplCopyWith(
    _$MoneyDTOImpl value,
    $Res Function(_$MoneyDTOImpl) then,
  ) = __$$MoneyDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class __$$MoneyDTOImplCopyWithImpl<$Res>
    extends _$MoneyDTOCopyWithImpl<$Res, _$MoneyDTOImpl>
    implements _$$MoneyDTOImplCopyWith<$Res> {
  __$$MoneyDTOImplCopyWithImpl(
    _$MoneyDTOImpl _value,
    $Res Function(_$MoneyDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MoneyDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? currency = null}) {
    return _then(
      _$MoneyDTOImpl(
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as double,
        currency:
            null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MoneyDTOImpl implements _MoneyDTO {
  const _$MoneyDTOImpl({required this.value, required this.currency});

  factory _$MoneyDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoneyDTOImplFromJson(json);

  @override
  final double value;
  @override
  final String currency;

  @override
  String toString() {
    return 'MoneyDTO(value: $value, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoneyDTOImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, currency);

  /// Create a copy of MoneyDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoneyDTOImplCopyWith<_$MoneyDTOImpl> get copyWith =>
      __$$MoneyDTOImplCopyWithImpl<_$MoneyDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoneyDTOImplToJson(this);
  }
}

abstract class _MoneyDTO implements MoneyDTO {
  const factory _MoneyDTO({
    required final double value,
    required final String currency,
  }) = _$MoneyDTOImpl;

  factory _MoneyDTO.fromJson(Map<String, dynamic> json) =
      _$MoneyDTOImpl.fromJson;

  @override
  double get value;
  @override
  String get currency;

  /// Create a copy of MoneyDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoneyDTOImplCopyWith<_$MoneyDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
