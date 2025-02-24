// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_loyalty_wallet_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CardLoyaltyWalletDTO _$CardLoyaltyWalletDTOFromJson(Map<String, dynamic> json) {
  return _CardLoyaltyWalletDTO.fromJson(json);
}

/// @nodoc
mixin _$CardLoyaltyWalletDTO {
  String get card => throw _privateConstructorUsedError;

  /// Serializes this CardLoyaltyWalletDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CardLoyaltyWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardLoyaltyWalletDTOCopyWith<CardLoyaltyWalletDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardLoyaltyWalletDTOCopyWith<$Res> {
  factory $CardLoyaltyWalletDTOCopyWith(
    CardLoyaltyWalletDTO value,
    $Res Function(CardLoyaltyWalletDTO) then,
  ) = _$CardLoyaltyWalletDTOCopyWithImpl<$Res, CardLoyaltyWalletDTO>;
  @useResult
  $Res call({String card});
}

/// @nodoc
class _$CardLoyaltyWalletDTOCopyWithImpl<
  $Res,
  $Val extends CardLoyaltyWalletDTO
>
    implements $CardLoyaltyWalletDTOCopyWith<$Res> {
  _$CardLoyaltyWalletDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardLoyaltyWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? card = null}) {
    return _then(
      _value.copyWith(
            card:
                null == card
                    ? _value.card
                    : card // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CardLoyaltyWalletDTOImplCopyWith<$Res>
    implements $CardLoyaltyWalletDTOCopyWith<$Res> {
  factory _$$CardLoyaltyWalletDTOImplCopyWith(
    _$CardLoyaltyWalletDTOImpl value,
    $Res Function(_$CardLoyaltyWalletDTOImpl) then,
  ) = __$$CardLoyaltyWalletDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String card});
}

/// @nodoc
class __$$CardLoyaltyWalletDTOImplCopyWithImpl<$Res>
    extends _$CardLoyaltyWalletDTOCopyWithImpl<$Res, _$CardLoyaltyWalletDTOImpl>
    implements _$$CardLoyaltyWalletDTOImplCopyWith<$Res> {
  __$$CardLoyaltyWalletDTOImplCopyWithImpl(
    _$CardLoyaltyWalletDTOImpl _value,
    $Res Function(_$CardLoyaltyWalletDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CardLoyaltyWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? card = null}) {
    return _then(
      _$CardLoyaltyWalletDTOImpl(
        card:
            null == card
                ? _value.card
                : card // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CardLoyaltyWalletDTOImpl implements _CardLoyaltyWalletDTO {
  const _$CardLoyaltyWalletDTOImpl({required this.card});

  factory _$CardLoyaltyWalletDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardLoyaltyWalletDTOImplFromJson(json);

  @override
  final String card;

  @override
  String toString() {
    return 'CardLoyaltyWalletDTO(card: $card)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardLoyaltyWalletDTOImpl &&
            (identical(other.card, card) || other.card == card));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, card);

  /// Create a copy of CardLoyaltyWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardLoyaltyWalletDTOImplCopyWith<_$CardLoyaltyWalletDTOImpl>
  get copyWith =>
      __$$CardLoyaltyWalletDTOImplCopyWithImpl<_$CardLoyaltyWalletDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CardLoyaltyWalletDTOImplToJson(this);
  }
}

abstract class _CardLoyaltyWalletDTO implements CardLoyaltyWalletDTO {
  const factory _CardLoyaltyWalletDTO({required final String card}) =
      _$CardLoyaltyWalletDTOImpl;

  factory _CardLoyaltyWalletDTO.fromJson(Map<String, dynamic> json) =
      _$CardLoyaltyWalletDTOImpl.fromJson;

  @override
  String get card;

  /// Create a copy of CardLoyaltyWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardLoyaltyWalletDTOImplCopyWith<_$CardLoyaltyWalletDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
