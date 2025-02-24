// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cache_credit_card.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CacheCreditCard _$CacheCreditCardFromJson(Map<String, dynamic> json) {
  return _CacheCreditCard.fromJson(json);
}

/// @nodoc
mixin _$CacheCreditCard {
  CacheCipherCreditCardDetails get cacheCipherCreditCardDetails =>
      throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get saveCard => throw _privateConstructorUsedError;
  String get methodCode => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  /// Serializes this CacheCreditCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CacheCreditCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CacheCreditCardCopyWith<CacheCreditCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheCreditCardCopyWith<$Res> {
  factory $CacheCreditCardCopyWith(
    CacheCreditCard value,
    $Res Function(CacheCreditCard) then,
  ) = _$CacheCreditCardCopyWithImpl<$Res, CacheCreditCard>;
  @useResult
  $Res call({
    CacheCipherCreditCardDetails cacheCipherCreditCardDetails,
    String email,
    bool saveCard,
    String methodCode,
    bool isSelected,
  });

  $CacheCipherCreditCardDetailsCopyWith<$Res> get cacheCipherCreditCardDetails;
}

/// @nodoc
class _$CacheCreditCardCopyWithImpl<$Res, $Val extends CacheCreditCard>
    implements $CacheCreditCardCopyWith<$Res> {
  _$CacheCreditCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CacheCreditCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cacheCipherCreditCardDetails = null,
    Object? email = null,
    Object? saveCard = null,
    Object? methodCode = null,
    Object? isSelected = null,
  }) {
    return _then(
      _value.copyWith(
            cacheCipherCreditCardDetails:
                null == cacheCipherCreditCardDetails
                    ? _value.cacheCipherCreditCardDetails
                    : cacheCipherCreditCardDetails // ignore: cast_nullable_to_non_nullable
                        as CacheCipherCreditCardDetails,
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            saveCard:
                null == saveCard
                    ? _value.saveCard
                    : saveCard // ignore: cast_nullable_to_non_nullable
                        as bool,
            methodCode:
                null == methodCode
                    ? _value.methodCode
                    : methodCode // ignore: cast_nullable_to_non_nullable
                        as String,
            isSelected:
                null == isSelected
                    ? _value.isSelected
                    : isSelected // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of CacheCreditCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CacheCipherCreditCardDetailsCopyWith<$Res> get cacheCipherCreditCardDetails {
    return $CacheCipherCreditCardDetailsCopyWith<$Res>(
      _value.cacheCipherCreditCardDetails,
      (value) {
        return _then(
          _value.copyWith(cacheCipherCreditCardDetails: value) as $Val,
        );
      },
    );
  }
}

/// @nodoc
abstract class _$$CacheCreditCardImplCopyWith<$Res>
    implements $CacheCreditCardCopyWith<$Res> {
  factory _$$CacheCreditCardImplCopyWith(
    _$CacheCreditCardImpl value,
    $Res Function(_$CacheCreditCardImpl) then,
  ) = __$$CacheCreditCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    CacheCipherCreditCardDetails cacheCipherCreditCardDetails,
    String email,
    bool saveCard,
    String methodCode,
    bool isSelected,
  });

  @override
  $CacheCipherCreditCardDetailsCopyWith<$Res> get cacheCipherCreditCardDetails;
}

