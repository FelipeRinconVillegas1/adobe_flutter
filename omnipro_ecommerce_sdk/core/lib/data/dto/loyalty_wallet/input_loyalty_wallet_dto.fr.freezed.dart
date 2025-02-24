// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_loyalty_wallet_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

InputLoyaltyWalletDTO _$InputLoyaltyWalletDTOFromJson(
  Map<String, dynamic> json,
) {
  return _InputLoyaltyWalletDTO.fromJson(json);
}

/// @nodoc
mixin _$InputLoyaltyWalletDTO {
  @JsonKey(name: 'card_name')
  String get cardName => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_last_name')
  String get cardLastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_birth_date')
  String get cardBirthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_email')
  String get cardEmail => throw _privateConstructorUsedError;

  /// Serializes this InputLoyaltyWalletDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputLoyaltyWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputLoyaltyWalletDTOCopyWith<InputLoyaltyWalletDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputLoyaltyWalletDTOCopyWith<$Res> {
  factory $InputLoyaltyWalletDTOCopyWith(
    InputLoyaltyWalletDTO value,
    $Res Function(InputLoyaltyWalletDTO) then,
  ) = _$InputLoyaltyWalletDTOCopyWithImpl<$Res, InputLoyaltyWalletDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'card_name') String cardName,
    @JsonKey(name: 'card_last_name') String cardLastName,
    @JsonKey(name: 'card_birth_date') String cardBirthDate,
    @JsonKey(name: 'card_email') String cardEmail,
  });
}

/// @nodoc
class _$InputLoyaltyWalletDTOCopyWithImpl<
  $Res,
  $Val extends InputLoyaltyWalletDTO
>
    implements $InputLoyaltyWalletDTOCopyWith<$Res> {
  _$InputLoyaltyWalletDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputLoyaltyWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardName = null,
    Object? cardLastName = null,
    Object? cardBirthDate = null,
    Object? cardEmail = null,
  }) {
    return _then(
      _value.copyWith(
            cardName:
                null == cardName
                    ? _value.cardName
                    : cardName // ignore: cast_nullable_to_non_nullable
                        as String,
            cardLastName:
                null == cardLastName
                    ? _value.cardLastName
                    : cardLastName // ignore: cast_nullable_to_non_nullable
                        as String,
            cardBirthDate:
                null == cardBirthDate
                    ? _value.cardBirthDate
                    : cardBirthDate // ignore: cast_nullable_to_non_nullable
                        as String,
            cardEmail:
                null == cardEmail
                    ? _value.cardEmail
                    : cardEmail // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InputLoyaltyWalletDTOImplCopyWith<$Res>
    implements $InputLoyaltyWalletDTOCopyWith<$Res> {
  factory _$$InputLoyaltyWalletDTOImplCopyWith(
    _$InputLoyaltyWalletDTOImpl value,
    $Res Function(_$InputLoyaltyWalletDTOImpl) then,
  ) = __$$InputLoyaltyWalletDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'card_name') String cardName,
    @JsonKey(name: 'card_last_name') String cardLastName,
    @JsonKey(name: 'card_birth_date') String cardBirthDate,
    @JsonKey(name: 'card_email') String cardEmail,
  });
}

/// @nodoc
class __$$InputLoyaltyWalletDTOImplCopyWithImpl<$Res>
    extends
        _$InputLoyaltyWalletDTOCopyWithImpl<$Res, _$InputLoyaltyWalletDTOImpl>
    implements _$$InputLoyaltyWalletDTOImplCopyWith<$Res> {
  __$$InputLoyaltyWalletDTOImplCopyWithImpl(
    _$InputLoyaltyWalletDTOImpl _value,
    $Res Function(_$InputLoyaltyWalletDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InputLoyaltyWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardName = null,
    Object? cardLastName = null,
    Object? cardBirthDate = null,
    Object? cardEmail = null,
  }) {
    return _then(
      _$InputLoyaltyWalletDTOImpl(
        cardName:
            null == cardName
                ? _value.cardName
                : cardName // ignore: cast_nullable_to_non_nullable
                    as String,
        cardLastName:
            null == cardLastName
                ? _value.cardLastName
                : cardLastName // ignore: cast_nullable_to_non_nullable
                    as String,
        cardBirthDate:
            null == cardBirthDate
                ? _value.cardBirthDate
                : cardBirthDate // ignore: cast_nullable_to_non_nullable
                    as String,
        cardEmail:
            null == cardEmail
                ? _value.cardEmail
                : cardEmail // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InputLoyaltyWalletDTOImpl implements _InputLoyaltyWalletDTO {
  const _$InputLoyaltyWalletDTOImpl({
    @JsonKey(name: 'card_name') required this.cardName,
    @JsonKey(name: 'card_last_name') required this.cardLastName,
    @JsonKey(name: 'card_birth_date') required this.cardBirthDate,
    @JsonKey(name: 'card_email') required this.cardEmail,
  });

  factory _$InputLoyaltyWalletDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputLoyaltyWalletDTOImplFromJson(json);

  @override
  @JsonKey(name: 'card_name')
  final String cardName;
  @override
  @JsonKey(name: 'card_last_name')
  final String cardLastName;
  @override
  @JsonKey(name: 'card_birth_date')
  final String cardBirthDate;
  @override
  @JsonKey(name: 'card_email')
  final String cardEmail;

  @override
  String toString() {
    return 'InputLoyaltyWalletDTO(cardName: $cardName, cardLastName: $cardLastName, cardBirthDate: $cardBirthDate, cardEmail: $cardEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputLoyaltyWalletDTOImpl &&
            (identical(other.cardName, cardName) ||
                other.cardName == cardName) &&
            (identical(other.cardLastName, cardLastName) ||
                other.cardLastName == cardLastName) &&
            (identical(other.cardBirthDate, cardBirthDate) ||
                other.cardBirthDate == cardBirthDate) &&
            (identical(other.cardEmail, cardEmail) ||
                other.cardEmail == cardEmail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    cardName,
    cardLastName,
    cardBirthDate,
    cardEmail,
  );

  /// Create a copy of InputLoyaltyWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputLoyaltyWalletDTOImplCopyWith<_$InputLoyaltyWalletDTOImpl>
  get copyWith =>
      __$$InputLoyaltyWalletDTOImplCopyWithImpl<_$InputLoyaltyWalletDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$InputLoyaltyWalletDTOImplToJson(this);
  }
}

abstract class _InputLoyaltyWalletDTO implements InputLoyaltyWalletDTO {
  const factory _InputLoyaltyWalletDTO({
    @JsonKey(name: 'card_name') required final String cardName,
    @JsonKey(name: 'card_last_name') required final String cardLastName,
    @JsonKey(name: 'card_birth_date') required final String cardBirthDate,
    @JsonKey(name: 'card_email') required final String cardEmail,
  }) = _$InputLoyaltyWalletDTOImpl;

  factory _InputLoyaltyWalletDTO.fromJson(Map<String, dynamic> json) =
      _$InputLoyaltyWalletDTOImpl.fromJson;

  @override
  @JsonKey(name: 'card_name')
  String get cardName;
  @override
  @JsonKey(name: 'card_last_name')
  String get cardLastName;
  @override
  @JsonKey(name: 'card_birth_date')
  String get cardBirthDate;
  @override
  @JsonKey(name: 'card_email')
  String get cardEmail;

  /// Create a copy of InputLoyaltyWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputLoyaltyWalletDTOImplCopyWith<_$InputLoyaltyWalletDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
