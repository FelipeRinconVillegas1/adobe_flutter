// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_set_payment_method_on_cart_entity.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

InputSetPaymentMethodOnCartEntity _$InputSetPaymentMethodOnCartEntityFromJson(
  Map<String, dynamic> json,
) {
  return _InputSetPaymentMethodOnCartEntity.fromJson(json);
}

/// @nodoc
mixin _$InputSetPaymentMethodOnCartEntity {
  @JsonKey(name: 'cart_id')
  String get cartId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;

  /// Serializes this InputSetPaymentMethodOnCartEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputSetPaymentMethodOnCartEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputSetPaymentMethodOnCartEntityCopyWith<InputSetPaymentMethodOnCartEntity>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputSetPaymentMethodOnCartEntityCopyWith<$Res> {
  factory $InputSetPaymentMethodOnCartEntityCopyWith(
    InputSetPaymentMethodOnCartEntity value,
    $Res Function(InputSetPaymentMethodOnCartEntity) then,
  ) =
      _$InputSetPaymentMethodOnCartEntityCopyWithImpl<
        $Res,
        InputSetPaymentMethodOnCartEntity
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'cart_id') String cartId,
    @JsonKey(name: 'payment_method') PaymentMethod paymentMethod,
  });

  $PaymentMethodCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class _$InputSetPaymentMethodOnCartEntityCopyWithImpl<
  $Res,
  $Val extends InputSetPaymentMethodOnCartEntity