/// @nodoc
class __$$CacheCreditCardImplCopyWithImpl<$Res>
    extends _$CacheCreditCardCopyWithImpl<$Res, _$CacheCreditCardImpl>
    implements _$$CacheCreditCardImplCopyWith<$Res> {
  __$$CacheCreditCardImplCopyWithImpl(
    _$CacheCreditCardImpl _value,
    $Res Function(_$CacheCreditCardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CacheCreditCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cacheCipherCreditCardDetails = null,
    Object? email = null,
    Object? saveCard = null,
    Object? methodCode = null,
    Object? isSelected = null,
  }) {
    return _then(
      _$CacheCreditCardImpl(
        cacheCipherCreditCardDetails:
            null == cacheCipherCreditCardDetails
                ? _value.cacheCipherCreditCardDetails
                : cacheCipherCreditCardDetails // ignore: cast_nullable_to_non_nullable
                    as CacheCipherCreditCardDetails,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        saveCard:
            null == saveCard
                ? _value.saveCard
                : saveCard // ignore: cast_nullable_to_non_nullable
                    as bool,
        methodCode:
            null == methodCode
                ? _value.methodCode
                : methodCode // ignore: cast_nullable_to_non_nullable
                    as String,
        isSelected:
            null == isSelected
                ? _value.isSelected
                : isSelected // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$CacheCreditCardImpl implements _CacheCreditCard {
  const _$CacheCreditCardImpl({
    required this.cacheCipherCreditCardDetails,
    required this.email,
    required this.saveCard,
    required this.methodCode,
    required this.isSelected,
  });

  factory _$CacheCreditCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$CacheCreditCardImplFromJson(json);

  @override
  final CacheCipherCreditCardDetails cacheCipherCreditCardDetails;
  @override
  final String email;
  @override
  final bool saveCard;
  @override
  final String methodCode;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'CacheCreditCard(cacheCipherCreditCardDetails: $cacheCipherCreditCardDetails, email: $email, saveCard: $saveCard, methodCode: $methodCode, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheCreditCardImpl &&
            (identical(
                  other.cacheCipherCreditCardDetails,
                  cacheCipherCreditCardDetails,
                ) ||
                other.cacheCipherCreditCardDetails ==
                    cacheCipherCreditCardDetails) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.saveCard, saveCard) ||
                other.saveCard == saveCard) &&
            (identical(other.methodCode, methodCode) ||
                other.methodCode == methodCode) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    cacheCipherCreditCardDetails,
    email,
    saveCard,
    methodCode,
    isSelected,
  );

  /// Create a copy of CacheCreditCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheCreditCardImplCopyWith<_$CacheCreditCardImpl> get copyWith =>
      __$$CacheCreditCardImplCopyWithImpl<_$CacheCreditCardImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CacheCreditCardImplToJson(this);
  }
}

abstract class _CacheCreditCard implements CacheCreditCard {
  const factory _CacheCreditCard({
    required final CacheCipherCreditCardDetails cacheCipherCreditCardDetails,
    required final String email,
    required final bool saveCard,
    required final String methodCode,
    required final bool isSelected,
  }) = _$CacheCreditCardImpl;

  factory _CacheCreditCard.fromJson(Map<String, dynamic> json) =
      _$CacheCreditCardImpl.fromJson;

  @override
  CacheCipherCreditCardDetails get cacheCipherCreditCardDetails;
  @override
  String get email;
  @override
  bool get saveCard;
  @override
  String get methodCode;
  @override
  bool get isSelected;

  /// Create a copy of CacheCreditCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheCreditCardImplCopyWith<_$CacheCreditCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CacheCipherCreditCardDetails _$CacheCipherCreditCardDetailsFromJson(
  Map<String, dynamic> json,
) {
  return _CacheCipherCreditCardDetails.fromJson(json);
}

/// @nodoc
mixin _$CacheCipherCreditCardDetails {
  String get expYear => throw _privateConstructorUsedError;
  String get expMonth => throw _privateConstructorUsedError;
  String get securityCode => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get last4Number => throw _privateConstructorUsedError;
  String get typeCode => throw _privateConstructorUsedError;

  /// Serializes this CacheCipherCreditCardDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CacheCipherCreditCardDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CacheCipherCreditCardDetailsCopyWith<CacheCipherCreditCardDetails>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheCipherCreditCardDetailsCopyWith<$Res> {
  factory $CacheCipherCreditCardDetailsCopyWith(
    CacheCipherCreditCardDetails value,
    $Res Function(CacheCipherCreditCardDetails) then,
  ) =
      _$CacheCipherCreditCardDetailsCopyWithImpl<
        $Res,
        CacheCipherCreditCardDetails
      >;
  @useResult
  $Res call({
    String expYear,
    String expMonth,
    String securityCode,
    String number,
    String last4Number,
    String typeCode,
  });
}

/// @nodoc
class _$CacheCipherCreditCardDetailsCopyWithImpl<
  $Res,
  $Val extends CacheCipherCreditCardDetails
