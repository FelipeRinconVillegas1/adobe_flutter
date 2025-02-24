// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'object_payment_method_selected.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ObjectPaymentMethodSelected _$ObjectPaymentMethodSelectedFromJson(
  Map<String, dynamic> json,
) {
  return _ObjectPaymentMethodSelected.fromJson(json);
}

/// @nodoc
mixin _$ObjectPaymentMethodSelected {
  TypeObjectPaymentMethod get type => throw _privateConstructorUsedError;
  String get last4Digits => throw _privateConstructorUsedError;
  TypeCard get typeCard => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;
  String get methodCode => throw _privateConstructorUsedError;
  CreditCardDetails get creditCardDetails => throw _privateConstructorUsedError;
  String get expYear => throw _privateConstructorUsedError;
  String get expMonth => throw _privateConstructorUsedError;
  CacheCreditCard? get card => throw _privateConstructorUsedError;
  String? get hashCardTokenized => throw _privateConstructorUsedError;

  /// Serializes this ObjectPaymentMethodSelected to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ObjectPaymentMethodSelected
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ObjectPaymentMethodSelectedCopyWith<ObjectPaymentMethodSelected>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectPaymentMethodSelectedCopyWith<$Res> {
  factory $ObjectPaymentMethodSelectedCopyWith(
    ObjectPaymentMethodSelected value,
    $Res Function(ObjectPaymentMethodSelected) then,
  ) =
      _$ObjectPaymentMethodSelectedCopyWithImpl<
        $Res,
        ObjectPaymentMethodSelected
      >;
  @useResult
  $Res call({
    TypeObjectPaymentMethod type,
    String last4Digits,
    TypeCard typeCard,
    bool isDefault,
    String methodCode,
    CreditCardDetails creditCardDetails,
    String expYear,
    String expMonth,
    CacheCreditCard? card,
    String? hashCardTokenized,
  });

  $CreditCardDetailsCopyWith<$Res> get creditCardDetails;
  $CacheCreditCardCopyWith<$Res>? get card;
}

/// @nodoc
class _$ObjectPaymentMethodSelectedCopyWithImpl<
  $Res,
  $Val extends ObjectPaymentMethodSelected
>
    implements $ObjectPaymentMethodSelectedCopyWith<$Res> {
  _$ObjectPaymentMethodSelectedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ObjectPaymentMethodSelected
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? last4Digits = null,
    Object? typeCard = null,
    Object? isDefault = null,
    Object? methodCode = null,
    Object? creditCardDetails = null,
    Object? expYear = null,
    Object? expMonth = null,
    Object? card = freezed,
    Object? hashCardTokenized = freezed,
  }) {
    return _then(
      _value.copyWith(
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as TypeObjectPaymentMethod,
            last4Digits:
                null == last4Digits
                    ? _value.last4Digits
                    : last4Digits // ignore: cast_nullable_to_non_nullable
                        as String,
            typeCard:
                null == typeCard
                    ? _value.typeCard
                    : typeCard // ignore: cast_nullable_to_non_nullable
                        as TypeCard,
            isDefault:
                null == isDefault
                    ? _value.isDefault
                    : isDefault // ignore: cast_nullable_to_non_nullable
                        as bool,
            methodCode:
                null == methodCode
                    ? _value.methodCode
                    : methodCode // ignore: cast_nullable_to_non_nullable
                        as String,
            creditCardDetails:
                null == creditCardDetails
                    ? _value.creditCardDetails
                    : creditCardDetails // ignore: cast_nullable_to_non_nullable
                        as CreditCardDetails,
            expYear:
                null == expYear
                    ? _value.expYear
                    : expYear // ignore: cast_nullable_to_non_nullable
                        as String,
            expMonth:
                null == expMonth
                    ? _value.expMonth
                    : expMonth // ignore: cast_nullable_to_non_nullable
                        as String,
            card:
                freezed == card
                    ? _value.card
                    : card // ignore: cast_nullable_to_non_nullable
                        as CacheCreditCard?,
            hashCardTokenized:
                freezed == hashCardTokenized
                    ? _value.hashCardTokenized
                    : hashCardTokenized // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of ObjectPaymentMethodSelected
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreditCardDetailsCopyWith<$Res> get creditCardDetails {
    return $CreditCardDetailsCopyWith<$Res>(_value.creditCardDetails, (value) {
      return _then(_value.copyWith(creditCardDetails: value) as $Val);
    });
  }

  /// Create a copy of ObjectPaymentMethodSelected
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CacheCreditCardCopyWith<$Res>? get card {
    if (_value.card == null) {
      return null;
    }

    return $CacheCreditCardCopyWith<$Res>(_value.card!, (value) {
      return _then(_value.copyWith(card: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ObjectPaymentMethodSelectedImplCopyWith<$Res>
    implements $ObjectPaymentMethodSelectedCopyWith<$Res> {
  factory _$$ObjectPaymentMethodSelectedImplCopyWith(
    _$ObjectPaymentMethodSelectedImpl value,
    $Res Function(_$ObjectPaymentMethodSelectedImpl) then,
  ) = __$$ObjectPaymentMethodSelectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    TypeObjectPaymentMethod type,
    String last4Digits,
    TypeCard typeCard,
    bool isDefault,
    String methodCode,
    CreditCardDetails creditCardDetails,
    String expYear,
    String expMonth,
    CacheCreditCard? card,
    String? hashCardTokenized,
  });

  @override
  $CreditCardDetailsCopyWith<$Res> get creditCardDetails;
  @override
  $CacheCreditCardCopyWith<$Res>? get card;
}

/// @nodoc
class __$$ObjectPaymentMethodSelectedImplCopyWithImpl<$Res>
    extends
        _$ObjectPaymentMethodSelectedCopyWithImpl<
          $Res,
          _$ObjectPaymentMethodSelectedImpl
        >
    implements _$$ObjectPaymentMethodSelectedImplCopyWith<$Res> {
  __$$ObjectPaymentMethodSelectedImplCopyWithImpl(
    _$ObjectPaymentMethodSelectedImpl _value,
    $Res Function(_$ObjectPaymentMethodSelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ObjectPaymentMethodSelected
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? last4Digits = null,
    Object? typeCard = null,
    Object? isDefault = null,
    Object? methodCode = null,
    Object? creditCardDetails = null,
    Object? expYear = null,
    Object? expMonth = null,
    Object? card = freezed,
    Object? hashCardTokenized = freezed,
  }) {
    return _then(
      _$ObjectPaymentMethodSelectedImpl(
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as TypeObjectPaymentMethod,
        last4Digits:
            null == last4Digits
                ? _value.last4Digits
                : last4Digits // ignore: cast_nullable_to_non_nullable
                    as String,
        typeCard:
            null == typeCard
                ? _value.typeCard
                : typeCard // ignore: cast_nullable_to_non_nullable
                    as TypeCard,
        isDefault:
            null == isDefault
                ? _value.isDefault
                : isDefault // ignore: cast_nullable_to_non_nullable
                    as bool,
        methodCode:
            null == methodCode
                ? _value.methodCode
                : methodCode // ignore: cast_nullable_to_non_nullable
                    as String,
        creditCardDetails:
            null == creditCardDetails
                ? _value.creditCardDetails
                : creditCardDetails // ignore: cast_nullable_to_non_nullable
                    as CreditCardDetails,
        expYear:
            null == expYear
                ? _value.expYear
                : expYear // ignore: cast_nullable_to_non_nullable
                    as String,
        expMonth:
            null == expMonth
                ? _value.expMonth
                : expMonth // ignore: cast_nullable_to_non_nullable
                    as String,
        card:
            freezed == card
                ? _value.card
                : card // ignore: cast_nullable_to_non_nullable
                    as CacheCreditCard?,
        hashCardTokenized:
            freezed == hashCardTokenized
                ? _value.hashCardTokenized
                : hashCardTokenized // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$ObjectPaymentMethodSelectedImpl
    implements _ObjectPaymentMethodSelected {
  const _$ObjectPaymentMethodSelectedImpl({
    required this.type,
    required this.last4Digits,
    required this.typeCard,
    required this.isDefault,
    required this.methodCode,
    required this.creditCardDetails,
    required this.expYear,
    required this.expMonth,
    this.card,
    this.hashCardTokenized,
  });

  factory _$ObjectPaymentMethodSelectedImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ObjectPaymentMethodSelectedImplFromJson(json);

  @override
  final TypeObjectPaymentMethod type;
  @override
  final String last4Digits;
  @override
  final TypeCard typeCard;
  @override
  final bool isDefault;
  @override
  final String methodCode;
  @override
  final CreditCardDetails creditCardDetails;
  @override
  final String expYear;
  @override
  final String expMonth;
  @override
  final CacheCreditCard? card;
  @override
  final String? hashCardTokenized;

  @override
  String toString() {
    return 'ObjectPaymentMethodSelected(type: $type, last4Digits: $last4Digits, typeCard: $typeCard, isDefault: $isDefault, methodCode: $methodCode, creditCardDetails: $creditCardDetails, expYear: $expYear, expMonth: $expMonth, card: $card, hashCardTokenized: $hashCardTokenized)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObjectPaymentMethodSelectedImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.last4Digits, last4Digits) ||
                other.last4Digits == last4Digits) &&
            (identical(other.typeCard, typeCard) ||
                other.typeCard == typeCard) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.methodCode, methodCode) ||
                other.methodCode == methodCode) &&
            (identical(other.creditCardDetails, creditCardDetails) ||
                other.creditCardDetails == creditCardDetails) &&
            (identical(other.expYear, expYear) || other.expYear == expYear) &&
            (identical(other.expMonth, expMonth) ||
                other.expMonth == expMonth) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.hashCardTokenized, hashCardTokenized) ||
                other.hashCardTokenized == hashCardTokenized));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    type,
    last4Digits,
    typeCard,
    isDefault,
    methodCode,
    creditCardDetails,
    expYear,
    expMonth,
    card,
    hashCardTokenized,
  );

  /// Create a copy of ObjectPaymentMethodSelected
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ObjectPaymentMethodSelectedImplCopyWith<_$ObjectPaymentMethodSelectedImpl>
  get copyWith => __$$ObjectPaymentMethodSelectedImplCopyWithImpl<
    _$ObjectPaymentMethodSelectedImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ObjectPaymentMethodSelectedImplToJson(this);
  }
}

abstract class _ObjectPaymentMethodSelected
    implements ObjectPaymentMethodSelected {
  const factory _ObjectPaymentMethodSelected({
    required final TypeObjectPaymentMethod type,
    required final String last4Digits,
    required final TypeCard typeCard,
    required final bool isDefault,
    required final String methodCode,
    required final CreditCardDetails creditCardDetails,
    required final String expYear,
    required final String expMonth,
    final CacheCreditCard? card,
    final String? hashCardTokenized,
  }) = _$ObjectPaymentMethodSelectedImpl;

  factory _ObjectPaymentMethodSelected.fromJson(Map<String, dynamic> json) =
      _$ObjectPaymentMethodSelectedImpl.fromJson;

  @override
  TypeObjectPaymentMethod get type;
  @override
  String get last4Digits;
  @override
  TypeCard get typeCard;
  @override
  bool get isDefault;
  @override
  String get methodCode;
  @override
  CreditCardDetails get creditCardDetails;
  @override
  String get expYear;
  @override
  String get expMonth;
  @override
  CacheCreditCard? get card;
  @override
  String? get hashCardTokenized;

  /// Create a copy of ObjectPaymentMethodSelected
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ObjectPaymentMethodSelectedImplCopyWith<_$ObjectPaymentMethodSelectedImpl>
  get copyWith => throw _privateConstructorUsedError;
}
