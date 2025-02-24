// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_loyalty_wallet_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BalanceLoyaltyWalletDTO _$BalanceLoyaltyWalletDTOFromJson(
  Map<String, dynamic> json,
) {
  return _BalanceLoyaltyWalletDTO.fromJson(json);
}

/// @nodoc
mixin _$BalanceLoyaltyWalletDTO {
  String get balance => throw _privateConstructorUsedError;

  /// Serializes this BalanceLoyaltyWalletDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BalanceLoyaltyWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BalanceLoyaltyWalletDTOCopyWith<BalanceLoyaltyWalletDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceLoyaltyWalletDTOCopyWith<$Res> {
  factory $BalanceLoyaltyWalletDTOCopyWith(
    BalanceLoyaltyWalletDTO value,
    $Res Function(BalanceLoyaltyWalletDTO) then,
  ) = _$BalanceLoyaltyWalletDTOCopyWithImpl<$Res, BalanceLoyaltyWalletDTO>;
  @useResult
  $Res call({String balance});
}

/// @nodoc
class _$BalanceLoyaltyWalletDTOCopyWithImpl<
  $Res,
  $Val extends BalanceLoyaltyWalletDTO
>
    implements $BalanceLoyaltyWalletDTOCopyWith<$Res> {
  _$BalanceLoyaltyWalletDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BalanceLoyaltyWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? balance = null}) {
    return _then(
      _value.copyWith(
            balance:
                null == balance
                    ? _value.balance
                    : balance // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BalanceLoyaltyWalletDTOImplCopyWith<$Res>
    implements $BalanceLoyaltyWalletDTOCopyWith<$Res> {
  factory _$$BalanceLoyaltyWalletDTOImplCopyWith(
    _$BalanceLoyaltyWalletDTOImpl value,
    $Res Function(_$BalanceLoyaltyWalletDTOImpl) then,
  ) = __$$BalanceLoyaltyWalletDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String balance});
}

/// @nodoc
class __$$BalanceLoyaltyWalletDTOImplCopyWithImpl<$Res>
    extends
        _$BalanceLoyaltyWalletDTOCopyWithImpl<
          $Res,
          _$BalanceLoyaltyWalletDTOImpl
        >
    implements _$$BalanceLoyaltyWalletDTOImplCopyWith<$Res> {
  __$$BalanceLoyaltyWalletDTOImplCopyWithImpl(
    _$BalanceLoyaltyWalletDTOImpl _value,
    $Res Function(_$BalanceLoyaltyWalletDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BalanceLoyaltyWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? balance = null}) {
    return _then(
      _$BalanceLoyaltyWalletDTOImpl(
        balance:
            null == balance
                ? _value.balance
                : balance // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BalanceLoyaltyWalletDTOImpl implements _BalanceLoyaltyWalletDTO {
  const _$BalanceLoyaltyWalletDTOImpl({required this.balance});

  factory _$BalanceLoyaltyWalletDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BalanceLoyaltyWalletDTOImplFromJson(json);

  @override
  final String balance;

  @override
  String toString() {
    return 'BalanceLoyaltyWalletDTO(balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BalanceLoyaltyWalletDTOImpl &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, balance);

  /// Create a copy of BalanceLoyaltyWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BalanceLoyaltyWalletDTOImplCopyWith<_$BalanceLoyaltyWalletDTOImpl>
  get copyWith => __$$BalanceLoyaltyWalletDTOImplCopyWithImpl<
    _$BalanceLoyaltyWalletDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BalanceLoyaltyWalletDTOImplToJson(this);
  }
}

abstract class _BalanceLoyaltyWalletDTO implements BalanceLoyaltyWalletDTO {
  const factory _BalanceLoyaltyWalletDTO({required final String balance}) =
      _$BalanceLoyaltyWalletDTOImpl;

  factory _BalanceLoyaltyWalletDTO.fromJson(Map<String, dynamic> json) =
      _$BalanceLoyaltyWalletDTOImpl.fromJson;

  @override
  String get balance;

  /// Create a copy of BalanceLoyaltyWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BalanceLoyaltyWalletDTOImplCopyWith<_$BalanceLoyaltyWalletDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