>
    implements $CacheCipherCreditCardDetailsCopyWith<$Res> {
  _$CacheCipherCreditCardDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CacheCipherCreditCardDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expYear = null,
    Object? expMonth = null,
    Object? securityCode = null,
    Object? number = null,
    Object? last4Number = null,
    Object? typeCode = null,
  }) {
    return _then(
      _value.copyWith(
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
            securityCode:
                null == securityCode
                    ? _value.securityCode
                    : securityCode // ignore: cast_nullable_to_non_nullable
                        as String,
            number:
                null == number
                    ? _value.number
                    : number // ignore: cast_nullable_to_non_nullable
                        as String,
            last4Number:
                null == last4Number
                    ? _value.last4Number
                    : last4Number // ignore: cast_nullable_to_non_nullable
                        as String,
            typeCode:
                null == typeCode
                    ? _value.typeCode
                    : typeCode // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CacheCipherCreditCardDetailsImplCopyWith<$Res>
    implements $CacheCipherCreditCardDetailsCopyWith<$Res> {
  factory _$$CacheCipherCreditCardDetailsImplCopyWith(
    _$CacheCipherCreditCardDetailsImpl value,
    $Res Function(_$CacheCipherCreditCardDetailsImpl) then,
  ) = __$$CacheCipherCreditCardDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String expYear,
    String expMonth,
    String securityCode,
    String number,
    String last4Number,
    String typeCode,
  });
}

/// @nodoc
class __$$CacheCipherCreditCardDetailsImplCopyWithImpl<$Res>
    extends
        _$CacheCipherCreditCardDetailsCopyWithImpl<
          $Res,
          _$CacheCipherCreditCardDetailsImpl
        >
    implements _$$CacheCipherCreditCardDetailsImplCopyWith<$Res> {
  __$$CacheCipherCreditCardDetailsImplCopyWithImpl(
    _$CacheCipherCreditCardDetailsImpl _value,
    $Res Function(_$CacheCipherCreditCardDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CacheCipherCreditCardDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expYear = null,
    Object? expMonth = null,
    Object? securityCode = null,
    Object? number = null,
    Object? last4Number = null,
    Object? typeCode = null,
  }) {
    return _then(
      _$CacheCipherCreditCardDetailsImpl(
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
        securityCode:
            null == securityCode
                ? _value.securityCode
                : securityCode // ignore: cast_nullable_to_non_nullable
                    as String,
        number:
            null == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                    as String,
        last4Number:
            null == last4Number
                ? _value.last4Number
                : last4Number // ignore: cast_nullable_to_non_nullable
                    as String,
        typeCode:
            null == typeCode
                ? _value.typeCode
                : typeCode // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$CacheCipherCreditCardDetailsImpl
    implements _CacheCipherCreditCardDetails {
  const _$CacheCipherCreditCardDetailsImpl({
    required this.expYear,
    required this.expMonth,
    required this.securityCode,
    required this.number,
    required this.last4Number,
    required this.typeCode,
  });

  factory _$CacheCipherCreditCardDetailsImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$CacheCipherCreditCardDetailsImplFromJson(json);

  @override
  final String expYear;
  @override
  final String expMonth;
  @override
  final String securityCode;
  @override
  final String number;
  @override
  final String last4Number;
  @override
  final String typeCode;

  @override
  String toString() {
    return 'CacheCipherCreditCardDetails(expYear: $expYear, expMonth: $expMonth, securityCode: $securityCode, number: $number, last4Number: $last4Number, typeCode: $typeCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheCipherCreditCardDetailsImpl &&
            (identical(other.expYear, expYear) || other.expYear == expYear) &&
            (identical(other.expMonth, expMonth) ||
                other.expMonth == expMonth) &&
            (identical(other.securityCode, securityCode) ||
                other.securityCode == securityCode) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.last4Number, last4Number) ||
                other.last4Number == last4Number) &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    expYear,
    expMonth,
    securityCode,
    number,
    last4Number,
    typeCode,
  );

  /// Create a copy of CacheCipherCreditCardDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheCipherCreditCardDetailsImplCopyWith<
    _$CacheCipherCreditCardDetailsImpl
  >
  get copyWith => __$$CacheCipherCreditCardDetailsImplCopyWithImpl<
    _$CacheCipherCreditCardDetailsImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CacheCipherCreditCardDetailsImplToJson(this);
  }
}

abstract class _CacheCipherCreditCardDetails
    implements CacheCipherCreditCardDetails {
  const factory _CacheCipherCreditCardDetails({
    required final String expYear,
    required final String expMonth,
    required final String securityCode,
    required final String number,
    required final String last4Number,
    required final String typeCode,
  }) = _$CacheCipherCreditCardDetailsImpl;

  factory _CacheCipherCreditCardDetails.fromJson(Map<String, dynamic> json) =
      _$CacheCipherCreditCardDetailsImpl.fromJson;

  @override
  String get expYear;
  @override
  String get expMonth;
  @override
  String get securityCode;
  @override
  String get number;
  @override
  String get last4Number;
  @override
  String get typeCode;

  /// Create a copy of CacheCipherCreditCardDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheCipherCreditCardDetailsImplCopyWith<
    _$CacheCipherCreditCardDetailsImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
