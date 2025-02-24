// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loyalty_wallet_credential_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoyaltyWalletCredentialDTO _$LoyaltyWalletCredentialDTOFromJson(
  Map<String, dynamic> json,
) {
  return _LoyaltyWalletCredentialDTO.fromJson(json);
}

/// @nodoc
mixin _$LoyaltyWalletCredentialDTO {
  @JsonKey(name: 'card_number')
  String get cardNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_birth_date')
  String get cardBirthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_email')
  String get customerEmail => throw _privateConstructorUsedError;

  /// Serializes this LoyaltyWalletCredentialDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoyaltyWalletCredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoyaltyWalletCredentialDTOCopyWith<LoyaltyWalletCredentialDTO>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoyaltyWalletCredentialDTOCopyWith<$Res> {
  factory $LoyaltyWalletCredentialDTOCopyWith(
    LoyaltyWalletCredentialDTO value,
    $Res Function(LoyaltyWalletCredentialDTO) then,
  ) =
      _$LoyaltyWalletCredentialDTOCopyWithImpl<
        $Res,
        LoyaltyWalletCredentialDTO
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'card_number') String cardNumber,
    @JsonKey(name: 'card_birth_date') String cardBirthDate,
    @JsonKey(name: 'customer_email') String customerEmail,
  });
}

/// @nodoc
class _$LoyaltyWalletCredentialDTOCopyWithImpl<
  $Res,
  $Val extends LoyaltyWalletCredentialDTO
>
    implements $LoyaltyWalletCredentialDTOCopyWith<$Res> {
  _$LoyaltyWalletCredentialDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoyaltyWalletCredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? cardBirthDate = null,
    Object? customerEmail = null,
  }) {
    return _then(
      _value.copyWith(
            cardNumber:
                null == cardNumber
                    ? _value.cardNumber
                    : cardNumber // ignore: cast_nullable_to_non_nullable
                        as String,
            cardBirthDate:
                null == cardBirthDate
                    ? _value.cardBirthDate
                    : cardBirthDate // ignore: cast_nullable_to_non_nullable
                        as String,
            customerEmail:
                null == customerEmail
                    ? _value.customerEmail
                    : customerEmail // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoyaltyWalletCredentialDTOImplCopyWith<$Res>
    implements $LoyaltyWalletCredentialDTOCopyWith<$Res> {
  factory _$$LoyaltyWalletCredentialDTOImplCopyWith(
    _$LoyaltyWalletCredentialDTOImpl value,
    $Res Function(_$LoyaltyWalletCredentialDTOImpl) then,
  ) = __$$LoyaltyWalletCredentialDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'card_number') String cardNumber,
    @JsonKey(name: 'card_birth_date') String cardBirthDate,
    @JsonKey(name: 'customer_email') String customerEmail,
  });
}

/// @nodoc
class __$$LoyaltyWalletCredentialDTOImplCopyWithImpl<$Res>
    extends
        _$LoyaltyWalletCredentialDTOCopyWithImpl<
          $Res,
          _$LoyaltyWalletCredentialDTOImpl
        >
    implements _$$LoyaltyWalletCredentialDTOImplCopyWith<$Res> {
  __$$LoyaltyWalletCredentialDTOImplCopyWithImpl(
    _$LoyaltyWalletCredentialDTOImpl _value,
    $Res Function(_$LoyaltyWalletCredentialDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoyaltyWalletCredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? cardBirthDate = null,
    Object? customerEmail = null,
  }) {
    return _then(
      _$LoyaltyWalletCredentialDTOImpl(
        cardNumber:
            null == cardNumber
                ? _value.cardNumber
                : cardNumber // ignore: cast_nullable_to_non_nullable
                    as String,
        cardBirthDate:
            null == cardBirthDate
                ? _value.cardBirthDate
                : cardBirthDate // ignore: cast_nullable_to_non_nullable
                    as String,
        customerEmail:
            null == customerEmail
                ? _value.customerEmail
                : customerEmail // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoyaltyWalletCredentialDTOImpl implements _LoyaltyWalletCredentialDTO {
  const _$LoyaltyWalletCredentialDTOImpl({
    @JsonKey(name: 'card_number') required this.cardNumber,
    @JsonKey(name: 'card_birth_date') required this.cardBirthDate,
    @JsonKey(name: 'customer_email') required this.customerEmail,
  });

  factory _$LoyaltyWalletCredentialDTOImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$LoyaltyWalletCredentialDTOImplFromJson(json);

  @override
  @JsonKey(name: 'card_number')
  final String cardNumber;
  @override
  @JsonKey(name: 'card_birth_date')
  final String cardBirthDate;
  @override
  @JsonKey(name: 'customer_email')
  final String customerEmail;

  @override
  String toString() {
    return 'LoyaltyWalletCredentialDTO(cardNumber: $cardNumber, cardBirthDate: $cardBirthDate, customerEmail: $customerEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoyaltyWalletCredentialDTOImpl &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardBirthDate, cardBirthDate) ||
                other.cardBirthDate == cardBirthDate) &&
            (identical(other.customerEmail, customerEmail) ||
                other.customerEmail == customerEmail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cardNumber, cardBirthDate, customerEmail);

  /// Create a copy of LoyaltyWalletCredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoyaltyWalletCredentialDTOImplCopyWith<_$LoyaltyWalletCredentialDTOImpl>
  get copyWith => __$$LoyaltyWalletCredentialDTOImplCopyWithImpl<
    _$LoyaltyWalletCredentialDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoyaltyWalletCredentialDTOImplToJson(this);
  }
}

abstract class _LoyaltyWalletCredentialDTO
    implements LoyaltyWalletCredentialDTO {
  const factory _LoyaltyWalletCredentialDTO({
    @JsonKey(name: 'card_number') required final String cardNumber,
    @JsonKey(name: 'card_birth_date') required final String cardBirthDate,
    @JsonKey(name: 'customer_email') required final String customerEmail,
  }) = _$LoyaltyWalletCredentialDTOImpl;

  factory _LoyaltyWalletCredentialDTO.fromJson(Map<String, dynamic> json) =
      _$LoyaltyWalletCredentialDTOImpl.fromJson;

  @override
  @JsonKey(name: 'card_number')
  String get cardNumber;
  @override
  @JsonKey(name: 'card_birth_date')
  String get cardBirthDate;
  @override
  @JsonKey(name: 'customer_email')
  String get customerEmail;

  /// Create a copy of LoyaltyWalletCredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoyaltyWalletCredentialDTOImplCopyWith<_$LoyaltyWalletCredentialDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
