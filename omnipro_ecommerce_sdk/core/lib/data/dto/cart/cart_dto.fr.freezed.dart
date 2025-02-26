// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CartDTO _$CartDTOFromJson(Map<String, dynamic> json) {
  return _CartDTO.fromJson(json);
}

/// @nodoc
mixin _$CartDTO {
  String get id => throw _privateConstructorUsedError;
  List<CartItemsDTO> get items => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  double? get tip => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_addresses')
  List<ShippingAddressOnCartDTO>? get shippingAddresses =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'available_payment_methods')
  List<AvailablePaymentMethodDTO> get availablePaymentMethods =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'billing_address')
  BillingAddressOnCartDTO? get billingAddress =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'selected_payment_method')
  SelectedPaymentMethodDTO? get selectedPaymentMethod =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'applied_coupons')
  List<AppliedCouponDTO> get appliedCoupons =>
      throw _privateConstructorUsedError;
  CartPricesDTO get prices => throw _privateConstructorUsedError;

  /// Serializes this CartDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartDTOCopyWith<CartDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartDTOCopyWith<$Res> {
  factory $CartDTOCopyWith(CartDTO value, $Res Function(CartDTO) then) =
      _$CartDTOCopyWithImpl<$Res, CartDTO>;
  @useResult
  $Res call({
    String id,
    List<CartItemsDTO> items,
    String? email,
    double? tip,
    @JsonKey(name: 'shipping_addresses')
    List<ShippingAddressOnCartDTO>? shippingAddresses,
    @JsonKey(name: 'available_payment_methods')
    List<AvailablePaymentMethodDTO> availablePaymentMethods,
    @JsonKey(name: 'billing_address') BillingAddressOnCartDTO? billingAddress,
    @JsonKey(name: 'selected_payment_method')
    SelectedPaymentMethodDTO? selectedPaymentMethod,
    @JsonKey(name: 'applied_coupons') List<AppliedCouponDTO> appliedCoupons,
    CartPricesDTO prices,
  });

  $BillingAddressOnCartDTOCopyWith<$Res>? get billingAddress;
  $SelectedPaymentMethodDTOCopyWith<$Res>? get selectedPaymentMethod;
  $CartPricesDTOCopyWith<$Res> get prices;
}

/// @nodoc
class _$CartDTOCopyWithImpl<$Res, $Val extends CartDTO>
    implements $CartDTOCopyWith<$Res> {
  _$CartDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? items = null,
    Object? email = freezed,
    Object? tip = freezed,
    Object? shippingAddresses = freezed,
    Object? availablePaymentMethods = null,
    Object? billingAddress = freezed,
    Object? selectedPaymentMethod = freezed,
    Object? appliedCoupons = null,
    Object? prices = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<CartItemsDTO>,
            email:
                freezed == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String?,
            tip:
                freezed == tip
                    ? _value.tip
                    : tip // ignore: cast_nullable_to_non_nullable
                        as double?,
            shippingAddresses:
                freezed == shippingAddresses
                    ? _value.shippingAddresses
                    : shippingAddresses // ignore: cast_nullable_to_non_nullable
                        as List<ShippingAddressOnCartDTO>?,
            availablePaymentMethods:
                null == availablePaymentMethods
                    ? _value.availablePaymentMethods
                    : availablePaymentMethods // ignore: cast_nullable_to_non_nullable
                        as List<AvailablePaymentMethodDTO>,
            billingAddress:
                freezed == billingAddress
                    ? _value.billingAddress
                    : billingAddress // ignore: cast_nullable_to_non_nullable
                        as BillingAddressOnCartDTO?,
            selectedPaymentMethod:
                freezed == selectedPaymentMethod
                    ? _value.selectedPaymentMethod
                    : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
                        as SelectedPaymentMethodDTO?,
            appliedCoupons:
                null == appliedCoupons
                    ? _value.appliedCoupons
                    : appliedCoupons // ignore: cast_nullable_to_non_nullable
                        as List<AppliedCouponDTO>,
            prices:
                null == prices
                    ? _value.prices
                    : prices // ignore: cast_nullable_to_non_nullable
                        as CartPricesDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of CartDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BillingAddressOnCartDTOCopyWith<$Res>? get billingAddress {
    if (_value.billingAddress == null) {
      return null;
    }

    return $BillingAddressOnCartDTOCopyWith<$Res>(_value.billingAddress!, (
      value,
    ) {
      return _then(_value.copyWith(billingAddress: value) as $Val);
    });
  }

  /// Create a copy of CartDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SelectedPaymentMethodDTOCopyWith<$Res>? get selectedPaymentMethod {
    if (_value.selectedPaymentMethod == null) {
      return null;
    }

    return $SelectedPaymentMethodDTOCopyWith<$Res>(
      _value.selectedPaymentMethod!,
      (value) {
        return _then(_value.copyWith(selectedPaymentMethod: value) as $Val);
      },
    );
  }

  /// Create a copy of CartDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartPricesDTOCopyWith<$Res> get prices {
    return $CartPricesDTOCopyWith<$Res>(_value.prices, (value) {
      return _then(_value.copyWith(prices: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartDTOImplCopyWith<$Res> implements $CartDTOCopyWith<$Res> {
  factory _$$CartDTOImplCopyWith(
    _$CartDTOImpl value,
    $Res Function(_$CartDTOImpl) then,
  ) = __$$CartDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    List<CartItemsDTO> items,
    String? email,
    double? tip,
    @JsonKey(name: 'shipping_addresses')
    List<ShippingAddressOnCartDTO>? shippingAddresses,
    @JsonKey(name: 'available_payment_methods')
    List<AvailablePaymentMethodDTO> availablePaymentMethods,
    @JsonKey(name: 'billing_address') BillingAddressOnCartDTO? billingAddress,
    @JsonKey(name: 'selected_payment_method')
    SelectedPaymentMethodDTO? selectedPaymentMethod,
    @JsonKey(name: 'applied_coupons') List<AppliedCouponDTO> appliedCoupons,
    CartPricesDTO prices,
  });

  @override
  $BillingAddressOnCartDTOCopyWith<$Res>? get billingAddress;
  @override
  $SelectedPaymentMethodDTOCopyWith<$Res>? get selectedPaymentMethod;
  @override
  $CartPricesDTOCopyWith<$Res> get prices;
}

/// @nodoc
class __$$CartDTOImplCopyWithImpl<$Res>
    extends _$CartDTOCopyWithImpl<$Res, _$CartDTOImpl>
    implements _$$CartDTOImplCopyWith<$Res> {
  __$$CartDTOImplCopyWithImpl(
    _$CartDTOImpl _value,
    $Res Function(_$CartDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? items = null,
    Object? email = freezed,
    Object? tip = freezed,
    Object? shippingAddresses = freezed,
    Object? availablePaymentMethods = null,
    Object? billingAddress = freezed,
    Object? selectedPaymentMethod = freezed,
    Object? appliedCoupons = null,
    Object? prices = null,
  }) {
    return _then(
      _$CartDTOImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<CartItemsDTO>,
        email:
            freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String?,
        tip:
            freezed == tip
                ? _value.tip
                : tip // ignore: cast_nullable_to_non_nullable
                    as double?,
        shippingAddresses:
            freezed == shippingAddresses
                ? _value._shippingAddresses
                : shippingAddresses // ignore: cast_nullable_to_non_nullable
                    as List<ShippingAddressOnCartDTO>?,
        availablePaymentMethods:
            null == availablePaymentMethods
                ? _value._availablePaymentMethods
                : availablePaymentMethods // ignore: cast_nullable_to_non_nullable
                    as List<AvailablePaymentMethodDTO>,
        billingAddress:
            freezed == billingAddress
                ? _value.billingAddress
                : billingAddress // ignore: cast_nullable_to_non_nullable
                    as BillingAddressOnCartDTO?,
        selectedPaymentMethod:
            freezed == selectedPaymentMethod
                ? _value.selectedPaymentMethod
                : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
                    as SelectedPaymentMethodDTO?,
        appliedCoupons:
            null == appliedCoupons
                ? _value._appliedCoupons
                : appliedCoupons // ignore: cast_nullable_to_non_nullable
                    as List<AppliedCouponDTO>,
        prices:
            null == prices
                ? _value.prices
                : prices // ignore: cast_nullable_to_non_nullable
                    as CartPricesDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CartDTOImpl implements _CartDTO {
  const _$CartDTOImpl({
    required this.id,
    final List<CartItemsDTO> items = const [],
    this.email,
    this.tip,
    @JsonKey(name: 'shipping_addresses')
    final List<ShippingAddressOnCartDTO>? shippingAddresses = const [],
    @JsonKey(name: 'available_payment_methods')
    final List<AvailablePaymentMethodDTO> availablePaymentMethods = const [],
    @JsonKey(name: 'billing_address') this.billingAddress,
    @JsonKey(name: 'selected_payment_method') this.selectedPaymentMethod,
    @JsonKey(name: 'applied_coupons')
    final List<AppliedCouponDTO> appliedCoupons = const [],
    required this.prices,
  }) : _items = items,
       _shippingAddresses = shippingAddresses,
       _availablePaymentMethods = availablePaymentMethods,
       _appliedCoupons = appliedCoupons;

  factory _$CartDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartDTOImplFromJson(json);

  @override
  final String id;
  final List<CartItemsDTO> _items;
  @override
  @JsonKey()
  List<CartItemsDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? email;
  @override
  final double? tip;
  final List<ShippingAddressOnCartDTO>? _shippingAddresses;
  @override
  @JsonKey(name: 'shipping_addresses')
  List<ShippingAddressOnCartDTO>? get shippingAddresses {
    final value = _shippingAddresses;
    if (value == null) return null;
    if (_shippingAddresses is EqualUnmodifiableListView)
      return _shippingAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AvailablePaymentMethodDTO> _availablePaymentMethods;
  @override
  @JsonKey(name: 'available_payment_methods')
  List<AvailablePaymentMethodDTO> get availablePaymentMethods {
    if (_availablePaymentMethods is EqualUnmodifiableListView)
      return _availablePaymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availablePaymentMethods);
  }

  @override
  @JsonKey(name: 'billing_address')
  final BillingAddressOnCartDTO? billingAddress;
  @override
  @JsonKey(name: 'selected_payment_method')
  final SelectedPaymentMethodDTO? selectedPaymentMethod;
  final List<AppliedCouponDTO> _appliedCoupons;
  @override
  @JsonKey(name: 'applied_coupons')
  List<AppliedCouponDTO> get appliedCoupons {
    if (_appliedCoupons is EqualUnmodifiableListView) return _appliedCoupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appliedCoupons);
  }

  @override
  final CartPricesDTO prices;

  @override
  String toString() {
    return 'CartDTO(id: $id, items: $items, email: $email, tip: $tip, shippingAddresses: $shippingAddresses, availablePaymentMethods: $availablePaymentMethods, billingAddress: $billingAddress, selectedPaymentMethod: $selectedPaymentMethod, appliedCoupons: $appliedCoupons, prices: $prices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.tip, tip) || other.tip == tip) &&
            const DeepCollectionEquality().equals(
              other._shippingAddresses,
              _shippingAddresses,
            ) &&
            const DeepCollectionEquality().equals(
              other._availablePaymentMethods,
              _availablePaymentMethods,
            ) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                other.selectedPaymentMethod == selectedPaymentMethod) &&
            const DeepCollectionEquality().equals(
              other._appliedCoupons,
              _appliedCoupons,
            ) &&
            (identical(other.prices, prices) || other.prices == prices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    const DeepCollectionEquality().hash(_items),
    email,
    tip,
    const DeepCollectionEquality().hash(_shippingAddresses),
    const DeepCollectionEquality().hash(_availablePaymentMethods),
    billingAddress,
    selectedPaymentMethod,
    const DeepCollectionEquality().hash(_appliedCoupons),
    prices,
  );

  /// Create a copy of CartDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartDTOImplCopyWith<_$CartDTOImpl> get copyWith =>
      __$$CartDTOImplCopyWithImpl<_$CartDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartDTOImplToJson(this);
  }
}

abstract class _CartDTO implements CartDTO {
  const factory _CartDTO({
    required final String id,
    final List<CartItemsDTO> items,
    final String? email,
    final double? tip,
    @JsonKey(name: 'shipping_addresses')
    final List<ShippingAddressOnCartDTO>? shippingAddresses,
    @JsonKey(name: 'available_payment_methods')
    final List<AvailablePaymentMethodDTO> availablePaymentMethods,
    @JsonKey(name: 'billing_address')
    final BillingAddressOnCartDTO? billingAddress,
    @JsonKey(name: 'selected_payment_method')
    final SelectedPaymentMethodDTO? selectedPaymentMethod,
    @JsonKey(name: 'applied_coupons')
    final List<AppliedCouponDTO> appliedCoupons,
    required final CartPricesDTO prices,
  }) = _$CartDTOImpl;

  factory _CartDTO.fromJson(Map<String, dynamic> json) = _$CartDTOImpl.fromJson;

  @override
  String get id;
  @override
  List<CartItemsDTO> get items;
  @override
  String? get email;
  @override
  double? get tip;
  @override
  @JsonKey(name: 'shipping_addresses')
  List<ShippingAddressOnCartDTO>? get shippingAddresses;
  @override
  @JsonKey(name: 'available_payment_methods')
  List<AvailablePaymentMethodDTO> get availablePaymentMethods;
  @override
  @JsonKey(name: 'billing_address')
  BillingAddressOnCartDTO? get billingAddress;
  @override
  @JsonKey(name: 'selected_payment_method')
  SelectedPaymentMethodDTO? get selectedPaymentMethod;
  @override
  @JsonKey(name: 'applied_coupons')
  List<AppliedCouponDTO> get appliedCoupons;
  @override
  CartPricesDTO get prices;

  /// Create a copy of CartDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartDTOImplCopyWith<_$CartDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppliedCouponDTO _$AppliedCouponDTOFromJson(Map<String, dynamic> json) {
  return _AppliedCouponDTO.fromJson(json);
}

/// @nodoc
mixin _$AppliedCouponDTO {
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;

  /// Serializes this AppliedCouponDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppliedCouponDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppliedCouponDTOCopyWith<AppliedCouponDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppliedCouponDTOCopyWith<$Res> {
  factory $AppliedCouponDTOCopyWith(
    AppliedCouponDTO value,
    $Res Function(AppliedCouponDTO) then,
  ) = _$AppliedCouponDTOCopyWithImpl<$Res, AppliedCouponDTO>;
  @useResult
  $Res call({@JsonKey(name: 'code') String code});
}

/// @nodoc
class _$AppliedCouponDTOCopyWithImpl<$Res, $Val extends AppliedCouponDTO>
    implements $AppliedCouponDTOCopyWith<$Res> {
  _$AppliedCouponDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppliedCouponDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null}) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppliedCouponDTOImplCopyWith<$Res>
    implements $AppliedCouponDTOCopyWith<$Res> {
  factory _$$AppliedCouponDTOImplCopyWith(
    _$AppliedCouponDTOImpl value,
    $Res Function(_$AppliedCouponDTOImpl) then,
  ) = __$$AppliedCouponDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'code') String code});
}