>
    implements $InputSetPaymentMethodOnCartEntityCopyWith<$Res> {
  _$InputSetPaymentMethodOnCartEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputSetPaymentMethodOnCartEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cartId = null, Object? paymentMethod = null}) {
    return _then(
      _value.copyWith(
            cartId:
                null == cartId
                    ? _value.cartId
                    : cartId // ignore: cast_nullable_to_non_nullable
                        as String,
            paymentMethod:
                null == paymentMethod
                    ? _value.paymentMethod
                    : paymentMethod // ignore: cast_nullable_to_non_nullable
                        as PaymentMethod,
          )
          as $Val,
    );
  }

  /// Create a copy of InputSetPaymentMethodOnCartEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodCopyWith<$Res> get paymentMethod {
    return $PaymentMethodCopyWith<$Res>(_value.paymentMethod, (value) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InputSetPaymentMethodOnCartEntityImplCopyWith<$Res>
    implements $InputSetPaymentMethodOnCartEntityCopyWith<$Res> {
  factory _$$InputSetPaymentMethodOnCartEntityImplCopyWith(
    _$InputSetPaymentMethodOnCartEntityImpl value,
    $Res Function(_$InputSetPaymentMethodOnCartEntityImpl) then,
  ) = __$$InputSetPaymentMethodOnCartEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'cart_id') String cartId,
    @JsonKey(name: 'payment_method') PaymentMethod paymentMethod,
  });

  @override
  $PaymentMethodCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class __$$InputSetPaymentMethodOnCartEntityImplCopyWithImpl<$Res>
    extends
        _$InputSetPaymentMethodOnCartEntityCopyWithImpl<
          $Res,
          _$InputSetPaymentMethodOnCartEntityImpl
        >
    implements _$$InputSetPaymentMethodOnCartEntityImplCopyWith<$Res> {
  __$$InputSetPaymentMethodOnCartEntityImplCopyWithImpl(
    _$InputSetPaymentMethodOnCartEntityImpl _value,
    $Res Function(_$InputSetPaymentMethodOnCartEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InputSetPaymentMethodOnCartEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cartId = null, Object? paymentMethod = null}) {
    return _then(
      _$InputSetPaymentMethodOnCartEntityImpl(
        cartId:
            null == cartId
                ? _value.cartId
                : cartId // ignore: cast_nullable_to_non_nullable
                    as String,
        paymentMethod:
            null == paymentMethod
                ? _value.paymentMethod
                : paymentMethod // ignore: cast_nullable_to_non_nullable
                    as PaymentMethod,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$InputSetPaymentMethodOnCartEntityImpl
    implements _InputSetPaymentMethodOnCartEntity {
  const _$InputSetPaymentMethodOnCartEntityImpl({
    @JsonKey(name: 'cart_id') required this.cartId,
    @JsonKey(name: 'payment_method') required this.paymentMethod,
  });

  factory _$InputSetPaymentMethodOnCartEntityImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$InputSetPaymentMethodOnCartEntityImplFromJson(json);

  @override
  @JsonKey(name: 'cart_id')
  final String cartId;
  @override
  @JsonKey(name: 'payment_method')
  final PaymentMethod paymentMethod;

  @override
  String toString() {
    return 'InputSetPaymentMethodOnCartEntity(cartId: $cartId, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputSetPaymentMethodOnCartEntityImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cartId, paymentMethod);

  /// Create a copy of InputSetPaymentMethodOnCartEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputSetPaymentMethodOnCartEntityImplCopyWith<
    _$InputSetPaymentMethodOnCartEntityImpl
  >
  get copyWith => __$$InputSetPaymentMethodOnCartEntityImplCopyWithImpl<
    _$InputSetPaymentMethodOnCartEntityImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputSetPaymentMethodOnCartEntityImplToJson(this);
  }
}

abstract class _InputSetPaymentMethodOnCartEntity
    implements InputSetPaymentMethodOnCartEntity {
  const factory _InputSetPaymentMethodOnCartEntity({
    @JsonKey(name: 'cart_id') required final String cartId,
    @JsonKey(name: 'payment_method') required final PaymentMethod paymentMethod,
  }) = _$InputSetPaymentMethodOnCartEntityImpl;

  factory _InputSetPaymentMethodOnCartEntity.fromJson(
    Map<String, dynamic> json,
  ) = _$InputSetPaymentMethodOnCartEntityImpl.fromJson;

  @override
  @JsonKey(name: 'cart_id')
  String get cartId;
  @override
  @JsonKey(name: 'payment_method')
  PaymentMethod get paymentMethod;

  /// Create a copy of InputSetPaymentMethodOnCartEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputSetPaymentMethodOnCartEntityImplCopyWith<
    _$InputSetPaymentMethodOnCartEntityImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) {
  return _PaymentMethod.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethod {
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'cyber_source_flex')
  CyberSourceFlex? get cyberSourceFlex => throw _privateConstructorUsedError;

  /// Serializes this PaymentMethod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentMethodCopyWith<PaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodCopyWith<$Res> {
  factory $PaymentMethodCopyWith(
    PaymentMethod value,
    $Res Function(PaymentMethod) then,
  ) = _$PaymentMethodCopyWithImpl<$Res, PaymentMethod>;
  @useResult
  $Res call({
    String code,
    @JsonKey(name: 'cyber_source_flex') CyberSourceFlex? cyberSourceFlex,
  });

  $CyberSourceFlexCopyWith<$Res>? get cyberSourceFlex;
}

/// @nodoc
class _$PaymentMethodCopyWithImpl<$Res, $Val extends PaymentMethod>
    implements $PaymentMethodCopyWith<$Res> {
  _$PaymentMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? cyberSourceFlex = freezed}) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            cyberSourceFlex:
                freezed == cyberSourceFlex
                    ? _value.cyberSourceFlex
                    : cyberSourceFlex // ignore: cast_nullable_to_non_nullable
                        as CyberSourceFlex?,
          )
          as $Val,
    );
  }

  /// Create a copy of PaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CyberSourceFlexCopyWith<$Res>? get cyberSourceFlex {
    if (_value.cyberSourceFlex == null) {
      return null;
    }

    return $CyberSourceFlexCopyWith<$Res>(_value.cyberSourceFlex!, (value) {
      return _then(_value.copyWith(cyberSourceFlex: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentMethodImplCopyWith<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  factory _$$PaymentMethodImplCopyWith(
    _$PaymentMethodImpl value,
    $Res Function(_$PaymentMethodImpl) then,
  ) = __$$PaymentMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String code,
    @JsonKey(name: 'cyber_source_flex') CyberSourceFlex? cyberSourceFlex,
  });

  @override
  $CyberSourceFlexCopyWith<$Res>? get cyberSourceFlex;
}

/// @nodoc
class __$$PaymentMethodImplCopyWithImpl<$Res>
    extends _$PaymentMethodCopyWithImpl<$Res, _$PaymentMethodImpl>
    implements _$$PaymentMethodImplCopyWith<$Res> {
  __$$PaymentMethodImplCopyWithImpl(
    _$PaymentMethodImpl _value,
    $Res Function(_$PaymentMethodImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? cyberSourceFlex = freezed}) {
    return _then(
      _$PaymentMethodImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        cyberSourceFlex:
            freezed == cyberSourceFlex
                ? _value.cyberSourceFlex
                : cyberSourceFlex // ignore: cast_nullable_to_non_nullable
                    as CyberSourceFlex?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$PaymentMethodImpl implements _PaymentMethod {
  const _$PaymentMethodImpl({
    required this.code,
    @JsonKey(name: 'cyber_source_flex') this.cyberSourceFlex,
  });

  factory _$PaymentMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentMethodImplFromJson(json);

  @override
  final String code;
  @override
  @JsonKey(name: 'cyber_source_flex')
  final CyberSourceFlex? cyberSourceFlex;

  @override
  String toString() {
    return 'PaymentMethod(code: $code, cyberSourceFlex: $cyberSourceFlex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.cyberSourceFlex, cyberSourceFlex) ||
                other.cyberSourceFlex == cyberSourceFlex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, cyberSourceFlex);

  /// Create a copy of PaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodImplCopyWith<_$PaymentMethodImpl> get copyWith =>
      __$$PaymentMethodImplCopyWithImpl<_$PaymentMethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodImplToJson(this);
  }
}

abstract class _PaymentMethod implements PaymentMethod {
  const factory _PaymentMethod({
    required final String code,
    @JsonKey(name: 'cyber_source_flex') final CyberSourceFlex? cyberSourceFlex,
  }) = _$PaymentMethodImpl;

  factory _PaymentMethod.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodImpl.fromJson;

  @override
  String get code;
  @override
  @JsonKey(name: 'cyber_source_flex')
  CyberSourceFlex? get cyberSourceFlex;

  /// Create a copy of PaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentMethodImplCopyWith<_$PaymentMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CyberSourceFlex _$CyberSourceFlexFromJson(Map<String, dynamic> json) {
  return _CyberSourceFlex.fromJson(json);
}

/// @nodoc
mixin _$CyberSourceFlex {
  @JsonKey(name: 'transient_token')
  String? get transientToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'capture_context')
  String? get captureContext => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_enabled_payment_token')
  bool? get isEnabledPaymentToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'vault_payment_hash')
  String? get vaultPaymentHash => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_card_details')
  CreditCardDetails? get creditCardDetails =>
      throw _privateConstructorUsedError;

  /// Serializes this CyberSourceFlex to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CyberSourceFlex
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CyberSourceFlexCopyWith<CyberSourceFlex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CyberSourceFlexCopyWith<$Res> {
  factory $CyberSourceFlexCopyWith(
    CyberSourceFlex value,
    $Res Function(CyberSourceFlex) then,
  ) = _$CyberSourceFlexCopyWithImpl<$Res, CyberSourceFlex>;
  @useResult
  $Res call({
    @JsonKey(name: 'transient_token') String? transientToken,
    @JsonKey(name: 'capture_context') String? captureContext,
    @JsonKey(name: 'is_enabled_payment_token') bool? isEnabledPaymentToken,
    @JsonKey(name: 'vault_payment_hash') String? vaultPaymentHash,
    @JsonKey(name: 'credit_card_details') CreditCardDetails? creditCardDetails,
  });

  $CreditCardDetailsCopyWith<$Res>? get creditCardDetails;
}

/// @nodoc
class _$CyberSourceFlexCopyWithImpl<$Res, $Val extends CyberSourceFlex>
    implements $CyberSourceFlexCopyWith<$Res> {
  _$CyberSourceFlexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CyberSourceFlex
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transientToken = freezed,
    Object? captureContext = freezed,
    Object? isEnabledPaymentToken = freezed,
    Object? vaultPaymentHash = freezed,
    Object? creditCardDetails = freezed,
  }) {
    return _then(
      _value.copyWith(
            transientToken:
                freezed == transientToken
                    ? _value.transientToken
                    : transientToken // ignore: cast_nullable_to_non_nullable
                        as String?,
            captureContext:
                freezed == captureContext
                    ? _value.captureContext
                    : captureContext // ignore: cast_nullable_to_non_nullable
                        as String?,
            isEnabledPaymentToken:
                freezed == isEnabledPaymentToken
                    ? _value.isEnabledPaymentToken
                    : isEnabledPaymentToken // ignore: cast_nullable_to_non_nullable
                        as bool?,
            vaultPaymentHash:
                freezed == vaultPaymentHash
                    ? _value.vaultPaymentHash
                    : vaultPaymentHash // ignore: cast_nullable_to_non_nullable
                        as String?,
            creditCardDetails:
                freezed == creditCardDetails
                    ? _value.creditCardDetails
                    : creditCardDetails // ignore: cast_nullable_to_non_nullable
                        as CreditCardDetails?,
          )
          as $Val,
    );
  }

  /// Create a copy of CyberSourceFlex
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreditCardDetailsCopyWith<$Res>? get creditCardDetails {
    if (_value.creditCardDetails == null) {
      return null;
    }

    return $CreditCardDetailsCopyWith<$Res>(_value.creditCardDetails!, (value) {
      return _then(_value.copyWith(creditCardDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CyberSourceFlexImplCopyWith<$Res>
    implements $CyberSourceFlexCopyWith<$Res> {
  factory _$$CyberSourceFlexImplCopyWith(
    _$CyberSourceFlexImpl value,
    $Res Function(_$CyberSourceFlexImpl) then,
  ) = __$$CyberSourceFlexImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'transient_token') String? transientToken,
    @JsonKey(name: 'capture_context') String? captureContext,
    @JsonKey(name: 'is_enabled_payment_token') bool? isEnabledPaymentToken,
    @JsonKey(name: 'vault_payment_hash') String? vaultPaymentHash,
    @JsonKey(name: 'credit_card_details') CreditCardDetails? creditCardDetails,
  });

  @override
  $CreditCardDetailsCopyWith<$Res>? get creditCardDetails;
}

/// @nodoc
class __$$CyberSourceFlexImplCopyWithImpl<$Res>
    extends _$CyberSourceFlexCopyWithImpl<$Res, _$CyberSourceFlexImpl>
    implements _$$CyberSourceFlexImplCopyWith<$Res> {
  __$$CyberSourceFlexImplCopyWithImpl(
    _$CyberSourceFlexImpl _value,
    $Res Function(_$CyberSourceFlexImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CyberSourceFlex
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transientToken = freezed,
    Object? captureContext = freezed,
    Object? isEnabledPaymentToken = freezed,
    Object? vaultPaymentHash = freezed,
    Object? creditCardDetails = freezed,
  }) {
    return _then(
      _$CyberSourceFlexImpl(
        transientToken:
            freezed == transientToken
                ? _value.transientToken
                : transientToken // ignore: cast_nullable_to_non_nullable
                    as String?,
        captureContext:
            freezed == captureContext
                ? _value.captureContext
                : captureContext // ignore: cast_nullable_to_non_nullable
                    as String?,
        isEnabledPaymentToken:
            freezed == isEnabledPaymentToken
                ? _value.isEnabledPaymentToken
                : isEnabledPaymentToken // ignore: cast_nullable_to_non_nullable
                    as bool?,
        vaultPaymentHash:
            freezed == vaultPaymentHash
                ? _value.vaultPaymentHash
                : vaultPaymentHash // ignore: cast_nullable_to_non_nullable
                    as String?,
        creditCardDetails:
            freezed == creditCardDetails
                ? _value.creditCardDetails
                : creditCardDetails // ignore: cast_nullable_to_non_nullable
                    as CreditCardDetails?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$CyberSourceFlexImpl implements _CyberSourceFlex {
  const _$CyberSourceFlexImpl({
    @JsonKey(name: 'transient_token') this.transientToken,
    @JsonKey(name: 'capture_context') this.captureContext,
    @JsonKey(name: 'is_enabled_payment_token') this.isEnabledPaymentToken,
    @JsonKey(name: 'vault_payment_hash') this.vaultPaymentHash,
    @JsonKey(name: 'credit_card_details') this.creditCardDetails,
  });

  factory _$CyberSourceFlexImpl.fromJson(Map<String, dynamic> json) =>
      _$$CyberSourceFlexImplFromJson(json);

  @override
  @JsonKey(name: 'transient_token')
  final String? transientToken;
  @override
  @JsonKey(name: 'capture_context')
  final String? captureContext;
  @override
  @JsonKey(name: 'is_enabled_payment_token')
  final bool? isEnabledPaymentToken;
  @override
  @JsonKey(name: 'vault_payment_hash')
  final String? vaultPaymentHash;
  @override
  @JsonKey(name: 'credit_card_details')
  final CreditCardDetails? creditCardDetails;

  @override
  String toString() {
    return 'CyberSourceFlex(transientToken: $transientToken, captureContext: $captureContext, isEnabledPaymentToken: $isEnabledPaymentToken, vaultPaymentHash: $vaultPaymentHash, creditCardDetails: $creditCardDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CyberSourceFlexImpl &&
            (identical(other.transientToken, transientToken) ||
                other.transientToken == transientToken) &&
            (identical(other.captureContext, captureContext) ||
                other.captureContext == captureContext) &&
            (identical(other.isEnabledPaymentToken, isEnabledPaymentToken) ||
                other.isEnabledPaymentToken == isEnabledPaymentToken) &&
            (identical(other.vaultPaymentHash, vaultPaymentHash) ||
                other.vaultPaymentHash == vaultPaymentHash) &&
            (identical(other.creditCardDetails, creditCardDetails) ||
                other.creditCardDetails == creditCardDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    transientToken,
    captureContext,
    isEnabledPaymentToken,
    vaultPaymentHash,
    creditCardDetails,
  );

  /// Create a copy of CyberSourceFlex
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CyberSourceFlexImplCopyWith<_$CyberSourceFlexImpl> get copyWith =>
      __$$CyberSourceFlexImplCopyWithImpl<_$CyberSourceFlexImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CyberSourceFlexImplToJson(this);
  }
}

abstract class _CyberSourceFlex implements CyberSourceFlex {
  const factory _CyberSourceFlex({
    @JsonKey(name: 'transient_token') final String? transientToken,
    @JsonKey(name: 'capture_context') final String? captureContext,
    @JsonKey(name: 'is_enabled_payment_token')
    final bool? isEnabledPaymentToken,
    @JsonKey(name: 'vault_payment_hash') final String? vaultPaymentHash,
    @JsonKey(name: 'credit_card_details')
    final CreditCardDetails? creditCardDetails,
  }) = _$CyberSourceFlexImpl;

  factory _CyberSourceFlex.fromJson(Map<String, dynamic> json) =
      _$CyberSourceFlexImpl.fromJson;

  @override
  @JsonKey(name: 'transient_token')
  String? get transientToken;
  @override
  @JsonKey(name: 'capture_context')
  String? get captureContext;
  @override
  @JsonKey(name: 'is_enabled_payment_token')
  bool? get isEnabledPaymentToken;
  @override
  @JsonKey(name: 'vault_payment_hash')
  String? get vaultPaymentHash;
  @override
  @JsonKey(name: 'credit_card_details')
  CreditCardDetails? get creditCardDetails;

  /// Create a copy of CyberSourceFlex
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CyberSourceFlexImplCopyWith<_$CyberSourceFlexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreditCardDetails _$CreditCardDetailsFromJson(Map<String, dynamic> json) {
  return _CreditCardDetails.fromJson(json);
}

/// @nodoc
mixin _$CreditCardDetails {
  @JsonKey(name: 'cc_type')
  String get ccType => throw _privateConstructorUsedError;
  @JsonKey(name: 'cc_exp_year')
  String get ccExpYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'cc_exp_month')
  String get ccExpMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'cc_last_4')
  String get ccLast4 => throw _privateConstructorUsedError;

  /// Serializes this CreditCardDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreditCardDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreditCardDetailsCopyWith<CreditCardDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardDetailsCopyWith<$Res> {
  factory $CreditCardDetailsCopyWith(
    CreditCardDetails value,
    $Res Function(CreditCardDetails) then,
  ) = _$CreditCardDetailsCopyWithImpl<$Res, CreditCardDetails>;
  @useResult
  $Res call({
    @JsonKey(name: 'cc_type') String ccType,
    @JsonKey(name: 'cc_exp_year') String ccExpYear,
    @JsonKey(name: 'cc_exp_month') String ccExpMonth,
    @JsonKey(name: 'cc_last_4') String ccLast4,
  });
}

/// @nodoc
class _$CreditCardDetailsCopyWithImpl<$Res, $Val extends CreditCardDetails>
    implements $CreditCardDetailsCopyWith<$Res> {
  _$CreditCardDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreditCardDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ccType = null,
    Object? ccExpYear = null,
    Object? ccExpMonth = null,
    Object? ccLast4 = null,
  }) {
    return _then(
      _value.copyWith(
            ccType:
                null == ccType
                    ? _value.ccType
                    : ccType // ignore: cast_nullable_to_non_nullable
                        as String,
            ccExpYear:
                null == ccExpYear
                    ? _value.ccExpYear
                    : ccExpYear // ignore: cast_nullable_to_non_nullable
                        as String,
            ccExpMonth:
                null == ccExpMonth
                    ? _value.ccExpMonth
                    : ccExpMonth // ignore: cast_nullable_to_non_nullable
                        as String,
            ccLast4:
                null == ccLast4
                    ? _value.ccLast4
                    : ccLast4 // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreditCardDetailsImplCopyWith<$Res>
    implements $CreditCardDetailsCopyWith<$Res> {
  factory _$$CreditCardDetailsImplCopyWith(
    _$CreditCardDetailsImpl value,
    $Res Function(_$CreditCardDetailsImpl) then,
  ) = __$$CreditCardDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'cc_type') String ccType,
    @JsonKey(name: 'cc_exp_year') String ccExpYear,
    @JsonKey(name: 'cc_exp_month') String ccExpMonth,
    @JsonKey(name: 'cc_last_4') String ccLast4,
  });
}

/// @nodoc
class __$$CreditCardDetailsImplCopyWithImpl<$Res>
    extends _$CreditCardDetailsCopyWithImpl<$Res, _$CreditCardDetailsImpl>
    implements _$$CreditCardDetailsImplCopyWith<$Res> {
  __$$CreditCardDetailsImplCopyWithImpl(
    _$CreditCardDetailsImpl _value,
    $Res Function(_$CreditCardDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreditCardDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ccType = null,
    Object? ccExpYear = null,
    Object? ccExpMonth = null,
    Object? ccLast4 = null,
  }) {
    return _then(
      _$CreditCardDetailsImpl(
        ccType:
            null == ccType
                ? _value.ccType
                : ccType // ignore: cast_nullable_to_non_nullable
                    as String,
        ccExpYear:
            null == ccExpYear
                ? _value.ccExpYear
                : ccExpYear // ignore: cast_nullable_to_non_nullable
                    as String,
        ccExpMonth:
            null == ccExpMonth
                ? _value.ccExpMonth
                : ccExpMonth // ignore: cast_nullable_to_non_nullable
                    as String,
        ccLast4:
            null == ccLast4
                ? _value.ccLast4
                : ccLast4 // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$CreditCardDetailsImpl implements _CreditCardDetails {
  const _$CreditCardDetailsImpl({
    @JsonKey(name: 'cc_type') required this.ccType,
    @JsonKey(name: 'cc_exp_year') required this.ccExpYear,
    @JsonKey(name: 'cc_exp_month') required this.ccExpMonth,
    @JsonKey(name: 'cc_last_4') required this.ccLast4,
  });

  factory _$CreditCardDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditCardDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'cc_type')
  final String ccType;
  @override
  @JsonKey(name: 'cc_exp_year')
  final String ccExpYear;
  @override
  @JsonKey(name: 'cc_exp_month')
  final String ccExpMonth;
  @override
  @JsonKey(name: 'cc_last_4')
  final String ccLast4;

  @override
  String toString() {
    return 'CreditCardDetails(ccType: $ccType, ccExpYear: $ccExpYear, ccExpMonth: $ccExpMonth, ccLast4: $ccLast4)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCardDetailsImpl &&
            (identical(other.ccType, ccType) || other.ccType == ccType) &&
            (identical(other.ccExpYear, ccExpYear) ||
                other.ccExpYear == ccExpYear) &&
            (identical(other.ccExpMonth, ccExpMonth) ||
                other.ccExpMonth == ccExpMonth) &&
            (identical(other.ccLast4, ccLast4) || other.ccLast4 == ccLast4));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ccType, ccExpYear, ccExpMonth, ccLast4);

  /// Create a copy of CreditCardDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCardDetailsImplCopyWith<_$CreditCardDetailsImpl> get copyWith =>
      __$$CreditCardDetailsImplCopyWithImpl<_$CreditCardDetailsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditCardDetailsImplToJson(this);
  }
}

abstract class _CreditCardDetails implements CreditCardDetails {
  const factory _CreditCardDetails({
    @JsonKey(name: 'cc_type') required final String ccType,
    @JsonKey(name: 'cc_exp_year') required final String ccExpYear,
    @JsonKey(name: 'cc_exp_month') required final String ccExpMonth,
    @JsonKey(name: 'cc_last_4') required final String ccLast4,
  }) = _$CreditCardDetailsImpl;

  factory _CreditCardDetails.fromJson(Map<String, dynamic> json) =
      _$CreditCardDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'cc_type')
  String get ccType;
  @override
  @JsonKey(name: 'cc_exp_year')
  String get ccExpYear;
  @override
  @JsonKey(name: 'cc_exp_month')
  String get ccExpMonth;
  @override
  @JsonKey(name: 'cc_last_4')
  String get ccLast4;

  /// Create a copy of CreditCardDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreditCardDetailsImplCopyWith<_$CreditCardDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
