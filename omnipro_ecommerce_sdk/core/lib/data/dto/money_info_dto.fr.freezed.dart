// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'money_info_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MoneyInfoDTO _$MoneyInfoDTOFromJson(Map<String, dynamic> json) {
  return _MoneyInfoDTO.fromJson(json);
}

/// @nodoc
mixin _$MoneyInfoDTO {
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  MoneyDTO get moneyDTO => throw _privateConstructorUsedError;

  /// Serializes this MoneyInfoDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MoneyInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoneyInfoDTOCopyWith<MoneyInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyInfoDTOCopyWith<$Res> {
  factory $MoneyInfoDTOCopyWith(
    MoneyInfoDTO value,
    $Res Function(MoneyInfoDTO) then,
  ) = _$MoneyInfoDTOCopyWithImpl<$Res, MoneyInfoDTO>;
  @useResult
  $Res call({String label, @JsonKey(name: 'amount') MoneyDTO moneyDTO});

  $MoneyDTOCopyWith<$Res> get moneyDTO;
}

/// @nodoc
class _$MoneyInfoDTOCopyWithImpl<$Res, $Val extends MoneyInfoDTO>
    implements $MoneyInfoDTOCopyWith<$Res> {
  _$MoneyInfoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoneyInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = null, Object? moneyDTO = null}) {
    return _then(
      _value.copyWith(
            label:
                null == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as String,
            moneyDTO:
                null == moneyDTO
                    ? _value.moneyDTO
                    : moneyDTO // ignore: cast_nullable_to_non_nullable
                        as MoneyDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of MoneyInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyDTOCopyWith<$Res> get moneyDTO {
    return $MoneyDTOCopyWith<$Res>(_value.moneyDTO, (value) {
      return _then(_value.copyWith(moneyDTO: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MoneyInfoDTOImplCopyWith<$Res>
    implements $MoneyInfoDTOCopyWith<$Res> {
  factory _$$MoneyInfoDTOImplCopyWith(
    _$MoneyInfoDTOImpl value,
    $Res Function(_$MoneyInfoDTOImpl) then,
  ) = __$$MoneyInfoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, @JsonKey(name: 'amount') MoneyDTO moneyDTO});

  @override
  $MoneyDTOCopyWith<$Res> get moneyDTO;
}

/// @nodoc
class __$$MoneyInfoDTOImplCopyWithImpl<$Res>
    extends _$MoneyInfoDTOCopyWithImpl<$Res, _$MoneyInfoDTOImpl>
    implements _$$MoneyInfoDTOImplCopyWith<$Res> {
  __$$MoneyInfoDTOImplCopyWithImpl(
    _$MoneyInfoDTOImpl _value,
    $Res Function(_$MoneyInfoDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MoneyInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = null, Object? moneyDTO = null}) {
    return _then(
      _$MoneyInfoDTOImpl(
        label:
            null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String,
        moneyDTO:
            null == moneyDTO
                ? _value.moneyDTO
                : moneyDTO // ignore: cast_nullable_to_non_nullable
                    as MoneyDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MoneyInfoDTOImpl implements _MoneyInfoDTO {
  const _$MoneyInfoDTOImpl({
    required this.label,
    @JsonKey(name: 'amount') required this.moneyDTO,
  });

  factory _$MoneyInfoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoneyInfoDTOImplFromJson(json);

  @override
  final String label;
  @override
  @JsonKey(name: 'amount')
  final MoneyDTO moneyDTO;

  @override
  String toString() {
    return 'MoneyInfoDTO(label: $label, moneyDTO: $moneyDTO)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoneyInfoDTOImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.moneyDTO, moneyDTO) ||
                other.moneyDTO == moneyDTO));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, moneyDTO);

  /// Create a copy of MoneyInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoneyInfoDTOImplCopyWith<_$MoneyInfoDTOImpl> get copyWith =>
      __$$MoneyInfoDTOImplCopyWithImpl<_$MoneyInfoDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoneyInfoDTOImplToJson(this);
  }
}

abstract class _MoneyInfoDTO implements MoneyInfoDTO {
  const factory _MoneyInfoDTO({
    required final String label,
    @JsonKey(name: 'amount') required final MoneyDTO moneyDTO,
  }) = _$MoneyInfoDTOImpl;

  factory _MoneyInfoDTO.fromJson(Map<String, dynamic> json) =
      _$MoneyInfoDTOImpl.fromJson;

  @override
  String get label;
  @override
  @JsonKey(name: 'amount')
  MoneyDTO get moneyDTO;

  /// Create a copy of MoneyInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoneyInfoDTOImplCopyWith<_$MoneyInfoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