/// @nodoc
class __$$AppliedCouponDTOImplCopyWithImpl<$Res>
    extends _$AppliedCouponDTOCopyWithImpl<$Res, _$AppliedCouponDTOImpl>
    implements _$$AppliedCouponDTOImplCopyWith<$Res> {
  __$$AppliedCouponDTOImplCopyWithImpl(
    _$AppliedCouponDTOImpl _value,
    $Res Function(_$AppliedCouponDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppliedCouponDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null}) {
    return _then(
      _$AppliedCouponDTOImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppliedCouponDTOImpl implements _AppliedCouponDTO {
  const _$AppliedCouponDTOImpl({@JsonKey(name: 'code') required this.code});

  factory _$AppliedCouponDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppliedCouponDTOImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String code;

  @override
  String toString() {
    return 'AppliedCouponDTO(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppliedCouponDTOImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of AppliedCouponDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppliedCouponDTOImplCopyWith<_$AppliedCouponDTOImpl> get copyWith =>
      __$$AppliedCouponDTOImplCopyWithImpl<_$AppliedCouponDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AppliedCouponDTOImplToJson(this);
  }
}

abstract class _AppliedCouponDTO implements AppliedCouponDTO {
  const factory _AppliedCouponDTO({
    @JsonKey(name: 'code') required final String code,
  }) = _$AppliedCouponDTOImpl;

  factory _AppliedCouponDTO.fromJson(Map<String, dynamic> json) =
      _$AppliedCouponDTOImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  String get code;

  /// Create a copy of AppliedCouponDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppliedCouponDTOImplCopyWith<_$AppliedCouponDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartPricesDTO _$CartPricesDTOFromJson(Map<String, dynamic> json) {
  return _CartPricesDTO.fromJson(json);
}

/// @nodoc
mixin _$CartPricesDTO {
  @JsonKey(name: 'grand_total')
  MoneyDTO get grandTotalDTO => throw _privateConstructorUsedError;
  @JsonKey(name: 'catalog_discount_amount')
  CatalogDiscountAmountDTO get catalogDiscountAmountDTO =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'subtotal_excluding_tax')
  MoneyDTO get subtotalExcludingTaxDTO => throw _privateConstructorUsedError;
  @JsonKey(name: 'discounts')
  List<MoneyInfoDTO> get discountsDTO => throw _privateConstructorUsedError;
  @JsonKey(name: 'applied_taxes')
  List<MoneyInfoDTO> get appliedTaxesDTO => throw _privateConstructorUsedError;

  /// Serializes this CartPricesDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartPricesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartPricesDTOCopyWith<CartPricesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPricesDTOCopyWith<$Res> {
  factory $CartPricesDTOCopyWith(
    CartPricesDTO value,
    $Res Function(CartPricesDTO) then,
  ) = _$CartPricesDTOCopyWithImpl<$Res, CartPricesDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'grand_total') MoneyDTO grandTotalDTO,
    @JsonKey(name: 'catalog_discount_amount')
    CatalogDiscountAmountDTO catalogDiscountAmountDTO,
    @JsonKey(name: 'subtotal_excluding_tax') MoneyDTO subtotalExcludingTaxDTO,
    @JsonKey(name: 'discounts') List<MoneyInfoDTO> discountsDTO,
    @JsonKey(name: 'applied_taxes') List<MoneyInfoDTO> appliedTaxesDTO,
  });

  $MoneyDTOCopyWith<$Res> get grandTotalDTO;
  $CatalogDiscountAmountDTOCopyWith<$Res> get catalogDiscountAmountDTO;
  $MoneyDTOCopyWith<$Res> get subtotalExcludingTaxDTO;
}

/// @nodoc
class _$CartPricesDTOCopyWithImpl<$Res, $Val extends CartPricesDTO>
    implements $CartPricesDTOCopyWith<$Res> {
  _$CartPricesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartPricesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grandTotalDTO = null,
    Object? catalogDiscountAmountDTO = null,
    Object? subtotalExcludingTaxDTO = null,
    Object? discountsDTO = null,
    Object? appliedTaxesDTO = null,
  }) {
    return _then(
      _value.copyWith(
            grandTotalDTO:
                null == grandTotalDTO
                    ? _value.grandTotalDTO
                    : grandTotalDTO // ignore: cast_nullable_to_non_nullable
                        as MoneyDTO,
            catalogDiscountAmountDTO:
                null == catalogDiscountAmountDTO
                    ? _value.catalogDiscountAmountDTO
                    : catalogDiscountAmountDTO // ignore: cast_nullable_to_non_nullable
                        as CatalogDiscountAmountDTO,
            subtotalExcludingTaxDTO:
                null == subtotalExcludingTaxDTO
                    ? _value.subtotalExcludingTaxDTO
                    : subtotalExcludingTaxDTO // ignore: cast_nullable_to_non_nullable
                        as MoneyDTO,
            discountsDTO:
                null == discountsDTO
                    ? _value.discountsDTO
                    : discountsDTO // ignore: cast_nullable_to_non_nullable
                        as List<MoneyInfoDTO>,
            appliedTaxesDTO:
                null == appliedTaxesDTO
                    ? _value.appliedTaxesDTO
                    : appliedTaxesDTO // ignore: cast_nullable_to_non_nullable
                        as List<MoneyInfoDTO>,
          )
          as $Val,
    );
  }

  /// Create a copy of CartPricesDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyDTOCopyWith<$Res> get grandTotalDTO {
    return $MoneyDTOCopyWith<$Res>(_value.grandTotalDTO, (value) {
      return _then(_value.copyWith(grandTotalDTO: value) as $Val);
    });
  }

  /// Create a copy of CartPricesDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CatalogDiscountAmountDTOCopyWith<$Res> get catalogDiscountAmountDTO {
    return $CatalogDiscountAmountDTOCopyWith<$Res>(
      _value.catalogDiscountAmountDTO,
      (value) {
        return _then(_value.copyWith(catalogDiscountAmountDTO: value) as $Val);
      },
    );
  }

  /// Create a copy of CartPricesDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyDTOCopyWith<$Res> get subtotalExcludingTaxDTO {
    return $MoneyDTOCopyWith<$Res>(_value.subtotalExcludingTaxDTO, (value) {
      return _then(_value.copyWith(subtotalExcludingTaxDTO: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartPricesDTOImplCopyWith<$Res>
    implements $CartPricesDTOCopyWith<$Res> {
  factory _$$CartPricesDTOImplCopyWith(
    _$CartPricesDTOImpl value,
    $Res Function(_$CartPricesDTOImpl) then,
  ) = __$$CartPricesDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'grand_total') MoneyDTO grandTotalDTO,
    @JsonKey(name: 'catalog_discount_amount')
    CatalogDiscountAmountDTO catalogDiscountAmountDTO,
    @JsonKey(name: 'subtotal_excluding_tax') MoneyDTO subtotalExcludingTaxDTO,
    @JsonKey(name: 'discounts') List<MoneyInfoDTO> discountsDTO,
    @JsonKey(name: 'applied_taxes') List<MoneyInfoDTO> appliedTaxesDTO,
  });

  @override
  $MoneyDTOCopyWith<$Res> get grandTotalDTO;
  @override
  $CatalogDiscountAmountDTOCopyWith<$Res> get catalogDiscountAmountDTO;
  @override
  $MoneyDTOCopyWith<$Res> get subtotalExcludingTaxDTO;
}

/// @nodoc
class __$$CartPricesDTOImplCopyWithImpl<$Res>
    extends _$CartPricesDTOCopyWithImpl<$Res, _$CartPricesDTOImpl>
    implements _$$CartPricesDTOImplCopyWith<$Res> {
  __$$CartPricesDTOImplCopyWithImpl(
    _$CartPricesDTOImpl _value,
    $Res Function(_$CartPricesDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartPricesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grandTotalDTO = null,
    Object? catalogDiscountAmountDTO = null,
    Object? subtotalExcludingTaxDTO = null,
    Object? discountsDTO = null,
    Object? appliedTaxesDTO = null,
  }) {
    return _then(
      _$CartPricesDTOImpl(
        grandTotalDTO:
            null == grandTotalDTO
                ? _value.grandTotalDTO
                : grandTotalDTO // ignore: cast_nullable_to_non_nullable
                    as MoneyDTO,
        catalogDiscountAmountDTO:
            null == catalogDiscountAmountDTO
                ? _value.catalogDiscountAmountDTO
                : catalogDiscountAmountDTO // ignore: cast_nullable_to_non_nullable
                    as CatalogDiscountAmountDTO,
        subtotalExcludingTaxDTO:
            null == subtotalExcludingTaxDTO
                ? _value.subtotalExcludingTaxDTO
                : subtotalExcludingTaxDTO // ignore: cast_nullable_to_non_nullable
                    as MoneyDTO,
        discountsDTO:
            null == discountsDTO
                ? _value._discountsDTO
                : discountsDTO // ignore: cast_nullable_to_non_nullable
                    as List<MoneyInfoDTO>,
        appliedTaxesDTO:
            null == appliedTaxesDTO
                ? _value._appliedTaxesDTO
                : appliedTaxesDTO // ignore: cast_nullable_to_non_nullable
                    as List<MoneyInfoDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CartPricesDTOImpl implements _CartPricesDTO {
  const _$CartPricesDTOImpl({
    @JsonKey(name: 'grand_total') required this.grandTotalDTO,
    @JsonKey(name: 'catalog_discount_amount')
    required this.catalogDiscountAmountDTO,
    @JsonKey(name: 'subtotal_excluding_tax')
    required this.subtotalExcludingTaxDTO,
    @JsonKey(name: 'discounts')
    final List<MoneyInfoDTO> discountsDTO = const [],
    @JsonKey(name: 'applied_taxes')
    final List<MoneyInfoDTO> appliedTaxesDTO = const [],
  }) : _discountsDTO = discountsDTO,
       _appliedTaxesDTO = appliedTaxesDTO;

  factory _$CartPricesDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartPricesDTOImplFromJson(json);

  @override
  @JsonKey(name: 'grand_total')
  final MoneyDTO grandTotalDTO;
  @override
  @JsonKey(name: 'catalog_discount_amount')
  final CatalogDiscountAmountDTO catalogDiscountAmountDTO;
  @override
  @JsonKey(name: 'subtotal_excluding_tax')
  final MoneyDTO subtotalExcludingTaxDTO;
  final List<MoneyInfoDTO> _discountsDTO;
  @override
  @JsonKey(name: 'discounts')
  List<MoneyInfoDTO> get discountsDTO {
    if (_discountsDTO is EqualUnmodifiableListView) return _discountsDTO;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discountsDTO);
  }

  final List<MoneyInfoDTO> _appliedTaxesDTO;
  @override
  @JsonKey(name: 'applied_taxes')
  List<MoneyInfoDTO> get appliedTaxesDTO {
    if (_appliedTaxesDTO is EqualUnmodifiableListView) return _appliedTaxesDTO;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appliedTaxesDTO);
  }

  @override
  String toString() {
    return 'CartPricesDTO(grandTotalDTO: $grandTotalDTO, catalogDiscountAmountDTO: $catalogDiscountAmountDTO, subtotalExcludingTaxDTO: $subtotalExcludingTaxDTO, discountsDTO: $discountsDTO, appliedTaxesDTO: $appliedTaxesDTO)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartPricesDTOImpl &&
            (identical(other.grandTotalDTO, grandTotalDTO) ||
                other.grandTotalDTO == grandTotalDTO) &&
            (identical(
                  other.catalogDiscountAmountDTO,
                  catalogDiscountAmountDTO,
                ) ||
                other.catalogDiscountAmountDTO == catalogDiscountAmountDTO) &&
            (identical(
                  other.subtotalExcludingTaxDTO,
                  subtotalExcludingTaxDTO,
                ) ||
                other.subtotalExcludingTaxDTO == subtotalExcludingTaxDTO) &&
            const DeepCollectionEquality().equals(
              other._discountsDTO,
              _discountsDTO,
            ) &&
            const DeepCollectionEquality().equals(
              other._appliedTaxesDTO,
              _appliedTaxesDTO,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    grandTotalDTO,
    catalogDiscountAmountDTO,
    subtotalExcludingTaxDTO,
    const DeepCollectionEquality().hash(_discountsDTO),
    const DeepCollectionEquality().hash(_appliedTaxesDTO),
  );

  /// Create a copy of CartPricesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartPricesDTOImplCopyWith<_$CartPricesDTOImpl> get copyWith =>
      __$$CartPricesDTOImplCopyWithImpl<_$CartPricesDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartPricesDTOImplToJson(this);
  }
}

abstract class _CartPricesDTO implements CartPricesDTO {
  const factory _CartPricesDTO({
    @JsonKey(name: 'grand_total') required final MoneyDTO grandTotalDTO,
    @JsonKey(name: 'catalog_discount_amount')
    required final CatalogDiscountAmountDTO catalogDiscountAmountDTO,
    @JsonKey(name: 'subtotal_excluding_tax')
    required final MoneyDTO subtotalExcludingTaxDTO,
    @JsonKey(name: 'discounts') final List<MoneyInfoDTO> discountsDTO,
    @JsonKey(name: 'applied_taxes') final List<MoneyInfoDTO> appliedTaxesDTO,
  }) = _$CartPricesDTOImpl;

  factory _CartPricesDTO.fromJson(Map<String, dynamic> json) =
      _$CartPricesDTOImpl.fromJson;

  @override
  @JsonKey(name: 'grand_total')
  MoneyDTO get grandTotalDTO;
  @override
  @JsonKey(name: 'catalog_discount_amount')
  CatalogDiscountAmountDTO get catalogDiscountAmountDTO;
  @override
  @JsonKey(name: 'subtotal_excluding_tax')
  MoneyDTO get subtotalExcludingTaxDTO;
  @override
  @JsonKey(name: 'discounts')
  List<MoneyInfoDTO> get discountsDTO;
  @override
  @JsonKey(name: 'applied_taxes')
  List<MoneyInfoDTO> get appliedTaxesDTO;

  /// Create a copy of CartPricesDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartPricesDTOImplCopyWith<_$CartPricesDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CatalogDiscountAmountDTO _$CatalogDiscountAmountDTOFromJson(
  Map<String, dynamic> json,
) {
  return _CatalogDiscountAmountDTO.fromJson(json);
}

/// @nodoc
mixin _$CatalogDiscountAmountDTO {
  double get value => throw _privateConstructorUsedError;

  /// Serializes this CatalogDiscountAmountDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CatalogDiscountAmountDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatalogDiscountAmountDTOCopyWith<CatalogDiscountAmountDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogDiscountAmountDTOCopyWith<$Res> {
  factory $CatalogDiscountAmountDTOCopyWith(
    CatalogDiscountAmountDTO value,
    $Res Function(CatalogDiscountAmountDTO) then,
  ) = _$CatalogDiscountAmountDTOCopyWithImpl<$Res, CatalogDiscountAmountDTO>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$CatalogDiscountAmountDTOCopyWithImpl<
  $Res,
  $Val extends CatalogDiscountAmountDTO
>
    implements $CatalogDiscountAmountDTOCopyWith<$Res> {
  _$CatalogDiscountAmountDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatalogDiscountAmountDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _value.copyWith(
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CatalogDiscountAmountDTOImplCopyWith<$Res>
    implements $CatalogDiscountAmountDTOCopyWith<$Res> {
  factory _$$CatalogDiscountAmountDTOImplCopyWith(
    _$CatalogDiscountAmountDTOImpl value,
    $Res Function(_$CatalogDiscountAmountDTOImpl) then,
  ) = __$$CatalogDiscountAmountDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$CatalogDiscountAmountDTOImplCopyWithImpl<$Res>
    extends
        _$CatalogDiscountAmountDTOCopyWithImpl<
          $Res,
          _$CatalogDiscountAmountDTOImpl
        >
    implements _$$CatalogDiscountAmountDTOImplCopyWith<$Res> {
  __$$CatalogDiscountAmountDTOImplCopyWithImpl(
    _$CatalogDiscountAmountDTOImpl _value,
    $Res Function(_$CatalogDiscountAmountDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CatalogDiscountAmountDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$CatalogDiscountAmountDTOImpl(
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogDiscountAmountDTOImpl implements _CatalogDiscountAmountDTO {
  const _$CatalogDiscountAmountDTOImpl({required this.value});

  factory _$CatalogDiscountAmountDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogDiscountAmountDTOImplFromJson(json);

  @override
  final double value;

  @override
  String toString() {
    return 'CatalogDiscountAmountDTO(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogDiscountAmountDTOImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of CatalogDiscountAmountDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogDiscountAmountDTOImplCopyWith<_$CatalogDiscountAmountDTOImpl>
  get copyWith => __$$CatalogDiscountAmountDTOImplCopyWithImpl<
    _$CatalogDiscountAmountDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogDiscountAmountDTOImplToJson(this);
  }
}

abstract class _CatalogDiscountAmountDTO implements CatalogDiscountAmountDTO {
  const factory _CatalogDiscountAmountDTO({required final double value}) =
      _$CatalogDiscountAmountDTOImpl;

  factory _CatalogDiscountAmountDTO.fromJson(Map<String, dynamic> json) =
      _$CatalogDiscountAmountDTOImpl.fromJson;

  @override
  double get value;

  /// Create a copy of CatalogDiscountAmountDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogDiscountAmountDTOImplCopyWith<_$CatalogDiscountAmountDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

CartItemsDTO _$CartItemsDTOFromJson(Map<String, dynamic> json) {
  return _CartItemsDTO.fromJson(json);
}

/// @nodoc
mixin _$CartItemsDTO {
  double get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'uid')
  String get uid => throw _privateConstructorUsedError;
  ProductsItemsDTO get product => throw _privateConstructorUsedError;
  CartItemsPricesDTO get prices => throw _privateConstructorUsedError;

  /// Serializes this CartItemsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemsDTOCopyWith<CartItemsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemsDTOCopyWith<$Res> {
  factory $CartItemsDTOCopyWith(
    CartItemsDTO value,
    $Res Function(CartItemsDTO) then,
  ) = _$CartItemsDTOCopyWithImpl<$Res, CartItemsDTO>;
  @useResult
  $Res call({
    double quantity,
    @JsonKey(name: 'uid') String uid,
    ProductsItemsDTO product,
    CartItemsPricesDTO prices,
  });

  $ProductsItemsDTOCopyWith<$Res> get product;
  $CartItemsPricesDTOCopyWith<$Res> get prices;
}

/// @nodoc
class _$CartItemsDTOCopyWithImpl<$Res, $Val extends CartItemsDTO>
    implements $CartItemsDTOCopyWith<$Res> {
  _$CartItemsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? uid = null,
    Object? product = null,
    Object? prices = null,
  }) {
    return _then(
      _value.copyWith(
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as double,
            uid:
                null == uid
                    ? _value.uid
                    : uid // ignore: cast_nullable_to_non_nullable
                        as String,
            product:
                null == product
                    ? _value.product
                    : product // ignore: cast_nullable_to_non_nullable
                        as ProductsItemsDTO,
            prices:
                null == prices
                    ? _value.prices
                    : prices // ignore: cast_nullable_to_non_nullable
                        as CartItemsPricesDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of CartItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsItemsDTOCopyWith<$Res> get product {
    return $ProductsItemsDTOCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  /// Create a copy of CartItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartItemsPricesDTOCopyWith<$Res> get prices {
    return $CartItemsPricesDTOCopyWith<$Res>(_value.prices, (value) {
      return _then(_value.copyWith(prices: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartItemsDTOImplCopyWith<$Res>
    implements $CartItemsDTOCopyWith<$Res> {
  factory _$$CartItemsDTOImplCopyWith(
    _$CartItemsDTOImpl value,
    $Res Function(_$CartItemsDTOImpl) then,
  ) = __$$CartItemsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double quantity,
    @JsonKey(name: 'uid') String uid,
    ProductsItemsDTO product,
    CartItemsPricesDTO prices,
  });

  @override
  $ProductsItemsDTOCopyWith<$Res> get product;
  @override
  $CartItemsPricesDTOCopyWith<$Res> get prices;
}

/// @nodoc
class __$$CartItemsDTOImplCopyWithImpl<$Res>
    extends _$CartItemsDTOCopyWithImpl<$Res, _$CartItemsDTOImpl>
    implements _$$CartItemsDTOImplCopyWith<$Res> {
  __$$CartItemsDTOImplCopyWithImpl(
    _$CartItemsDTOImpl _value,
    $Res Function(_$CartItemsDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? uid = null,
    Object? product = null,
    Object? prices = null,
  }) {
    return _then(
      _$CartItemsDTOImpl(
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as double,
        uid:
            null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                    as String,
        product:
            null == product
                ? _value.product
                : product // ignore: cast_nullable_to_non_nullable
                    as ProductsItemsDTO,
        prices:
            null == prices
                ? _value.prices
                : prices // ignore: cast_nullable_to_non_nullable
                    as CartItemsPricesDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemsDTOImpl implements _CartItemsDTO {
  const _$CartItemsDTOImpl({
    required this.quantity,
    @JsonKey(name: 'uid') required this.uid,
    required this.product,
    required this.prices,
  });

  factory _$CartItemsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemsDTOImplFromJson(json);

  @override
  final double quantity;
  @override
  @JsonKey(name: 'uid')
  final String uid;
  @override
  final ProductsItemsDTO product;
  @override
  final CartItemsPricesDTO prices;

  @override
  String toString() {
    return 'CartItemsDTO(quantity: $quantity, uid: $uid, product: $product, prices: $prices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemsDTOImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.prices, prices) || other.prices == prices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, quantity, uid, product, prices);

  /// Create a copy of CartItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemsDTOImplCopyWith<_$CartItemsDTOImpl> get copyWith =>
      __$$CartItemsDTOImplCopyWithImpl<_$CartItemsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemsDTOImplToJson(this);
  }
}

abstract class _CartItemsDTO implements CartItemsDTO {
  const factory _CartItemsDTO({
    required final double quantity,
    @JsonKey(name: 'uid') required final String uid,
    required final ProductsItemsDTO product,
    required final CartItemsPricesDTO prices,
  }) = _$CartItemsDTOImpl;

  factory _CartItemsDTO.fromJson(Map<String, dynamic> json) =
      _$CartItemsDTOImpl.fromJson;

  @override
  double get quantity;
  @override
  @JsonKey(name: 'uid')
  String get uid;
  @override
  ProductsItemsDTO get product;
  @override
  CartItemsPricesDTO get prices;

  /// Create a copy of CartItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemsDTOImplCopyWith<_$CartItemsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartProductDTO _$CartProductDTOFromJson(Map<String, dynamic> json) {
  return _CartProductDTO.fromJson(json);
}

/// @nodoc
mixin _$CartProductDTO {
  String get name => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  ProductsImageDTO get image => throw _privateConstructorUsedError;
  @JsonKey(name: "small_image")
  ProductsImageDTO get smallImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_range')
  PriceRangeDTO get priceRange => throw _privateConstructorUsedError;

  /// Serializes this CartProductDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartProductDTOCopyWith<CartProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductDTOCopyWith<$Res> {
  factory $CartProductDTOCopyWith(
    CartProductDTO value,
    $Res Function(CartProductDTO) then,
  ) = _$CartProductDTOCopyWithImpl<$Res, CartProductDTO>;
  @useResult
  $Res call({
    String name,
    String sku,
    ProductsImageDTO image,
    @JsonKey(name: "small_image") ProductsImageDTO smallImage,
    @JsonKey(name: 'price_range') PriceRangeDTO priceRange,
  });

  $ProductsImageDTOCopyWith<$Res> get image;
  $ProductsImageDTOCopyWith<$Res> get smallImage;
  $PriceRangeDTOCopyWith<$Res> get priceRange;
}

/// @nodoc
class _$CartProductDTOCopyWithImpl<$Res, $Val extends CartProductDTO>
    implements $CartProductDTOCopyWith<$Res> {
  _$CartProductDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sku = null,
    Object? image = null,
    Object? smallImage = null,
    Object? priceRange = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            sku:
                null == sku
                    ? _value.sku
                    : sku // ignore: cast_nullable_to_non_nullable
                        as String,
            image:
                null == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as ProductsImageDTO,
            smallImage:
                null == smallImage
                    ? _value.smallImage
                    : smallImage // ignore: cast_nullable_to_non_nullable
                        as ProductsImageDTO,
            priceRange:
                null == priceRange
                    ? _value.priceRange
                    : priceRange // ignore: cast_nullable_to_non_nullable
                        as PriceRangeDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of CartProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsImageDTOCopyWith<$Res> get image {
    return $ProductsImageDTOCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }

  /// Create a copy of CartProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsImageDTOCopyWith<$Res> get smallImage {
    return $ProductsImageDTOCopyWith<$Res>(_value.smallImage, (value) {
      return _then(_value.copyWith(smallImage: value) as $Val);
    });
  }

  /// Create a copy of CartProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceRangeDTOCopyWith<$Res> get priceRange {
    return $PriceRangeDTOCopyWith<$Res>(_value.priceRange, (value) {
      return _then(_value.copyWith(priceRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartProductDTOImplCopyWith<$Res>
    implements $CartProductDTOCopyWith<$Res> {
  factory _$$CartProductDTOImplCopyWith(
    _$CartProductDTOImpl value,
    $Res Function(_$CartProductDTOImpl) then,
  ) = __$$CartProductDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String sku,
    ProductsImageDTO image,
    @JsonKey(name: "small_image") ProductsImageDTO smallImage,
    @JsonKey(name: 'price_range') PriceRangeDTO priceRange,
  });

  @override
  $ProductsImageDTOCopyWith<$Res> get image;
  @override
  $ProductsImageDTOCopyWith<$Res> get smallImage;
  @override
  $PriceRangeDTOCopyWith<$Res> get priceRange;
}

/// @nodoc
class __$$CartProductDTOImplCopyWithImpl<$Res>
    extends _$CartProductDTOCopyWithImpl<$Res, _$CartProductDTOImpl>
    implements _$$CartProductDTOImplCopyWith<$Res> {
  __$$CartProductDTOImplCopyWithImpl(
    _$CartProductDTOImpl _value,
    $Res Function(_$CartProductDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sku = null,
    Object? image = null,
    Object? smallImage = null,
    Object? priceRange = null,
  }) {
    return _then(
      _$CartProductDTOImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        sku:
            null == sku
                ? _value.sku
                : sku // ignore: cast_nullable_to_non_nullable
                    as String,
        image:
            null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as ProductsImageDTO,
        smallImage:
            null == smallImage
                ? _value.smallImage
                : smallImage // ignore: cast_nullable_to_non_nullable
                    as ProductsImageDTO,
        priceRange:
            null == priceRange
                ? _value.priceRange
                : priceRange // ignore: cast_nullable_to_non_nullable
                    as PriceRangeDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CartProductDTOImpl implements _CartProductDTO {
  const _$CartProductDTOImpl({
    required this.name,
    required this.sku,
    required this.image,
    @JsonKey(name: "small_image") required this.smallImage,
    @JsonKey(name: 'price_range') required this.priceRange,
  });

  factory _$CartProductDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartProductDTOImplFromJson(json);

  @override
  final String name;
  @override
  final String sku;
  @override
  final ProductsImageDTO image;
  @override
  @JsonKey(name: "small_image")
  final ProductsImageDTO smallImage;
  @override
  @JsonKey(name: 'price_range')
  final PriceRangeDTO priceRange;

  @override
  String toString() {
    return 'CartProductDTO(name: $name, sku: $sku, image: $image, smallImage: $smallImage, priceRange: $priceRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.smallImage, smallImage) ||
                other.smallImage == smallImage) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, sku, image, smallImage, priceRange);

  /// Create a copy of CartProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductDTOImplCopyWith<_$CartProductDTOImpl> get copyWith =>
      __$$CartProductDTOImplCopyWithImpl<_$CartProductDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CartProductDTOImplToJson(this);
  }
}

abstract class _CartProductDTO implements CartProductDTO {
  const factory _CartProductDTO({
    required final String name,
    required final String sku,
    required final ProductsImageDTO image,
    @JsonKey(name: "small_image") required final ProductsImageDTO smallImage,
    @JsonKey(name: 'price_range') required final PriceRangeDTO priceRange,
  }) = _$CartProductDTOImpl;

  factory _CartProductDTO.fromJson(Map<String, dynamic> json) =
      _$CartProductDTOImpl.fromJson;

  @override
  String get name;
  @override
  String get sku;
  @override
  ProductsImageDTO get image;
  @override
  @JsonKey(name: "small_image")
  ProductsImageDTO get smallImage;
  @override
  @JsonKey(name: 'price_range')
  PriceRangeDTO get priceRange;

  /// Create a copy of CartProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartProductDTOImplCopyWith<_$CartProductDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceRangeDTO _$PriceRangeDTOFromJson(Map<String, dynamic> json) {
  return _PriceRangeDTO.fromJson(json);
}

/// @nodoc
mixin _$PriceRangeDTO {
  @JsonKey(name: 'maximum_price')
  ItemPriceRangeDTO get maximumPrice => throw _privateConstructorUsedError;

  /// Serializes this PriceRangeDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceRangeDTOCopyWith<PriceRangeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceRangeDTOCopyWith<$Res> {
  factory $PriceRangeDTOCopyWith(
    PriceRangeDTO value,
    $Res Function(PriceRangeDTO) then,
  ) = _$PriceRangeDTOCopyWithImpl<$Res, PriceRangeDTO>;
  @useResult
  $Res call({@JsonKey(name: 'maximum_price') ItemPriceRangeDTO maximumPrice});

  $ItemPriceRangeDTOCopyWith<$Res> get maximumPrice;
}

/// @nodoc
class _$PriceRangeDTOCopyWithImpl<$Res, $Val extends PriceRangeDTO>
    implements $PriceRangeDTOCopyWith<$Res> {
  _$PriceRangeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? maximumPrice = null}) {
    return _then(
      _value.copyWith(
            maximumPrice:
                null == maximumPrice
                    ? _value.maximumPrice
                    : maximumPrice // ignore: cast_nullable_to_non_nullable
                        as ItemPriceRangeDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of PriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemPriceRangeDTOCopyWith<$Res> get maximumPrice {
    return $ItemPriceRangeDTOCopyWith<$Res>(_value.maximumPrice, (value) {
      return _then(_value.copyWith(maximumPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PriceRangeDTOImplCopyWith<$Res>
    implements $PriceRangeDTOCopyWith<$Res> {
  factory _$$PriceRangeDTOImplCopyWith(
    _$PriceRangeDTOImpl value,
    $Res Function(_$PriceRangeDTOImpl) then,
  ) = __$$PriceRangeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'maximum_price') ItemPriceRangeDTO maximumPrice});

  @override
  $ItemPriceRangeDTOCopyWith<$Res> get maximumPrice;
}

/// @nodoc
class __$$PriceRangeDTOImplCopyWithImpl<$Res>
    extends _$PriceRangeDTOCopyWithImpl<$Res, _$PriceRangeDTOImpl>
    implements _$$PriceRangeDTOImplCopyWith<$Res> {
  __$$PriceRangeDTOImplCopyWithImpl(
    _$PriceRangeDTOImpl _value,
    $Res Function(_$PriceRangeDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? maximumPrice = null}) {
    return _then(
      _$PriceRangeDTOImpl(
        maximumPrice:
            null == maximumPrice
                ? _value.maximumPrice
                : maximumPrice // ignore: cast_nullable_to_non_nullable
                    as ItemPriceRangeDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceRangeDTOImpl implements _PriceRangeDTO {
  const _$PriceRangeDTOImpl({
    @JsonKey(name: 'maximum_price') required this.maximumPrice,
  });

  factory _$PriceRangeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceRangeDTOImplFromJson(json);

  @override
  @JsonKey(name: 'maximum_price')
  final ItemPriceRangeDTO maximumPrice;

  @override
  String toString() {
    return 'PriceRangeDTO(maximumPrice: $maximumPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceRangeDTOImpl &&
            (identical(other.maximumPrice, maximumPrice) ||
                other.maximumPrice == maximumPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, maximumPrice);

  /// Create a copy of PriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceRangeDTOImplCopyWith<_$PriceRangeDTOImpl> get copyWith =>
      __$$PriceRangeDTOImplCopyWithImpl<_$PriceRangeDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceRangeDTOImplToJson(this);
  }
}

abstract class _PriceRangeDTO implements PriceRangeDTO {
  const factory _PriceRangeDTO({
    @JsonKey(name: 'maximum_price')
    required final ItemPriceRangeDTO maximumPrice,
  }) = _$PriceRangeDTOImpl;

  factory _PriceRangeDTO.fromJson(Map<String, dynamic> json) =
      _$PriceRangeDTOImpl.fromJson;

  @override
  @JsonKey(name: 'maximum_price')
  ItemPriceRangeDTO get maximumPrice;

  /// Create a copy of PriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceRangeDTOImplCopyWith<_$PriceRangeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemPriceRangeDTO _$ItemPriceRangeDTOFromJson(Map<String, dynamic> json) {
  return _ItemPriceRangeDTO.fromJson(json);
}

/// @nodoc
mixin _$ItemPriceRangeDTO {
  @JsonKey(name: 'final_price')
  MoneyDTO get finalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'regular_price')
  MoneyDTO get regularPrice => throw _privateConstructorUsedError;
  DiscountDTO get discount => throw _privateConstructorUsedError;

  /// Serializes this ItemPriceRangeDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemPriceRangeDTOCopyWith<ItemPriceRangeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemPriceRangeDTOCopyWith<$Res> {
  factory $ItemPriceRangeDTOCopyWith(
    ItemPriceRangeDTO value,
    $Res Function(ItemPriceRangeDTO) then,
  ) = _$ItemPriceRangeDTOCopyWithImpl<$Res, ItemPriceRangeDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'final_price') MoneyDTO finalPrice,
    @JsonKey(name: 'regular_price') MoneyDTO regularPrice,
    DiscountDTO discount,
  });

  $MoneyDTOCopyWith<$Res> get finalPrice;
  $MoneyDTOCopyWith<$Res> get regularPrice;
  $DiscountDTOCopyWith<$Res> get discount;
}

/// @nodoc
class _$ItemPriceRangeDTOCopyWithImpl<$Res, $Val extends ItemPriceRangeDTO>
    implements $ItemPriceRangeDTOCopyWith<$Res> {
  _$ItemPriceRangeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finalPrice = null,
    Object? regularPrice = null,
    Object? discount = null,
  }) {
    return _then(
      _value.copyWith(
            finalPrice:
                null == finalPrice
                    ? _value.finalPrice
                    : finalPrice // ignore: cast_nullable_to_non_nullable
                        as MoneyDTO,
            regularPrice:
                null == regularPrice
                    ? _value.regularPrice
                    : regularPrice // ignore: cast_nullable_to_non_nullable
                        as MoneyDTO,
            discount:
                null == discount
                    ? _value.discount
                    : discount // ignore: cast_nullable_to_non_nullable
                        as DiscountDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of ItemPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyDTOCopyWith<$Res> get finalPrice {
    return $MoneyDTOCopyWith<$Res>(_value.finalPrice, (value) {
      return _then(_value.copyWith(finalPrice: value) as $Val);
    });
  }

  /// Create a copy of ItemPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyDTOCopyWith<$Res> get regularPrice {
    return $MoneyDTOCopyWith<$Res>(_value.regularPrice, (value) {
      return _then(_value.copyWith(regularPrice: value) as $Val);
    });
  }

  /// Create a copy of ItemPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountDTOCopyWith<$Res> get discount {
    return $DiscountDTOCopyWith<$Res>(_value.discount, (value) {
      return _then(_value.copyWith(discount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemPriceRangeDTOImplCopyWith<$Res>
    implements $ItemPriceRangeDTOCopyWith<$Res> {
  factory _$$ItemPriceRangeDTOImplCopyWith(
    _$ItemPriceRangeDTOImpl value,
    $Res Function(_$ItemPriceRangeDTOImpl) then,
  ) = __$$ItemPriceRangeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'final_price') MoneyDTO finalPrice,
    @JsonKey(name: 'regular_price') MoneyDTO regularPrice,
    DiscountDTO discount,
  });

  @override
  $MoneyDTOCopyWith<$Res> get finalPrice;
  @override
  $MoneyDTOCopyWith<$Res> get regularPrice;
  @override
  $DiscountDTOCopyWith<$Res> get discount;
}

/// @nodoc
class __$$ItemPriceRangeDTOImplCopyWithImpl<$Res>
    extends _$ItemPriceRangeDTOCopyWithImpl<$Res, _$ItemPriceRangeDTOImpl>
    implements _$$ItemPriceRangeDTOImplCopyWith<$Res> {
  __$$ItemPriceRangeDTOImplCopyWithImpl(
    _$ItemPriceRangeDTOImpl _value,
    $Res Function(_$ItemPriceRangeDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finalPrice = null,
    Object? regularPrice = null,
    Object? discount = null,
  }) {
    return _then(
      _$ItemPriceRangeDTOImpl(
        finalPrice:
            null == finalPrice
                ? _value.finalPrice
                : finalPrice // ignore: cast_nullable_to_non_nullable
                    as MoneyDTO,
        regularPrice:
            null == regularPrice
                ? _value.regularPrice
                : regularPrice // ignore: cast_nullable_to_non_nullable
                    as MoneyDTO,
        discount:
            null == discount
                ? _value.discount
                : discount // ignore: cast_nullable_to_non_nullable
                    as DiscountDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemPriceRangeDTOImpl implements _ItemPriceRangeDTO {
  const _$ItemPriceRangeDTOImpl({
    @JsonKey(name: 'final_price') required this.finalPrice,
    @JsonKey(name: 'regular_price') required this.regularPrice,
    required this.discount,
  });

  factory _$ItemPriceRangeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemPriceRangeDTOImplFromJson(json);

  @override
  @JsonKey(name: 'final_price')
  final MoneyDTO finalPrice;
  @override
  @JsonKey(name: 'regular_price')
  final MoneyDTO regularPrice;
  @override
  final DiscountDTO discount;

  @override
  String toString() {
    return 'ItemPriceRangeDTO(finalPrice: $finalPrice, regularPrice: $regularPrice, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemPriceRangeDTOImpl &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.regularPrice, regularPrice) ||
                other.regularPrice == regularPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, finalPrice, regularPrice, discount);

  /// Create a copy of ItemPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemPriceRangeDTOImplCopyWith<_$ItemPriceRangeDTOImpl> get copyWith =>
      __$$ItemPriceRangeDTOImplCopyWithImpl<_$ItemPriceRangeDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemPriceRangeDTOImplToJson(this);
  }
}

abstract class _ItemPriceRangeDTO implements ItemPriceRangeDTO {
  const factory _ItemPriceRangeDTO({
    @JsonKey(name: 'final_price') required final MoneyDTO finalPrice,
    @JsonKey(name: 'regular_price') required final MoneyDTO regularPrice,
    required final DiscountDTO discount,
  }) = _$ItemPriceRangeDTOImpl;

  factory _ItemPriceRangeDTO.fromJson(Map<String, dynamic> json) =
      _$ItemPriceRangeDTOImpl.fromJson;

  @override
  @JsonKey(name: 'final_price')
  MoneyDTO get finalPrice;
  @override
  @JsonKey(name: 'regular_price')
  MoneyDTO get regularPrice;
  @override
  DiscountDTO get discount;

  /// Create a copy of ItemPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemPriceRangeDTOImplCopyWith<_$ItemPriceRangeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiscountDTO _$DiscountDTOFromJson(Map<String, dynamic> json) {
  return _DiscountDTO.fromJson(json);
}

/// @nodoc
mixin _$DiscountDTO {
  @JsonKey(name: 'amount_off')
  double get amountOff => throw _privateConstructorUsedError;

  /// Serializes this DiscountDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountDTOCopyWith<DiscountDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountDTOCopyWith<$Res> {
  factory $DiscountDTOCopyWith(
    DiscountDTO value,
    $Res Function(DiscountDTO) then,
  ) = _$DiscountDTOCopyWithImpl<$Res, DiscountDTO>;
  @useResult
  $Res call({@JsonKey(name: 'amount_off') double amountOff});
}

/// @nodoc
class _$DiscountDTOCopyWithImpl<$Res, $Val extends DiscountDTO>
    implements $DiscountDTOCopyWith<$Res> {
  _$DiscountDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amountOff = null}) {
    return _then(
      _value.copyWith(
            amountOff:
                null == amountOff
                    ? _value.amountOff
                    : amountOff // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DiscountDTOImplCopyWith<$Res>
    implements $DiscountDTOCopyWith<$Res> {
  factory _$$DiscountDTOImplCopyWith(
    _$DiscountDTOImpl value,
    $Res Function(_$DiscountDTOImpl) then,
  ) = __$$DiscountDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'amount_off') double amountOff});
}

/// @nodoc
class __$$DiscountDTOImplCopyWithImpl<$Res>
    extends _$DiscountDTOCopyWithImpl<$Res, _$DiscountDTOImpl>
    implements _$$DiscountDTOImplCopyWith<$Res> {
  __$$DiscountDTOImplCopyWithImpl(
    _$DiscountDTOImpl _value,
    $Res Function(_$DiscountDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DiscountDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amountOff = null}) {
    return _then(
      _$DiscountDTOImpl(
        amountOff:
            null == amountOff
                ? _value.amountOff
                : amountOff // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountDTOImpl implements _DiscountDTO {
  const _$DiscountDTOImpl({
    @JsonKey(name: 'amount_off') required this.amountOff,
  });

  factory _$DiscountDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountDTOImplFromJson(json);

  @override
  @JsonKey(name: 'amount_off')
  final double amountOff;

  @override
  String toString() {
    return 'DiscountDTO(amountOff: $amountOff)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountDTOImpl &&
            (identical(other.amountOff, amountOff) ||
                other.amountOff == amountOff));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amountOff);

  /// Create a copy of DiscountDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountDTOImplCopyWith<_$DiscountDTOImpl> get copyWith =>
      __$$DiscountDTOImplCopyWithImpl<_$DiscountDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountDTOImplToJson(this);
  }
}

abstract class _DiscountDTO implements DiscountDTO {
  const factory _DiscountDTO({
    @JsonKey(name: 'amount_off') required final double amountOff,
  }) = _$DiscountDTOImpl;

  factory _DiscountDTO.fromJson(Map<String, dynamic> json) =
      _$DiscountDTOImpl.fromJson;

  @override
  @JsonKey(name: 'amount_off')
  double get amountOff;

  /// Create a copy of DiscountDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountDTOImplCopyWith<_$DiscountDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartItemsPricesDTO _$CartItemsPricesDTOFromJson(Map<String, dynamic> json) {
  return _CartItemsPricesDTO.fromJson(json);
}

/// @nodoc
mixin _$CartItemsPricesDTO {
  CartItemPriceDto get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'applied_taxes')
  List<AppliedTaxesDTO> get appliedTaxes => throw _privateConstructorUsedError;

  /// Serializes this CartItemsPricesDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartItemsPricesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemsPricesDTOCopyWith<CartItemsPricesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemsPricesDTOCopyWith<$Res> {
  factory $CartItemsPricesDTOCopyWith(
    CartItemsPricesDTO value,
    $Res Function(CartItemsPricesDTO) then,
  ) = _$CartItemsPricesDTOCopyWithImpl<$Res, CartItemsPricesDTO>;
  @useResult
  $Res call({
    CartItemPriceDto price,
    @JsonKey(name: 'applied_taxes') List<AppliedTaxesDTO> appliedTaxes,
  });

  $CartItemPriceDtoCopyWith<$Res> get price;
}

/// @nodoc
class _$CartItemsPricesDTOCopyWithImpl<$Res, $Val extends CartItemsPricesDTO>
    implements $CartItemsPricesDTOCopyWith<$Res> {
  _$CartItemsPricesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItemsPricesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? price = null, Object? appliedTaxes = null}) {
    return _then(
      _value.copyWith(
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as CartItemPriceDto,
            appliedTaxes:
                null == appliedTaxes
                    ? _value.appliedTaxes
                    : appliedTaxes // ignore: cast_nullable_to_non_nullable
                        as List<AppliedTaxesDTO>,
          )
          as $Val,
    );
  }

  /// Create a copy of CartItemsPricesDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartItemPriceDtoCopyWith<$Res> get price {
    return $CartItemPriceDtoCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartItemsPricesDTOImplCopyWith<$Res>
    implements $CartItemsPricesDTOCopyWith<$Res> {
  factory _$$CartItemsPricesDTOImplCopyWith(
    _$CartItemsPricesDTOImpl value,
    $Res Function(_$CartItemsPricesDTOImpl) then,
  ) = __$$CartItemsPricesDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    CartItemPriceDto price,
    @JsonKey(name: 'applied_taxes') List<AppliedTaxesDTO> appliedTaxes,
  });

  @override
  $CartItemPriceDtoCopyWith<$Res> get price;
}

/// @nodoc
class __$$CartItemsPricesDTOImplCopyWithImpl<$Res>
    extends _$CartItemsPricesDTOCopyWithImpl<$Res, _$CartItemsPricesDTOImpl>
    implements _$$CartItemsPricesDTOImplCopyWith<$Res> {
  __$$CartItemsPricesDTOImplCopyWithImpl(
    _$CartItemsPricesDTOImpl _value,
    $Res Function(_$CartItemsPricesDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartItemsPricesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? price = null, Object? appliedTaxes = null}) {
    return _then(
      _$CartItemsPricesDTOImpl(
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as CartItemPriceDto,
        appliedTaxes:
            null == appliedTaxes
                ? _value._appliedTaxes
                : appliedTaxes // ignore: cast_nullable_to_non_nullable
                    as List<AppliedTaxesDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemsPricesDTOImpl implements _CartItemsPricesDTO {
  const _$CartItemsPricesDTOImpl({
    required this.price,
    @JsonKey(name: 'applied_taxes')
    final List<AppliedTaxesDTO> appliedTaxes = const [],
  }) : _appliedTaxes = appliedTaxes;

  factory _$CartItemsPricesDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemsPricesDTOImplFromJson(json);

  @override
  final CartItemPriceDto price;
  final List<AppliedTaxesDTO> _appliedTaxes;
  @override
  @JsonKey(name: 'applied_taxes')
  List<AppliedTaxesDTO> get appliedTaxes {
    if (_appliedTaxes is EqualUnmodifiableListView) return _appliedTaxes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appliedTaxes);
  }

  @override
  String toString() {
    return 'CartItemsPricesDTO(price: $price, appliedTaxes: $appliedTaxes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemsPricesDTOImpl &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(
              other._appliedTaxes,
              _appliedTaxes,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    price,
    const DeepCollectionEquality().hash(_appliedTaxes),
  );

  /// Create a copy of CartItemsPricesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemsPricesDTOImplCopyWith<_$CartItemsPricesDTOImpl> get copyWith =>
      __$$CartItemsPricesDTOImplCopyWithImpl<_$CartItemsPricesDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemsPricesDTOImplToJson(this);
  }
}

abstract class _CartItemsPricesDTO implements CartItemsPricesDTO {
  const factory _CartItemsPricesDTO({
    required final CartItemPriceDto price,
    @JsonKey(name: 'applied_taxes') final List<AppliedTaxesDTO> appliedTaxes,
  }) = _$CartItemsPricesDTOImpl;

  factory _CartItemsPricesDTO.fromJson(Map<String, dynamic> json) =
      _$CartItemsPricesDTOImpl.fromJson;

  @override
  CartItemPriceDto get price;
  @override
  @JsonKey(name: 'applied_taxes')
  List<AppliedTaxesDTO> get appliedTaxes;

  /// Create a copy of CartItemsPricesDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemsPricesDTOImplCopyWith<_$CartItemsPricesDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppliedTaxesDTO _$AppliedTaxesDTOFromJson(Map<String, dynamic> json) {
  return _AppliedTaxesDTO.fromJson(json);
}

/// @nodoc
mixin _$AppliedTaxesDTO {
  String get label => throw _privateConstructorUsedError;
  MoneyDTO get amount => throw _privateConstructorUsedError;

  /// Serializes this AppliedTaxesDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppliedTaxesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppliedTaxesDTOCopyWith<AppliedTaxesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppliedTaxesDTOCopyWith<$Res> {
  factory $AppliedTaxesDTOCopyWith(
    AppliedTaxesDTO value,
    $Res Function(AppliedTaxesDTO) then,
  ) = _$AppliedTaxesDTOCopyWithImpl<$Res, AppliedTaxesDTO>;
  @useResult
  $Res call({String label, MoneyDTO amount});

  $MoneyDTOCopyWith<$Res> get amount;
}

/// @nodoc
class _$AppliedTaxesDTOCopyWithImpl<$Res, $Val extends AppliedTaxesDTO>
    implements $AppliedTaxesDTOCopyWith<$Res> {
  _$AppliedTaxesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppliedTaxesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = null, Object? amount = null}) {
    return _then(
      _value.copyWith(
            label:
                null == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as String,
            amount:
                null == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as MoneyDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of AppliedTaxesDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyDTOCopyWith<$Res> get amount {
    return $MoneyDTOCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppliedTaxesDTOImplCopyWith<$Res>
    implements $AppliedTaxesDTOCopyWith<$Res> {
  factory _$$AppliedTaxesDTOImplCopyWith(
    _$AppliedTaxesDTOImpl value,
    $Res Function(_$AppliedTaxesDTOImpl) then,
  ) = __$$AppliedTaxesDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, MoneyDTO amount});

  @override
  $MoneyDTOCopyWith<$Res> get amount;
}

/// @nodoc
class __$$AppliedTaxesDTOImplCopyWithImpl<$Res>
    extends _$AppliedTaxesDTOCopyWithImpl<$Res, _$AppliedTaxesDTOImpl>
    implements _$$AppliedTaxesDTOImplCopyWith<$Res> {
  __$$AppliedTaxesDTOImplCopyWithImpl(
    _$AppliedTaxesDTOImpl _value,
    $Res Function(_$AppliedTaxesDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppliedTaxesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = null, Object? amount = null}) {
    return _then(
      _$AppliedTaxesDTOImpl(
        label:
            null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String,
        amount:
            null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as MoneyDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppliedTaxesDTOImpl implements _AppliedTaxesDTO {
  const _$AppliedTaxesDTOImpl({required this.label, required this.amount});

  factory _$AppliedTaxesDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppliedTaxesDTOImplFromJson(json);

  @override
  final String label;
  @override
  final MoneyDTO amount;

  @override
  String toString() {
    return 'AppliedTaxesDTO(label: $label, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppliedTaxesDTOImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, amount);

  /// Create a copy of AppliedTaxesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppliedTaxesDTOImplCopyWith<_$AppliedTaxesDTOImpl> get copyWith =>
      __$$AppliedTaxesDTOImplCopyWithImpl<_$AppliedTaxesDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AppliedTaxesDTOImplToJson(this);
  }
}

abstract class _AppliedTaxesDTO implements AppliedTaxesDTO {
  const factory _AppliedTaxesDTO({
    required final String label,
    required final MoneyDTO amount,
  }) = _$AppliedTaxesDTOImpl;

  factory _AppliedTaxesDTO.fromJson(Map<String, dynamic> json) =
      _$AppliedTaxesDTOImpl.fromJson;

  @override
  String get label;
  @override
  MoneyDTO get amount;

  /// Create a copy of AppliedTaxesDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppliedTaxesDTOImplCopyWith<_$AppliedTaxesDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartItemPriceDto _$CartItemPriceDtoFromJson(Map<String, dynamic> json) {
  return _CartItemPriceDto.fromJson(json);
}

/// @nodoc
mixin _$CartItemPriceDto {
  double get value => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  /// Serializes this CartItemPriceDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartItemPriceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemPriceDtoCopyWith<CartItemPriceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemPriceDtoCopyWith<$Res> {
  factory $CartItemPriceDtoCopyWith(
    CartItemPriceDto value,
    $Res Function(CartItemPriceDto) then,
  ) = _$CartItemPriceDtoCopyWithImpl<$Res, CartItemPriceDto>;
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class _$CartItemPriceDtoCopyWithImpl<$Res, $Val extends CartItemPriceDto>
    implements $CartItemPriceDtoCopyWith<$Res> {
  _$CartItemPriceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItemPriceDto
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
abstract class _$$CartItemPriceDtoImplCopyWith<$Res>
    implements $CartItemPriceDtoCopyWith<$Res> {
  factory _$$CartItemPriceDtoImplCopyWith(
    _$CartItemPriceDtoImpl value,
    $Res Function(_$CartItemPriceDtoImpl) then,
  ) = __$$CartItemPriceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class __$$CartItemPriceDtoImplCopyWithImpl<$Res>
    extends _$CartItemPriceDtoCopyWithImpl<$Res, _$CartItemPriceDtoImpl>
    implements _$$CartItemPriceDtoImplCopyWith<$Res> {
  __$$CartItemPriceDtoImplCopyWithImpl(
    _$CartItemPriceDtoImpl _value,
    $Res Function(_$CartItemPriceDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartItemPriceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? currency = null}) {
    return _then(
      _$CartItemPriceDtoImpl(
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
class _$CartItemPriceDtoImpl implements _CartItemPriceDto {
  const _$CartItemPriceDtoImpl({required this.value, required this.currency});

  factory _$CartItemPriceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemPriceDtoImplFromJson(json);

  @override
  final double value;
  @override
  final String currency;

  @override
  String toString() {
    return 'CartItemPriceDto(value: $value, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemPriceDtoImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, currency);

  /// Create a copy of CartItemPriceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemPriceDtoImplCopyWith<_$CartItemPriceDtoImpl> get copyWith =>
      __$$CartItemPriceDtoImplCopyWithImpl<_$CartItemPriceDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemPriceDtoImplToJson(this);
  }
}

abstract class _CartItemPriceDto implements CartItemPriceDto {
  const factory _CartItemPriceDto({
    required final double value,
    required final String currency,
  }) = _$CartItemPriceDtoImpl;

  factory _CartItemPriceDto.fromJson(Map<String, dynamic> json) =
      _$CartItemPriceDtoImpl.fromJson;

  @override
  double get value;
  @override
  String get currency;

  /// Create a copy of CartItemPriceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemPriceDtoImplCopyWith<_$CartItemPriceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SelectedPaymentMethodDTO _$SelectedPaymentMethodDTOFromJson(
  Map<String, dynamic> json,
) {
  return _SelectedPaymentMethodDTO.fromJson(json);
}

/// @nodoc
mixin _$SelectedPaymentMethodDTO {
  String get code => throw _privateConstructorUsedError;

  /// Serializes this SelectedPaymentMethodDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SelectedPaymentMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectedPaymentMethodDTOCopyWith<SelectedPaymentMethodDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedPaymentMethodDTOCopyWith<$Res> {
  factory $SelectedPaymentMethodDTOCopyWith(
    SelectedPaymentMethodDTO value,
    $Res Function(SelectedPaymentMethodDTO) then,
  ) = _$SelectedPaymentMethodDTOCopyWithImpl<$Res, SelectedPaymentMethodDTO>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$SelectedPaymentMethodDTOCopyWithImpl<
  $Res,
  $Val extends SelectedPaymentMethodDTO
>
    implements $SelectedPaymentMethodDTOCopyWith<$Res> {
  _$SelectedPaymentMethodDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedPaymentMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null}) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SelectedPaymentMethodDTOImplCopyWith<$Res>
    implements $SelectedPaymentMethodDTOCopyWith<$Res> {
  factory _$$SelectedPaymentMethodDTOImplCopyWith(
    _$SelectedPaymentMethodDTOImpl value,
    $Res Function(_$SelectedPaymentMethodDTOImpl) then,
  ) = __$$SelectedPaymentMethodDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$SelectedPaymentMethodDTOImplCopyWithImpl<$Res>
    extends
        _$SelectedPaymentMethodDTOCopyWithImpl<
          $Res,
          _$SelectedPaymentMethodDTOImpl
        >
    implements _$$SelectedPaymentMethodDTOImplCopyWith<$Res> {
  __$$SelectedPaymentMethodDTOImplCopyWithImpl(
    _$SelectedPaymentMethodDTOImpl _value,
    $Res Function(_$SelectedPaymentMethodDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SelectedPaymentMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null}) {
    return _then(
      _$SelectedPaymentMethodDTOImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectedPaymentMethodDTOImpl implements _SelectedPaymentMethodDTO {
  const _$SelectedPaymentMethodDTOImpl({this.code = ''});

  factory _$SelectedPaymentMethodDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectedPaymentMethodDTOImplFromJson(json);

  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'SelectedPaymentMethodDTO(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedPaymentMethodDTOImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of SelectedPaymentMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedPaymentMethodDTOImplCopyWith<_$SelectedPaymentMethodDTOImpl>
  get copyWith => __$$SelectedPaymentMethodDTOImplCopyWithImpl<
    _$SelectedPaymentMethodDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedPaymentMethodDTOImplToJson(this);
  }
}

abstract class _SelectedPaymentMethodDTO implements SelectedPaymentMethodDTO {
  const factory _SelectedPaymentMethodDTO({final String code}) =
      _$SelectedPaymentMethodDTOImpl;

  factory _SelectedPaymentMethodDTO.fromJson(Map<String, dynamic> json) =
      _$SelectedPaymentMethodDTOImpl.fromJson;

  @override
  String get code;

  /// Create a copy of SelectedPaymentMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedPaymentMethodDTOImplCopyWith<_$SelectedPaymentMethodDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

BillingAddressOnCartDTO _$BillingAddressOnCartDTOFromJson(
  Map<String, dynamic> json,
) {
  return _BillingAddressOnCartDTO.fromJson(json);
}

/// @nodoc
mixin _$BillingAddressOnCartDTO {
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  List<String> get street => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get telephone => throw _privateConstructorUsedError;
  String? get postcode => throw _privateConstructorUsedError;
  LocalizationItemDTO get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_custom')
  String? get cityCustom => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_custom')
  String? get stateCustom => throw _privateConstructorUsedError;
  @JsonKey(name: 'zone_custom')
  String? get zoneCustom => throw _privateConstructorUsedError;

  /// Serializes this BillingAddressOnCartDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BillingAddressOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillingAddressOnCartDTOCopyWith<BillingAddressOnCartDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingAddressOnCartDTOCopyWith<$Res> {
  factory $BillingAddressOnCartDTOCopyWith(
    BillingAddressOnCartDTO value,
    $Res Function(BillingAddressOnCartDTO) then,
  ) = _$BillingAddressOnCartDTOCopyWithImpl<$Res, BillingAddressOnCartDTO>;
  @useResult
  $Res call({
    String firstname,
    String lastname,
    List<String> street,
    String city,
    String telephone,
    String? postcode,
    LocalizationItemDTO country,
    @JsonKey(name: 'city_custom') String? cityCustom,
    @JsonKey(name: 'state_custom') String? stateCustom,
    @JsonKey(name: 'zone_custom') String? zoneCustom,
  });

  $LocalizationItemDTOCopyWith<$Res> get country;
}

/// @nodoc
class _$BillingAddressOnCartDTOCopyWithImpl<
  $Res,
  $Val extends BillingAddressOnCartDTO
>
    implements $BillingAddressOnCartDTOCopyWith<$Res> {
  _$BillingAddressOnCartDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillingAddressOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? street = null,
    Object? city = null,
    Object? telephone = null,
    Object? postcode = freezed,
    Object? country = null,
    Object? cityCustom = freezed,
    Object? stateCustom = freezed,
    Object? zoneCustom = freezed,
  }) {
    return _then(
      _value.copyWith(
            firstname:
                null == firstname
                    ? _value.firstname
                    : firstname // ignore: cast_nullable_to_non_nullable
                        as String,
            lastname:
                null == lastname
                    ? _value.lastname
                    : lastname // ignore: cast_nullable_to_non_nullable
                        as String,
            street:
                null == street
                    ? _value.street
                    : street // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            city:
                null == city
                    ? _value.city
                    : city // ignore: cast_nullable_to_non_nullable
                        as String,
            telephone:
                null == telephone
                    ? _value.telephone
                    : telephone // ignore: cast_nullable_to_non_nullable
                        as String,
            postcode:
                freezed == postcode
                    ? _value.postcode
                    : postcode // ignore: cast_nullable_to_non_nullable
                        as String?,
            country:
                null == country
                    ? _value.country
                    : country // ignore: cast_nullable_to_non_nullable
                        as LocalizationItemDTO,
            cityCustom:
                freezed == cityCustom
                    ? _value.cityCustom
                    : cityCustom // ignore: cast_nullable_to_non_nullable
                        as String?,
            stateCustom:
                freezed == stateCustom
                    ? _value.stateCustom
                    : stateCustom // ignore: cast_nullable_to_non_nullable
                        as String?,
            zoneCustom:
                freezed == zoneCustom
                    ? _value.zoneCustom
                    : zoneCustom // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of BillingAddressOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizationItemDTOCopyWith<$Res> get country {
    return $LocalizationItemDTOCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BillingAddressOnCartDTOImplCopyWith<$Res>
    implements $BillingAddressOnCartDTOCopyWith<$Res> {
  factory _$$BillingAddressOnCartDTOImplCopyWith(
    _$BillingAddressOnCartDTOImpl value,
    $Res Function(_$BillingAddressOnCartDTOImpl) then,
  ) = __$$BillingAddressOnCartDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String firstname,
    String lastname,
    List<String> street,
    String city,
    String telephone,
    String? postcode,
    LocalizationItemDTO country,
    @JsonKey(name: 'city_custom') String? cityCustom,
    @JsonKey(name: 'state_custom') String? stateCustom,
    @JsonKey(name: 'zone_custom') String? zoneCustom,
  });

  @override
  $LocalizationItemDTOCopyWith<$Res> get country;
}

/// @nodoc
class __$$BillingAddressOnCartDTOImplCopyWithImpl<$Res>
    extends
        _$BillingAddressOnCartDTOCopyWithImpl<
          $Res,
          _$BillingAddressOnCartDTOImpl
        >
    implements _$$BillingAddressOnCartDTOImplCopyWith<$Res> {
  __$$BillingAddressOnCartDTOImplCopyWithImpl(
    _$BillingAddressOnCartDTOImpl _value,
    $Res Function(_$BillingAddressOnCartDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BillingAddressOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? street = null,
    Object? city = null,
    Object? telephone = null,
    Object? postcode = freezed,
    Object? country = null,
    Object? cityCustom = freezed,
    Object? stateCustom = freezed,
    Object? zoneCustom = freezed,
  }) {
    return _then(
      _$BillingAddressOnCartDTOImpl(
        firstname:
            null == firstname
                ? _value.firstname
                : firstname // ignore: cast_nullable_to_non_nullable
                    as String,
        lastname:
            null == lastname
                ? _value.lastname
                : lastname // ignore: cast_nullable_to_non_nullable
                    as String,
        street:
            null == street
                ? _value._street
                : street // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        city:
            null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                    as String,
        telephone:
            null == telephone
                ? _value.telephone
                : telephone // ignore: cast_nullable_to_non_nullable
                    as String,
        postcode:
            freezed == postcode
                ? _value.postcode
                : postcode // ignore: cast_nullable_to_non_nullable
                    as String?,
        country:
            null == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                    as LocalizationItemDTO,
        cityCustom:
            freezed == cityCustom
                ? _value.cityCustom
                : cityCustom // ignore: cast_nullable_to_non_nullable
                    as String?,
        stateCustom:
            freezed == stateCustom
                ? _value.stateCustom
                : stateCustom // ignore: cast_nullable_to_non_nullable
                    as String?,
        zoneCustom:
            freezed == zoneCustom
                ? _value.zoneCustom
                : zoneCustom // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BillingAddressOnCartDTOImpl implements _BillingAddressOnCartDTO {
  const _$BillingAddressOnCartDTOImpl({
    required this.firstname,
    required this.lastname,
    required final List<String> street,
    required this.city,
    required this.telephone,
    this.postcode,
    required this.country,
    @JsonKey(name: 'city_custom') this.cityCustom,
    @JsonKey(name: 'state_custom') this.stateCustom,
    @JsonKey(name: 'zone_custom') this.zoneCustom,
  }) : _street = street;

  factory _$BillingAddressOnCartDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillingAddressOnCartDTOImplFromJson(json);

  @override
  final String firstname;
  @override
  final String lastname;
  final List<String> _street;
  @override
  List<String> get street {
    if (_street is EqualUnmodifiableListView) return _street;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_street);
  }

  @override
  final String city;
  @override
  final String telephone;
  @override
  final String? postcode;
  @override
  final LocalizationItemDTO country;
  @override
  @JsonKey(name: 'city_custom')
  final String? cityCustom;
  @override
  @JsonKey(name: 'state_custom')
  final String? stateCustom;
  @override
  @JsonKey(name: 'zone_custom')
  final String? zoneCustom;

  @override
  String toString() {
    return 'BillingAddressOnCartDTO(firstname: $firstname, lastname: $lastname, street: $street, city: $city, telephone: $telephone, postcode: $postcode, country: $country, cityCustom: $cityCustom, stateCustom: $stateCustom, zoneCustom: $zoneCustom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingAddressOnCartDTOImpl &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            const DeepCollectionEquality().equals(other._street, _street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.telephone, telephone) ||
                other.telephone == telephone) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.cityCustom, cityCustom) ||
                other.cityCustom == cityCustom) &&
            (identical(other.stateCustom, stateCustom) ||
                other.stateCustom == stateCustom) &&
            (identical(other.zoneCustom, zoneCustom) ||
                other.zoneCustom == zoneCustom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    firstname,
    lastname,
    const DeepCollectionEquality().hash(_street),
    city,
    telephone,
    postcode,
    country,
    cityCustom,
    stateCustom,
    zoneCustom,
  );

  /// Create a copy of BillingAddressOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingAddressOnCartDTOImplCopyWith<_$BillingAddressOnCartDTOImpl>
  get copyWith => __$$BillingAddressOnCartDTOImplCopyWithImpl<
    _$BillingAddressOnCartDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingAddressOnCartDTOImplToJson(this);
  }
}

abstract class _BillingAddressOnCartDTO implements BillingAddressOnCartDTO {
  const factory _BillingAddressOnCartDTO({
    required final String firstname,
    required final String lastname,
    required final List<String> street,
    required final String city,
    required final String telephone,
    final String? postcode,
    required final LocalizationItemDTO country,
    @JsonKey(name: 'city_custom') final String? cityCustom,
    @JsonKey(name: 'state_custom') final String? stateCustom,
    @JsonKey(name: 'zone_custom') final String? zoneCustom,
  }) = _$BillingAddressOnCartDTOImpl;

  factory _BillingAddressOnCartDTO.fromJson(Map<String, dynamic> json) =
      _$BillingAddressOnCartDTOImpl.fromJson;

  @override
  String get firstname;
  @override
  String get lastname;
  @override
  List<String> get street;
  @override
  String get city;
  @override
  String get telephone;
  @override
  String? get postcode;
  @override
  LocalizationItemDTO get country;
  @override
  @JsonKey(name: 'city_custom')
  String? get cityCustom;
  @override
  @JsonKey(name: 'state_custom')
  String? get stateCustom;
  @override
  @JsonKey(name: 'zone_custom')
  String? get zoneCustom;

  /// Create a copy of BillingAddressOnCartDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillingAddressOnCartDTOImplCopyWith<_$BillingAddressOnCartDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
