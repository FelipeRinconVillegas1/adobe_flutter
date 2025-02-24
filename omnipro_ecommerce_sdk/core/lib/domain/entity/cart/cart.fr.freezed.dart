// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Cart {
  String get id => throw _privateConstructorUsedError;
  List<CartItems> get items => throw _privateConstructorUsedError;
  List<ShippingAddressOnCart>? get shippingAddresses =>
      throw _privateConstructorUsedError;
  List<AvailablePaymentMethod> get availablePaymentMethods =>
      throw _privateConstructorUsedError;
  List<AppliedCoupon> get appliedCoupons => throw _privateConstructorUsedError;
  DetailAddressOnCart? get billingAddress => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  double? get tip => throw _privateConstructorUsedError;
  double? get tipAux => throw _privateConstructorUsedError;
  SelectedPaymentMethod? get selectedPaymentMethod =>
      throw _privateConstructorUsedError;
  CartPrices get prices => throw _privateConstructorUsedError;
  InventoryStatusInCart get inventoryStatusInCart =>
      throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  bool get isAvailableInventory => throw _privateConstructorUsedError;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call({
    String id,
    List<CartItems> items,
    List<ShippingAddressOnCart>? shippingAddresses,
    List<AvailablePaymentMethod> availablePaymentMethods,
    List<AppliedCoupon> appliedCoupons,
    DetailAddressOnCart? billingAddress,
    String? email,
    double? tip,
    double? tipAux,
    SelectedPaymentMethod? selectedPaymentMethod,
    CartPrices prices,
    InventoryStatusInCart inventoryStatusInCart,
    String? errorCode,
    bool isAvailableInventory,
  });

  $SelectedPaymentMethodCopyWith<$Res>? get selectedPaymentMethod;
  $CartPricesCopyWith<$Res> get prices;
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? items = null,
    Object? shippingAddresses = freezed,
    Object? availablePaymentMethods = null,
    Object? appliedCoupons = null,
    Object? billingAddress = freezed,
    Object? email = freezed,
    Object? tip = freezed,
    Object? tipAux = freezed,
    Object? selectedPaymentMethod = freezed,
    Object? prices = null,
    Object? inventoryStatusInCart = null,
    Object? errorCode = freezed,
    Object? isAvailableInventory = null,
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
                        as List<CartItems>,
            shippingAddresses:
                freezed == shippingAddresses
                    ? _value.shippingAddresses
                    : shippingAddresses // ignore: cast_nullable_to_non_nullable
                        as List<ShippingAddressOnCart>?,
            availablePaymentMethods:
                null == availablePaymentMethods
                    ? _value.availablePaymentMethods
                    : availablePaymentMethods // ignore: cast_nullable_to_non_nullable
                        as List<AvailablePaymentMethod>,
            appliedCoupons:
                null == appliedCoupons
                    ? _value.appliedCoupons
                    : appliedCoupons // ignore: cast_nullable_to_non_nullable
                        as List<AppliedCoupon>,
            billingAddress:
                freezed == billingAddress
                    ? _value.billingAddress
                    : billingAddress // ignore: cast_nullable_to_non_nullable
                        as DetailAddressOnCart?,
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
            tipAux:
                freezed == tipAux
                    ? _value.tipAux
                    : tipAux // ignore: cast_nullable_to_non_nullable
                        as double?,
            selectedPaymentMethod:
                freezed == selectedPaymentMethod
                    ? _value.selectedPaymentMethod
                    : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
                        as SelectedPaymentMethod?,
            prices:
                null == prices
                    ? _value.prices
                    : prices // ignore: cast_nullable_to_non_nullable
                        as CartPrices,
            inventoryStatusInCart:
                null == inventoryStatusInCart
                    ? _value.inventoryStatusInCart
                    : inventoryStatusInCart // ignore: cast_nullable_to_non_nullable
                        as InventoryStatusInCart,
            errorCode:
                freezed == errorCode
                    ? _value.errorCode
                    : errorCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            isAvailableInventory:
                null == isAvailableInventory
                    ? _value.isAvailableInventory
                    : isAvailableInventory // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SelectedPaymentMethodCopyWith<$Res>? get selectedPaymentMethod {
    if (_value.selectedPaymentMethod == null) {
      return null;
    }

    return $SelectedPaymentMethodCopyWith<$Res>(_value.selectedPaymentMethod!, (
      value,
    ) {
      return _then(_value.copyWith(selectedPaymentMethod: value) as $Val);
    });
  }

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartPricesCopyWith<$Res> get prices {
    return $CartPricesCopyWith<$Res>(_value.prices, (value) {
      return _then(_value.copyWith(prices: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartImplCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$CartImplCopyWith(
    _$CartImpl value,
    $Res Function(_$CartImpl) then,
  ) = __$$CartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    List<CartItems> items,
    List<ShippingAddressOnCart>? shippingAddresses,
    List<AvailablePaymentMethod> availablePaymentMethods,
    List<AppliedCoupon> appliedCoupons,
    DetailAddressOnCart? billingAddress,
    String? email,
    double? tip,
    double? tipAux,
    SelectedPaymentMethod? selectedPaymentMethod,
    CartPrices prices,
    InventoryStatusInCart inventoryStatusInCart,
    String? errorCode,
    bool isAvailableInventory,
  });

  @override
  $SelectedPaymentMethodCopyWith<$Res>? get selectedPaymentMethod;
  @override
  $CartPricesCopyWith<$Res> get prices;
}

/// @nodoc
class __$$CartImplCopyWithImpl<$Res>
    extends _$CartCopyWithImpl<$Res, _$CartImpl>
    implements _$$CartImplCopyWith<$Res> {
  __$$CartImplCopyWithImpl(_$CartImpl _value, $Res Function(_$CartImpl) _then)
    : super(_value, _then);

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? items = null,
    Object? shippingAddresses = freezed,
    Object? availablePaymentMethods = null,
    Object? appliedCoupons = null,
    Object? billingAddress = freezed,
    Object? email = freezed,
    Object? tip = freezed,
    Object? tipAux = freezed,
    Object? selectedPaymentMethod = freezed,
    Object? prices = null,
    Object? inventoryStatusInCart = null,
    Object? errorCode = freezed,
    Object? isAvailableInventory = null,
  }) {
    return _then(
      _$CartImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<CartItems>,
        shippingAddresses:
            freezed == shippingAddresses
                ? _value._shippingAddresses
                : shippingAddresses // ignore: cast_nullable_to_non_nullable
                    as List<ShippingAddressOnCart>?,
        availablePaymentMethods:
            null == availablePaymentMethods
                ? _value._availablePaymentMethods
                : availablePaymentMethods // ignore: cast_nullable_to_non_nullable
                    as List<AvailablePaymentMethod>,
        appliedCoupons:
            null == appliedCoupons
                ? _value._appliedCoupons
                : appliedCoupons // ignore: cast_nullable_to_non_nullable
                    as List<AppliedCoupon>,
        billingAddress:
            freezed == billingAddress
                ? _value.billingAddress
                : billingAddress // ignore: cast_nullable_to_non_nullable
                    as DetailAddressOnCart?,
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
        tipAux:
            freezed == tipAux
                ? _value.tipAux
                : tipAux // ignore: cast_nullable_to_non_nullable
                    as double?,
        selectedPaymentMethod:
            freezed == selectedPaymentMethod
                ? _value.selectedPaymentMethod
                : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
                    as SelectedPaymentMethod?,
        prices:
            null == prices
                ? _value.prices
                : prices // ignore: cast_nullable_to_non_nullable
                    as CartPrices,
        inventoryStatusInCart:
            null == inventoryStatusInCart
                ? _value.inventoryStatusInCart
                : inventoryStatusInCart // ignore: cast_nullable_to_non_nullable
                    as InventoryStatusInCart,
        errorCode:
            freezed == errorCode
                ? _value.errorCode
                : errorCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        isAvailableInventory:
            null == isAvailableInventory
                ? _value.isAvailableInventory
                : isAvailableInventory // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$CartImpl implements _Cart {
  const _$CartImpl({
    required this.id,
    final List<CartItems> items = const [],
    final List<ShippingAddressOnCart>? shippingAddresses = const [],
    final List<AvailablePaymentMethod> availablePaymentMethods = const [],
    final List<AppliedCoupon> appliedCoupons = const [],
    this.billingAddress,
    this.email,
    this.tip,
    this.tipAux,
    this.selectedPaymentMethod,
    required this.prices,
    this.inventoryStatusInCart = InventoryStatusInCart.pending,
    this.errorCode,
    this.isAvailableInventory = true,
  }) : _items = items,
       _shippingAddresses = shippingAddresses,
       _availablePaymentMethods = availablePaymentMethods,
       _appliedCoupons = appliedCoupons;

  @override
  final String id;
  final List<CartItems> _items;
  @override
  @JsonKey()
  List<CartItems> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<ShippingAddressOnCart>? _shippingAddresses;
  @override
  @JsonKey()
  List<ShippingAddressOnCart>? get shippingAddresses {
    final value = _shippingAddresses;
    if (value == null) return null;
    if (_shippingAddresses is EqualUnmodifiableListView)
      return _shippingAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AvailablePaymentMethod> _availablePaymentMethods;
  @override
  @JsonKey()
  List<AvailablePaymentMethod> get availablePaymentMethods {
    if (_availablePaymentMethods is EqualUnmodifiableListView)
      return _availablePaymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availablePaymentMethods);
  }

  final List<AppliedCoupon> _appliedCoupons;
  @override
  @JsonKey()
  List<AppliedCoupon> get appliedCoupons {
    if (_appliedCoupons is EqualUnmodifiableListView) return _appliedCoupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appliedCoupons);
  }

  @override
  final DetailAddressOnCart? billingAddress;
  @override
  final String? email;
  @override
  final double? tip;
  @override
  final double? tipAux;
  @override
  final SelectedPaymentMethod? selectedPaymentMethod;
  @override
  final CartPrices prices;
  @override
  @JsonKey()
  final InventoryStatusInCart inventoryStatusInCart;
  @override
  final String? errorCode;
  @override
  @JsonKey()
  final bool isAvailableInventory;

  @override
  String toString() {
    return 'Cart(id: $id, items: $items, shippingAddresses: $shippingAddresses, availablePaymentMethods: $availablePaymentMethods, appliedCoupons: $appliedCoupons, billingAddress: $billingAddress, email: $email, tip: $tip, tipAux: $tipAux, selectedPaymentMethod: $selectedPaymentMethod, prices: $prices, inventoryStatusInCart: $inventoryStatusInCart, errorCode: $errorCode, isAvailableInventory: $isAvailableInventory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(
              other._shippingAddresses,
              _shippingAddresses,
            ) &&
            const DeepCollectionEquality().equals(
              other._availablePaymentMethods,
              _availablePaymentMethods,
            ) &&
            const DeepCollectionEquality().equals(
              other._appliedCoupons,
              _appliedCoupons,
            ) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.tip, tip) || other.tip == tip) &&
            (identical(other.tipAux, tipAux) || other.tipAux == tipAux) &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                other.selectedPaymentMethod == selectedPaymentMethod) &&
            (identical(other.prices, prices) || other.prices == prices) &&
            (identical(other.inventoryStatusInCart, inventoryStatusInCart) ||
                other.inventoryStatusInCart == inventoryStatusInCart) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.isAvailableInventory, isAvailableInventory) ||
                other.isAvailableInventory == isAvailableInventory));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    const DeepCollectionEquality().hash(_items),
    const DeepCollectionEquality().hash(_shippingAddresses),
    const DeepCollectionEquality().hash(_availablePaymentMethods),
    const DeepCollectionEquality().hash(_appliedCoupons),
    billingAddress,
    email,
    tip,
    tipAux,
    selectedPaymentMethod,
    prices,
    inventoryStatusInCart,
    errorCode,
    isAvailableInventory,
  );

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      __$$CartImplCopyWithImpl<_$CartImpl>(this, _$identity);
}

abstract class _Cart implements Cart {
  const factory _Cart({
    required final String id,
    final List<CartItems> items,
    final List<ShippingAddressOnCart>? shippingAddresses,
    final List<AvailablePaymentMethod> availablePaymentMethods,
    final List<AppliedCoupon> appliedCoupons,
    final DetailAddressOnCart? billingAddress,
    final String? email,
    final double? tip,
    final double? tipAux,
    final SelectedPaymentMethod? selectedPaymentMethod,
    required final CartPrices prices,
    final InventoryStatusInCart inventoryStatusInCart,
    final String? errorCode,
    final bool isAvailableInventory,
  }) = _$CartImpl;

  @override
  String get id;
  @override
  List<CartItems> get items;
  @override
  List<ShippingAddressOnCart>? get shippingAddresses;
  @override
  List<AvailablePaymentMethod> get availablePaymentMethods;
  @override
  List<AppliedCoupon> get appliedCoupons;
  @override
  DetailAddressOnCart? get billingAddress;
  @override
  String? get email;
  @override
  double? get tip;
  @override
  double? get tipAux;
  @override
  SelectedPaymentMethod? get selectedPaymentMethod;
  @override
  CartPrices get prices;
  @override
  InventoryStatusInCart get inventoryStatusInCart;
  @override
  String? get errorCode;
  @override
  bool get isAvailableInventory;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartPrices {
  @JsonKey(name: 'grand_total')
  Money get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'refundable_fee')
  RefundableFeeEntity get refundableFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'catalog_discount_amount')
  CatalogDiscountAmount get catalogDiscountAmount =>
      throw _privateConstructorUsedError;
  Money get subtotalExcludingTax => throw _privateConstructorUsedError;
  @JsonKey(name: 'discounts')
  List<MoneyInfo> get discounts => throw _privateConstructorUsedError;
  @JsonKey(name: 'applied_taxes')
  List<MoneyInfo> get appliedTaxes => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_saved')
  AmountSaved get amountSaved => throw _privateConstructorUsedError;

  /// Create a copy of CartPrices
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartPricesCopyWith<CartPrices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPricesCopyWith<$Res> {
  factory $CartPricesCopyWith(
    CartPrices value,
    $Res Function(CartPrices) then,
  ) = _$CartPricesCopyWithImpl<$Res, CartPrices>;
  @useResult
  $Res call({
    @JsonKey(name: 'grand_total') Money grandTotal,
    @JsonKey(name: 'refundable_fee') RefundableFeeEntity refundableFee,
    @JsonKey(name: 'catalog_discount_amount')
    CatalogDiscountAmount catalogDiscountAmount,
    Money subtotalExcludingTax,
    @JsonKey(name: 'discounts') List<MoneyInfo> discounts,
    @JsonKey(name: 'applied_taxes') List<MoneyInfo> appliedTaxes,
    @JsonKey(name: 'amount_saved') AmountSaved amountSaved,
  });

  $CatalogDiscountAmountCopyWith<$Res> get catalogDiscountAmount;
}

/// @nodoc
class _$CartPricesCopyWithImpl<$Res, $Val extends CartPrices>
    implements $CartPricesCopyWith<$Res> {
  _$CartPricesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartPrices
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grandTotal = null,
    Object? refundableFee = null,
    Object? catalogDiscountAmount = null,
    Object? subtotalExcludingTax = null,
    Object? discounts = null,
    Object? appliedTaxes = null,
    Object? amountSaved = null,
  }) {
    return _then(
      _value.copyWith(
            grandTotal:
                null == grandTotal
                    ? _value.grandTotal
                    : grandTotal // ignore: cast_nullable_to_non_nullable
                        as Money,
            refundableFee:
                null == refundableFee
                    ? _value.refundableFee
                    : refundableFee // ignore: cast_nullable_to_non_nullable
                        as RefundableFeeEntity,
            catalogDiscountAmount:
                null == catalogDiscountAmount
                    ? _value.catalogDiscountAmount
                    : catalogDiscountAmount // ignore: cast_nullable_to_non_nullable
                        as CatalogDiscountAmount,
            subtotalExcludingTax:
                null == subtotalExcludingTax
                    ? _value.subtotalExcludingTax
                    : subtotalExcludingTax // ignore: cast_nullable_to_non_nullable
                        as Money,
            discounts:
                null == discounts
                    ? _value.discounts
                    : discounts // ignore: cast_nullable_to_non_nullable
                        as List<MoneyInfo>,
            appliedTaxes:
                null == appliedTaxes
                    ? _value.appliedTaxes
                    : appliedTaxes // ignore: cast_nullable_to_non_nullable
                        as List<MoneyInfo>,
            amountSaved:
                null == amountSaved
                    ? _value.amountSaved
                    : amountSaved // ignore: cast_nullable_to_non_nullable
                        as AmountSaved,
          )
          as $Val,
    );
  }

  /// Create a copy of CartPrices
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CatalogDiscountAmountCopyWith<$Res> get catalogDiscountAmount {
    return $CatalogDiscountAmountCopyWith<$Res>(_value.catalogDiscountAmount, (
      value,
    ) {
      return _then(_value.copyWith(catalogDiscountAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartPricesImplCopyWith<$Res>
    implements $CartPricesCopyWith<$Res> {
  factory _$$CartPricesImplCopyWith(
    _$CartPricesImpl value,
    $Res Function(_$CartPricesImpl) then,
  ) = __$$CartPricesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'grand_total') Money grandTotal,
    @JsonKey(name: 'refundable_fee') RefundableFeeEntity refundableFee,
    @JsonKey(name: 'catalog_discount_amount')
    CatalogDiscountAmount catalogDiscountAmount,
    Money subtotalExcludingTax,
    @JsonKey(name: 'discounts') List<MoneyInfo> discounts,
    @JsonKey(name: 'applied_taxes') List<MoneyInfo> appliedTaxes,
    @JsonKey(name: 'amount_saved') AmountSaved amountSaved,
  });

  @override
  $CatalogDiscountAmountCopyWith<$Res> get catalogDiscountAmount;
}

/// @nodoc
class __$$CartPricesImplCopyWithImpl<$Res>
    extends _$CartPricesCopyWithImpl<$Res, _$CartPricesImpl>
    implements _$$CartPricesImplCopyWith<$Res> {
  __$$CartPricesImplCopyWithImpl(
    _$CartPricesImpl _value,
    $Res Function(_$CartPricesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartPrices
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grandTotal = null,
    Object? refundableFee = null,
    Object? catalogDiscountAmount = null,
    Object? subtotalExcludingTax = null,
    Object? discounts = null,
    Object? appliedTaxes = null,
    Object? amountSaved = null,
  }) {
    return _then(
      _$CartPricesImpl(
        grandTotal:
            null == grandTotal
                ? _value.grandTotal
                : grandTotal // ignore: cast_nullable_to_non_nullable
                    as Money,
        refundableFee:
            null == refundableFee
                ? _value.refundableFee
                : refundableFee // ignore: cast_nullable_to_non_nullable
                    as RefundableFeeEntity,
        catalogDiscountAmount:
            null == catalogDiscountAmount
                ? _value.catalogDiscountAmount
                : catalogDiscountAmount // ignore: cast_nullable_to_non_nullable
                    as CatalogDiscountAmount,
        subtotalExcludingTax:
            null == subtotalExcludingTax
                ? _value.subtotalExcludingTax
                : subtotalExcludingTax // ignore: cast_nullable_to_non_nullable
                    as Money,
        discounts:
            null == discounts
                ? _value._discounts
                : discounts // ignore: cast_nullable_to_non_nullable
                    as List<MoneyInfo>,
        appliedTaxes:
            null == appliedTaxes
                ? _value._appliedTaxes
                : appliedTaxes // ignore: cast_nullable_to_non_nullable
                    as List<MoneyInfo>,
        amountSaved:
            null == amountSaved
                ? _value.amountSaved
                : amountSaved // ignore: cast_nullable_to_non_nullable
                    as AmountSaved,
      ),
    );
  }
}

/// @nodoc

class _$CartPricesImpl implements _CartPrices {
  const _$CartPricesImpl({
    @JsonKey(name: 'grand_total') required this.grandTotal,
    @JsonKey(name: 'refundable_fee') required this.refundableFee,
    @JsonKey(name: 'catalog_discount_amount')
    required this.catalogDiscountAmount,
    required this.subtotalExcludingTax,
    @JsonKey(name: 'discounts') final List<MoneyInfo> discounts = const [],
    @JsonKey(name: 'applied_taxes')
    final List<MoneyInfo> appliedTaxes = const [],
    @JsonKey(name: 'amount_saved')
    this.amountSaved = const AmountSaved(value: 0),
  }) : _discounts = discounts,
       _appliedTaxes = appliedTaxes;

  @override
  @JsonKey(name: 'grand_total')
  final Money grandTotal;
  @override
  @JsonKey(name: 'refundable_fee')
  final RefundableFeeEntity refundableFee;
  @override
  @JsonKey(name: 'catalog_discount_amount')
  final CatalogDiscountAmount catalogDiscountAmount;
  @override
  final Money subtotalExcludingTax;
  final List<MoneyInfo> _discounts;
  @override
  @JsonKey(name: 'discounts')
  List<MoneyInfo> get discounts {
    if (_discounts is EqualUnmodifiableListView) return _discounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discounts);
  }

  final List<MoneyInfo> _appliedTaxes;
  @override
  @JsonKey(name: 'applied_taxes')
  List<MoneyInfo> get appliedTaxes {
    if (_appliedTaxes is EqualUnmodifiableListView) return _appliedTaxes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appliedTaxes);
  }

  @override
  @JsonKey(name: 'amount_saved')
  final AmountSaved amountSaved;

  @override
  String toString() {
    return 'CartPrices(grandTotal: $grandTotal, refundableFee: $refundableFee, catalogDiscountAmount: $catalogDiscountAmount, subtotalExcludingTax: $subtotalExcludingTax, discounts: $discounts, appliedTaxes: $appliedTaxes, amountSaved: $amountSaved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartPricesImpl &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.refundableFee, refundableFee) ||
                other.refundableFee == refundableFee) &&
            (identical(other.catalogDiscountAmount, catalogDiscountAmount) ||
                other.catalogDiscountAmount == catalogDiscountAmount) &&
            (identical(other.subtotalExcludingTax, subtotalExcludingTax) ||
                other.subtotalExcludingTax == subtotalExcludingTax) &&
            const DeepCollectionEquality().equals(
              other._discounts,
              _discounts,
            ) &&
            const DeepCollectionEquality().equals(
              other._appliedTaxes,
              _appliedTaxes,
            ) &&
            (identical(other.amountSaved, amountSaved) ||
                other.amountSaved == amountSaved));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    grandTotal,
    refundableFee,
    catalogDiscountAmount,
    subtotalExcludingTax,
    const DeepCollectionEquality().hash(_discounts),
    const DeepCollectionEquality().hash(_appliedTaxes),
    amountSaved,
  );

  /// Create a copy of CartPrices
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartPricesImplCopyWith<_$CartPricesImpl> get copyWith =>
      __$$CartPricesImplCopyWithImpl<_$CartPricesImpl>(this, _$identity);
}

abstract class _CartPrices implements CartPrices {
  const factory _CartPrices({
    @JsonKey(name: 'grand_total') required final Money grandTotal,
    @JsonKey(name: 'refundable_fee')
    required final RefundableFeeEntity refundableFee,
    @JsonKey(name: 'catalog_discount_amount')
    required final CatalogDiscountAmount catalogDiscountAmount,
    required final Money subtotalExcludingTax,
    @JsonKey(name: 'discounts') final List<MoneyInfo> discounts,
    @JsonKey(name: 'applied_taxes') final List<MoneyInfo> appliedTaxes,
    @JsonKey(name: 'amount_saved') final AmountSaved amountSaved,
  }) = _$CartPricesImpl;

  @override
  @JsonKey(name: 'grand_total')
  Money get grandTotal;
  @override
  @JsonKey(name: 'refundable_fee')
  RefundableFeeEntity get refundableFee;
  @override
  @JsonKey(name: 'catalog_discount_amount')
  CatalogDiscountAmount get catalogDiscountAmount;
  @override
  Money get subtotalExcludingTax;
  @override
  @JsonKey(name: 'discounts')
  List<MoneyInfo> get discounts;
  @override
  @JsonKey(name: 'applied_taxes')
  List<MoneyInfo> get appliedTaxes;
  @override
  @JsonKey(name: 'amount_saved')
  AmountSaved get amountSaved;

  /// Create a copy of CartPrices
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartPricesImplCopyWith<_$CartPricesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CatalogDiscountAmount {
  double get value => throw _privateConstructorUsedError;

  /// Create a copy of CatalogDiscountAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatalogDiscountAmountCopyWith<CatalogDiscountAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogDiscountAmountCopyWith<$Res> {
  factory $CatalogDiscountAmountCopyWith(
    CatalogDiscountAmount value,
    $Res Function(CatalogDiscountAmount) then,
  ) = _$CatalogDiscountAmountCopyWithImpl<$Res, CatalogDiscountAmount>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$CatalogDiscountAmountCopyWithImpl<
  $Res,
  $Val extends CatalogDiscountAmount
>
    implements $CatalogDiscountAmountCopyWith<$Res> {
  _$CatalogDiscountAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatalogDiscountAmount
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
abstract class _$$CatalogDiscountAmountImplCopyWith<$Res>
    implements $CatalogDiscountAmountCopyWith<$Res> {
  factory _$$CatalogDiscountAmountImplCopyWith(
    _$CatalogDiscountAmountImpl value,
    $Res Function(_$CatalogDiscountAmountImpl) then,
  ) = __$$CatalogDiscountAmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$CatalogDiscountAmountImplCopyWithImpl<$Res>
    extends
        _$CatalogDiscountAmountCopyWithImpl<$Res, _$CatalogDiscountAmountImpl>
    implements _$$CatalogDiscountAmountImplCopyWith<$Res> {
  __$$CatalogDiscountAmountImplCopyWithImpl(
    _$CatalogDiscountAmountImpl _value,
    $Res Function(_$CatalogDiscountAmountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CatalogDiscountAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$CatalogDiscountAmountImpl(
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

class _$CatalogDiscountAmountImpl implements _CatalogDiscountAmount {
  const _$CatalogDiscountAmountImpl({required this.value});

  @override
  final double value;

  @override
  String toString() {
    return 'CatalogDiscountAmount(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogDiscountAmountImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of CatalogDiscountAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogDiscountAmountImplCopyWith<_$CatalogDiscountAmountImpl>
  get copyWith =>
      __$$CatalogDiscountAmountImplCopyWithImpl<_$CatalogDiscountAmountImpl>(
        this,
        _$identity,
      );
}

abstract class _CatalogDiscountAmount implements CatalogDiscountAmount {
  const factory _CatalogDiscountAmount({required final double value}) =
      _$CatalogDiscountAmountImpl;

  @override
  double get value;

  /// Create a copy of CatalogDiscountAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogDiscountAmountImplCopyWith<_$CatalogDiscountAmountImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartItems {
  double get quantity => throw _privateConstructorUsedError;

  /// [quantityAvailable] Is null, util we get the inventory info.
  double? get quantityAvailable => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  ProductsItems get product => throw _privateConstructorUsedError;
  CartItemsPrices get prices => throw _privateConstructorUsedError;

  /// Create a copy of CartItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemsCopyWith<CartItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemsCopyWith<$Res> {
  factory $CartItemsCopyWith(CartItems value, $Res Function(CartItems) then) =
      _$CartItemsCopyWithImpl<$Res, CartItems>;
  @useResult
  $Res call({
    double quantity,
    double? quantityAvailable,
    String uid,
    ProductsItems product,
    CartItemsPrices prices,
  });

  $ProductsItemsCopyWith<$Res> get product;
  $CartItemsPricesCopyWith<$Res> get prices;
}

/// @nodoc
class _$CartItemsCopyWithImpl<$Res, $Val extends CartItems>
    implements $CartItemsCopyWith<$Res> {
  _$CartItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? quantityAvailable = freezed,
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
            quantityAvailable:
                freezed == quantityAvailable
                    ? _value.quantityAvailable
                    : quantityAvailable // ignore: cast_nullable_to_non_nullable
                        as double?,
            uid:
                null == uid
                    ? _value.uid
                    : uid // ignore: cast_nullable_to_non_nullable
                        as String,
            product:
                null == product
                    ? _value.product
                    : product // ignore: cast_nullable_to_non_nullable
                        as ProductsItems,
            prices:
                null == prices
                    ? _value.prices
                    : prices // ignore: cast_nullable_to_non_nullable
                        as CartItemsPrices,
          )
          as $Val,
    );
  }

  /// Create a copy of CartItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsItemsCopyWith<$Res> get product {
    return $ProductsItemsCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  /// Create a copy of CartItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartItemsPricesCopyWith<$Res> get prices {
    return $CartItemsPricesCopyWith<$Res>(_value.prices, (value) {
      return _then(_value.copyWith(prices: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartItemsImplCopyWith<$Res>
    implements $CartItemsCopyWith<$Res> {
  factory _$$CartItemsImplCopyWith(
    _$CartItemsImpl value,
    $Res Function(_$CartItemsImpl) then,
  ) = __$$CartItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double quantity,
    double? quantityAvailable,
    String uid,
    ProductsItems product,
    CartItemsPrices prices,
  });

  @override
  $ProductsItemsCopyWith<$Res> get product;
  @override
  $CartItemsPricesCopyWith<$Res> get prices;
}

/// @nodoc
class __$$CartItemsImplCopyWithImpl<$Res>
    extends _$CartItemsCopyWithImpl<$Res, _$CartItemsImpl>
    implements _$$CartItemsImplCopyWith<$Res> {
  __$$CartItemsImplCopyWithImpl(
    _$CartItemsImpl _value,
    $Res Function(_$CartItemsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? quantityAvailable = freezed,
    Object? uid = null,
    Object? product = null,
    Object? prices = null,
  }) {
    return _then(
      _$CartItemsImpl(
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as double,
        quantityAvailable:
            freezed == quantityAvailable
                ? _value.quantityAvailable
                : quantityAvailable // ignore: cast_nullable_to_non_nullable
                    as double?,
        uid:
            null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                    as String,
        product:
            null == product
                ? _value.product
                : product // ignore: cast_nullable_to_non_nullable
                    as ProductsItems,
        prices:
            null == prices
                ? _value.prices
                : prices // ignore: cast_nullable_to_non_nullable
                    as CartItemsPrices,
      ),
    );
  }
}

/// @nodoc

class _$CartItemsImpl implements _CartItems {
  const _$CartItemsImpl({
    required this.quantity,
    this.quantityAvailable,
    required this.uid,
    required this.product,
    required this.prices,
  });

  @override
  final double quantity;

  /// [quantityAvailable] Is null, util we get the inventory info.
  @override
  final double? quantityAvailable;
  @override
  final String uid;
  @override
  final ProductsItems product;
  @override
  final CartItemsPrices prices;

  @override
  String toString() {
    return 'CartItems(quantity: $quantity, quantityAvailable: $quantityAvailable, uid: $uid, product: $product, prices: $prices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemsImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.quantityAvailable, quantityAvailable) ||
                other.quantityAvailable == quantityAvailable) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.prices, prices) || other.prices == prices));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    quantity,
    quantityAvailable,
    uid,
    product,
    prices,
  );

  /// Create a copy of CartItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemsImplCopyWith<_$CartItemsImpl> get copyWith =>
      __$$CartItemsImplCopyWithImpl<_$CartItemsImpl>(this, _$identity);
}

abstract class _CartItems implements CartItems {
  const factory _CartItems({
    required final double quantity,
    final double? quantityAvailable,
    required final String uid,
    required final ProductsItems product,
    required final CartItemsPrices prices,
  }) = _$CartItemsImpl;

  @override
  double get quantity;

  /// [quantityAvailable] Is null, util we get the inventory info.
  @override
  double? get quantityAvailable;
  @override
  String get uid;
  @override
  ProductsItems get product;
  @override
  CartItemsPrices get prices;

  /// Create a copy of CartItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemsImplCopyWith<_$CartItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartProduct {
  String get name => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  ProductsImage get image => throw _privateConstructorUsedError;
  ProductsImage get smallImage => throw _privateConstructorUsedError;
  PriceRange get priceRange => throw _privateConstructorUsedError;

  /// Create a copy of CartProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartProductCopyWith<CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductCopyWith<$Res> {
  factory $CartProductCopyWith(
    CartProduct value,
    $Res Function(CartProduct) then,
  ) = _$CartProductCopyWithImpl<$Res, CartProduct>;
  @useResult
  $Res call({
    String name,
    String sku,
    ProductsImage image,
    ProductsImage smallImage,
    PriceRange priceRange,
  });

  $ProductsImageCopyWith<$Res> get image;
  $ProductsImageCopyWith<$Res> get smallImage;
  $PriceRangeCopyWith<$Res> get priceRange;
}

/// @nodoc
class _$CartProductCopyWithImpl<$Res, $Val extends CartProduct>
    implements $CartProductCopyWith<$Res> {
  _$CartProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartProduct
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
                        as ProductsImage,
            smallImage:
                null == smallImage
                    ? _value.smallImage
                    : smallImage // ignore: cast_nullable_to_non_nullable
                        as ProductsImage,
            priceRange:
                null == priceRange
                    ? _value.priceRange
                    : priceRange // ignore: cast_nullable_to_non_nullable
                        as PriceRange,
          )
          as $Val,
    );
  }

  /// Create a copy of CartProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsImageCopyWith<$Res> get image {
    return $ProductsImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }

  /// Create a copy of CartProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsImageCopyWith<$Res> get smallImage {
    return $ProductsImageCopyWith<$Res>(_value.smallImage, (value) {
      return _then(_value.copyWith(smallImage: value) as $Val);
    });
  }

  /// Create a copy of CartProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceRangeCopyWith<$Res> get priceRange {
    return $PriceRangeCopyWith<$Res>(_value.priceRange, (value) {
      return _then(_value.copyWith(priceRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartProductImplCopyWith<$Res>
    implements $CartProductCopyWith<$Res> {
  factory _$$CartProductImplCopyWith(
    _$CartProductImpl value,
    $Res Function(_$CartProductImpl) then,
  ) = __$$CartProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String sku,
    ProductsImage image,
    ProductsImage smallImage,
    PriceRange priceRange,
  });

  @override
  $ProductsImageCopyWith<$Res> get image;
  @override
  $ProductsImageCopyWith<$Res> get smallImage;
  @override
  $PriceRangeCopyWith<$Res> get priceRange;
}

/// @nodoc
class __$$CartProductImplCopyWithImpl<$Res>
    extends _$CartProductCopyWithImpl<$Res, _$CartProductImpl>
    implements _$$CartProductImplCopyWith<$Res> {
  __$$CartProductImplCopyWithImpl(
    _$CartProductImpl _value,
    $Res Function(_$CartProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartProduct
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
      _$CartProductImpl(
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
                    as ProductsImage,
        smallImage:
            null == smallImage
                ? _value.smallImage
                : smallImage // ignore: cast_nullable_to_non_nullable
                    as ProductsImage,
        priceRange:
            null == priceRange
                ? _value.priceRange
                : priceRange // ignore: cast_nullable_to_non_nullable
                    as PriceRange,
      ),
    );
  }
}

/// @nodoc

class _$CartProductImpl implements _CartProduct {
  const _$CartProductImpl({
    required this.name,
    required this.sku,
    required this.image,
    required this.smallImage,
    required this.priceRange,
  });

  @override
  final String name;
  @override
  final String sku;
  @override
  final ProductsImage image;
  @override
  final ProductsImage smallImage;
  @override
  final PriceRange priceRange;

  @override
  String toString() {
    return 'CartProduct(name: $name, sku: $sku, image: $image, smallImage: $smallImage, priceRange: $priceRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.smallImage, smallImage) ||
                other.smallImage == smallImage) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, sku, image, smallImage, priceRange);

  /// Create a copy of CartProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductImplCopyWith<_$CartProductImpl> get copyWith =>
      __$$CartProductImplCopyWithImpl<_$CartProductImpl>(this, _$identity);
}

abstract class _CartProduct implements CartProduct {
  const factory _CartProduct({
    required final String name,
    required final String sku,
    required final ProductsImage image,
    required final ProductsImage smallImage,
    required final PriceRange priceRange,
  }) = _$CartProductImpl;

  @override
  String get name;
  @override
  String get sku;
  @override
  ProductsImage get image;
  @override
  ProductsImage get smallImage;
  @override
  PriceRange get priceRange;

  /// Create a copy of CartProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartProductImplCopyWith<_$CartProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PriceRange {
  ItemPriceRange get maximumPrice => throw _privateConstructorUsedError;

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceRangeCopyWith<PriceRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceRangeCopyWith<$Res> {
  factory $PriceRangeCopyWith(
    PriceRange value,
    $Res Function(PriceRange) then,
  ) = _$PriceRangeCopyWithImpl<$Res, PriceRange>;
  @useResult
  $Res call({ItemPriceRange maximumPrice});

  $ItemPriceRangeCopyWith<$Res> get maximumPrice;
}

/// @nodoc
class _$PriceRangeCopyWithImpl<$Res, $Val extends PriceRange>
    implements $PriceRangeCopyWith<$Res> {
  _$PriceRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriceRange
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
                        as ItemPriceRange,
          )
          as $Val,
    );
  }

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemPriceRangeCopyWith<$Res> get maximumPrice {
    return $ItemPriceRangeCopyWith<$Res>(_value.maximumPrice, (value) {
      return _then(_value.copyWith(maximumPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PriceRangeImplCopyWith<$Res>
    implements $PriceRangeCopyWith<$Res> {
  factory _$$PriceRangeImplCopyWith(
    _$PriceRangeImpl value,
    $Res Function(_$PriceRangeImpl) then,
  ) = __$$PriceRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ItemPriceRange maximumPrice});

  @override
  $ItemPriceRangeCopyWith<$Res> get maximumPrice;
}

/// @nodoc
class __$$PriceRangeImplCopyWithImpl<$Res>
    extends _$PriceRangeCopyWithImpl<$Res, _$PriceRangeImpl>
    implements _$$PriceRangeImplCopyWith<$Res> {
  __$$PriceRangeImplCopyWithImpl(
    _$PriceRangeImpl _value,
    $Res Function(_$PriceRangeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? maximumPrice = null}) {
    return _then(
      _$PriceRangeImpl(
        maximumPrice:
            null == maximumPrice
                ? _value.maximumPrice
                : maximumPrice // ignore: cast_nullable_to_non_nullable
                    as ItemPriceRange,
      ),
    );
  }
}

/// @nodoc

class _$PriceRangeImpl implements _PriceRange {
  const _$PriceRangeImpl({required this.maximumPrice});

  @override
  final ItemPriceRange maximumPrice;

  @override
  String toString() {
    return 'PriceRange(maximumPrice: $maximumPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceRangeImpl &&
            (identical(other.maximumPrice, maximumPrice) ||
                other.maximumPrice == maximumPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, maximumPrice);

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceRangeImplCopyWith<_$PriceRangeImpl> get copyWith =>
      __$$PriceRangeImplCopyWithImpl<_$PriceRangeImpl>(this, _$identity);
}

abstract class _PriceRange implements PriceRange {
  const factory _PriceRange({required final ItemPriceRange maximumPrice}) =
      _$PriceRangeImpl;

  @override
  ItemPriceRange get maximumPrice;

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceRangeImplCopyWith<_$PriceRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemPriceRange {
  Money get finalPrice => throw _privateConstructorUsedError;
  Money get regularPrice => throw _privateConstructorUsedError;
  Discount get discount => throw _privateConstructorUsedError;

  /// Create a copy of ItemPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemPriceRangeCopyWith<ItemPriceRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemPriceRangeCopyWith<$Res> {
  factory $ItemPriceRangeCopyWith(
    ItemPriceRange value,
    $Res Function(ItemPriceRange) then,
  ) = _$ItemPriceRangeCopyWithImpl<$Res, ItemPriceRange>;
  @useResult
  $Res call({Money finalPrice, Money regularPrice, Discount discount});

  $DiscountCopyWith<$Res> get discount;
}

/// @nodoc
class _$ItemPriceRangeCopyWithImpl<$Res, $Val extends ItemPriceRange>
    implements $ItemPriceRangeCopyWith<$Res> {
  _$ItemPriceRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemPriceRange
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
                        as Money,
            regularPrice:
                null == regularPrice
                    ? _value.regularPrice
                    : regularPrice // ignore: cast_nullable_to_non_nullable
                        as Money,
            discount:
                null == discount
                    ? _value.discount
                    : discount // ignore: cast_nullable_to_non_nullable
                        as Discount,
          )
          as $Val,
    );
  }

  /// Create a copy of ItemPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountCopyWith<$Res> get discount {
    return $DiscountCopyWith<$Res>(_value.discount, (value) {
      return _then(_value.copyWith(discount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemPriceRangeImplCopyWith<$Res>
    implements $ItemPriceRangeCopyWith<$Res> {
  factory _$$ItemPriceRangeImplCopyWith(
    _$ItemPriceRangeImpl value,
    $Res Function(_$ItemPriceRangeImpl) then,
  ) = __$$ItemPriceRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Money finalPrice, Money regularPrice, Discount discount});

  @override
  $DiscountCopyWith<$Res> get discount;
}

/// @nodoc
class __$$ItemPriceRangeImplCopyWithImpl<$Res>
    extends _$ItemPriceRangeCopyWithImpl<$Res, _$ItemPriceRangeImpl>
    implements _$$ItemPriceRangeImplCopyWith<$Res> {
  __$$ItemPriceRangeImplCopyWithImpl(
    _$ItemPriceRangeImpl _value,
    $Res Function(_$ItemPriceRangeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finalPrice = null,
    Object? regularPrice = null,
    Object? discount = null,
  }) {
    return _then(
      _$ItemPriceRangeImpl(
        finalPrice:
            null == finalPrice
                ? _value.finalPrice
                : finalPrice // ignore: cast_nullable_to_non_nullable
                    as Money,
        regularPrice:
            null == regularPrice
                ? _value.regularPrice
                : regularPrice // ignore: cast_nullable_to_non_nullable
                    as Money,
        discount:
            null == discount
                ? _value.discount
                : discount // ignore: cast_nullable_to_non_nullable
                    as Discount,
      ),
    );
  }
}

/// @nodoc

class _$ItemPriceRangeImpl implements _ItemPriceRange {
  const _$ItemPriceRangeImpl({
    required this.finalPrice,
    required this.regularPrice,
    required this.discount,
  });

  @override
  final Money finalPrice;
  @override
  final Money regularPrice;
  @override
  final Discount discount;

  @override
  String toString() {
    return 'ItemPriceRange(finalPrice: $finalPrice, regularPrice: $regularPrice, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemPriceRangeImpl &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.regularPrice, regularPrice) ||
                other.regularPrice == regularPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, finalPrice, regularPrice, discount);

  /// Create a copy of ItemPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemPriceRangeImplCopyWith<_$ItemPriceRangeImpl> get copyWith =>
      __$$ItemPriceRangeImplCopyWithImpl<_$ItemPriceRangeImpl>(
        this,
        _$identity,
      );
}

abstract class _ItemPriceRange implements ItemPriceRange {
  const factory _ItemPriceRange({
    required final Money finalPrice,
    required final Money regularPrice,
    required final Discount discount,
  }) = _$ItemPriceRangeImpl;

  @override
  Money get finalPrice;
  @override
  Money get regularPrice;
  @override
  Discount get discount;

  /// Create a copy of ItemPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemPriceRangeImplCopyWith<_$ItemPriceRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Discount {
  double get amountOff => throw _privateConstructorUsedError;

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountCopyWith<Discount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCopyWith<$Res> {
  factory $DiscountCopyWith(Discount value, $Res Function(Discount) then) =
      _$DiscountCopyWithImpl<$Res, Discount>;
  @useResult
  $Res call({double amountOff});
}

/// @nodoc
class _$DiscountCopyWithImpl<$Res, $Val extends Discount>
    implements $DiscountCopyWith<$Res> {
  _$DiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Discount
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
abstract class _$$DiscountImplCopyWith<$Res>
    implements $DiscountCopyWith<$Res> {
  factory _$$DiscountImplCopyWith(
    _$DiscountImpl value,
    $Res Function(_$DiscountImpl) then,
  ) = __$$DiscountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amountOff});
}

/// @nodoc
class __$$DiscountImplCopyWithImpl<$Res>
    extends _$DiscountCopyWithImpl<$Res, _$DiscountImpl>
    implements _$$DiscountImplCopyWith<$Res> {
  __$$DiscountImplCopyWithImpl(
    _$DiscountImpl _value,
    $Res Function(_$DiscountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amountOff = null}) {
    return _then(
      _$DiscountImpl(
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

class _$DiscountImpl implements _Discount {
  const _$DiscountImpl({required this.amountOff});

  @override
  final double amountOff;

  @override
  String toString() {
    return 'Discount(amountOff: $amountOff)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountImpl &&
            (identical(other.amountOff, amountOff) ||
                other.amountOff == amountOff));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amountOff);

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountImplCopyWith<_$DiscountImpl> get copyWith =>
      __$$DiscountImplCopyWithImpl<_$DiscountImpl>(this, _$identity);
}

abstract class _Discount implements Discount {
  const factory _Discount({required final double amountOff}) = _$DiscountImpl;

  @override
  double get amountOff;

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountImplCopyWith<_$DiscountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartItemsPrices {
  CartItemPrice get price => throw _privateConstructorUsedError;
  List<AppliedTaxes> get appliedTaxes => throw _privateConstructorUsedError;

  /// Create a copy of CartItemsPrices
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemsPricesCopyWith<CartItemsPrices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemsPricesCopyWith<$Res> {
  factory $CartItemsPricesCopyWith(
    CartItemsPrices value,
    $Res Function(CartItemsPrices) then,
  ) = _$CartItemsPricesCopyWithImpl<$Res, CartItemsPrices>;
  @useResult
  $Res call({CartItemPrice price, List<AppliedTaxes> appliedTaxes});

  $CartItemPriceCopyWith<$Res> get price;
}

/// @nodoc
class _$CartItemsPricesCopyWithImpl<$Res, $Val extends CartItemsPrices>
    implements $CartItemsPricesCopyWith<$Res> {
  _$CartItemsPricesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItemsPrices
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
                        as CartItemPrice,
            appliedTaxes:
                null == appliedTaxes
                    ? _value.appliedTaxes
                    : appliedTaxes // ignore: cast_nullable_to_non_nullable
                        as List<AppliedTaxes>,
          )
          as $Val,
    );
  }

  /// Create a copy of CartItemsPrices
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartItemPriceCopyWith<$Res> get price {
    return $CartItemPriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartItemsPricesImplCopyWith<$Res>
    implements $CartItemsPricesCopyWith<$Res> {
  factory _$$CartItemsPricesImplCopyWith(
    _$CartItemsPricesImpl value,
    $Res Function(_$CartItemsPricesImpl) then,
  ) = __$$CartItemsPricesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartItemPrice price, List<AppliedTaxes> appliedTaxes});

  @override
  $CartItemPriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$CartItemsPricesImplCopyWithImpl<$Res>
    extends _$CartItemsPricesCopyWithImpl<$Res, _$CartItemsPricesImpl>
    implements _$$CartItemsPricesImplCopyWith<$Res> {
  __$$CartItemsPricesImplCopyWithImpl(
    _$CartItemsPricesImpl _value,
    $Res Function(_$CartItemsPricesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartItemsPrices
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? price = null, Object? appliedTaxes = null}) {
    return _then(
      _$CartItemsPricesImpl(
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as CartItemPrice,
        appliedTaxes:
            null == appliedTaxes
                ? _value._appliedTaxes
                : appliedTaxes // ignore: cast_nullable_to_non_nullable
                    as List<AppliedTaxes>,
      ),
    );
  }
}

/// @nodoc

class _$CartItemsPricesImpl implements _CartItemsPrices {
  const _$CartItemsPricesImpl({
    required this.price,
    required final List<AppliedTaxes> appliedTaxes,
  }) : _appliedTaxes = appliedTaxes;

  @override
  final CartItemPrice price;
  final List<AppliedTaxes> _appliedTaxes;
  @override
  List<AppliedTaxes> get appliedTaxes {
    if (_appliedTaxes is EqualUnmodifiableListView) return _appliedTaxes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appliedTaxes);
  }

  @override
  String toString() {
    return 'CartItemsPrices(price: $price, appliedTaxes: $appliedTaxes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemsPricesImpl &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(
              other._appliedTaxes,
              _appliedTaxes,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    price,
    const DeepCollectionEquality().hash(_appliedTaxes),
  );

  /// Create a copy of CartItemsPrices
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemsPricesImplCopyWith<_$CartItemsPricesImpl> get copyWith =>
      __$$CartItemsPricesImplCopyWithImpl<_$CartItemsPricesImpl>(
        this,
        _$identity,
      );
}

abstract class _CartItemsPrices implements CartItemsPrices {
  const factory _CartItemsPrices({
    required final CartItemPrice price,
    required final List<AppliedTaxes> appliedTaxes,
  }) = _$CartItemsPricesImpl;

  @override
  CartItemPrice get price;
  @override
  List<AppliedTaxes> get appliedTaxes;

  /// Create a copy of CartItemsPrices
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemsPricesImplCopyWith<_$CartItemsPricesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppliedTaxes {
  String get label => throw _privateConstructorUsedError;
  Money get amount => throw _privateConstructorUsedError;

  /// Create a copy of AppliedTaxes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppliedTaxesCopyWith<AppliedTaxes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppliedTaxesCopyWith<$Res> {
  factory $AppliedTaxesCopyWith(
    AppliedTaxes value,
    $Res Function(AppliedTaxes) then,
  ) = _$AppliedTaxesCopyWithImpl<$Res, AppliedTaxes>;
  @useResult
  $Res call({String label, Money amount});
}

/// @nodoc
class _$AppliedTaxesCopyWithImpl<$Res, $Val extends AppliedTaxes>
    implements $AppliedTaxesCopyWith<$Res> {
  _$AppliedTaxesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppliedTaxes
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
                        as Money,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppliedTaxesImplCopyWith<$Res>
    implements $AppliedTaxesCopyWith<$Res> {
  factory _$$AppliedTaxesImplCopyWith(
    _$AppliedTaxesImpl value,
    $Res Function(_$AppliedTaxesImpl) then,
  ) = __$$AppliedTaxesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, Money amount});
}

/// @nodoc
class __$$AppliedTaxesImplCopyWithImpl<$Res>
    extends _$AppliedTaxesCopyWithImpl<$Res, _$AppliedTaxesImpl>
    implements _$$AppliedTaxesImplCopyWith<$Res> {
  __$$AppliedTaxesImplCopyWithImpl(
    _$AppliedTaxesImpl _value,
    $Res Function(_$AppliedTaxesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppliedTaxes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = null, Object? amount = null}) {
    return _then(
      _$AppliedTaxesImpl(
        label:
            null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String,
        amount:
            null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as Money,
      ),
    );
  }
}

/// @nodoc

class _$AppliedTaxesImpl implements _AppliedTaxes {
  const _$AppliedTaxesImpl({required this.label, required this.amount});

  @override
  final String label;
  @override
  final Money amount;

  @override
  String toString() {
    return 'AppliedTaxes(label: $label, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppliedTaxesImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, amount);

  /// Create a copy of AppliedTaxes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppliedTaxesImplCopyWith<_$AppliedTaxesImpl> get copyWith =>
      __$$AppliedTaxesImplCopyWithImpl<_$AppliedTaxesImpl>(this, _$identity);
}

abstract class _AppliedTaxes implements AppliedTaxes {
  const factory _AppliedTaxes({
    required final String label,
    required final Money amount,
  }) = _$AppliedTaxesImpl;

  @override
  String get label;
  @override
  Money get amount;

  /// Create a copy of AppliedTaxes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppliedTaxesImplCopyWith<_$AppliedTaxesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartItemPrice {
  double get value => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  /// Create a copy of CartItemPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemPriceCopyWith<CartItemPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemPriceCopyWith<$Res> {
  factory $CartItemPriceCopyWith(
    CartItemPrice value,
    $Res Function(CartItemPrice) then,
  ) = _$CartItemPriceCopyWithImpl<$Res, CartItemPrice>;
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class _$CartItemPriceCopyWithImpl<$Res, $Val extends CartItemPrice>
    implements $CartItemPriceCopyWith<$Res> {
  _$CartItemPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItemPrice
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
abstract class _$$CartItemPriceImplCopyWith<$Res>
    implements $CartItemPriceCopyWith<$Res> {
  factory _$$CartItemPriceImplCopyWith(
    _$CartItemPriceImpl value,
    $Res Function(_$CartItemPriceImpl) then,
  ) = __$$CartItemPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class __$$CartItemPriceImplCopyWithImpl<$Res>
    extends _$CartItemPriceCopyWithImpl<$Res, _$CartItemPriceImpl>
    implements _$$CartItemPriceImplCopyWith<$Res> {
  __$$CartItemPriceImplCopyWithImpl(
    _$CartItemPriceImpl _value,
    $Res Function(_$CartItemPriceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartItemPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? currency = null}) {
    return _then(
      _$CartItemPriceImpl(
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

class _$CartItemPriceImpl implements _CartItemPrice {
  const _$CartItemPriceImpl({required this.value, required this.currency});

  @override
  final double value;
  @override
  final String currency;

  @override
  String toString() {
    return 'CartItemPrice(value: $value, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemPriceImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, currency);

  /// Create a copy of CartItemPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemPriceImplCopyWith<_$CartItemPriceImpl> get copyWith =>
      __$$CartItemPriceImplCopyWithImpl<_$CartItemPriceImpl>(this, _$identity);
}

abstract class _CartItemPrice implements CartItemPrice {
  const factory _CartItemPrice({
    required final double value,
    required final String currency,
  }) = _$CartItemPriceImpl;

  @override
  double get value;
  @override
  String get currency;

  /// Create a copy of CartItemPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemPriceImplCopyWith<_$CartItemPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectedPaymentMethod {
  String get code => throw _privateConstructorUsedError;

  /// Create a copy of SelectedPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectedPaymentMethodCopyWith<SelectedPaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedPaymentMethodCopyWith<$Res> {
  factory $SelectedPaymentMethodCopyWith(
    SelectedPaymentMethod value,
    $Res Function(SelectedPaymentMethod) then,
  ) = _$SelectedPaymentMethodCopyWithImpl<$Res, SelectedPaymentMethod>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$SelectedPaymentMethodCopyWithImpl<
  $Res,
  $Val extends SelectedPaymentMethod
>
    implements $SelectedPaymentMethodCopyWith<$Res> {
  _$SelectedPaymentMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedPaymentMethod
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
abstract class _$$SelectedPaymentMethodImplCopyWith<$Res>
    implements $SelectedPaymentMethodCopyWith<$Res> {
  factory _$$SelectedPaymentMethodImplCopyWith(
    _$SelectedPaymentMethodImpl value,
    $Res Function(_$SelectedPaymentMethodImpl) then,
  ) = __$$SelectedPaymentMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$SelectedPaymentMethodImplCopyWithImpl<$Res>
    extends
        _$SelectedPaymentMethodCopyWithImpl<$Res, _$SelectedPaymentMethodImpl>
    implements _$$SelectedPaymentMethodImplCopyWith<$Res> {
  __$$SelectedPaymentMethodImplCopyWithImpl(
    _$SelectedPaymentMethodImpl _value,
    $Res Function(_$SelectedPaymentMethodImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SelectedPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null}) {
    return _then(
      _$SelectedPaymentMethodImpl(
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

class _$SelectedPaymentMethodImpl implements _SelectedPaymentMethod {
  const _$SelectedPaymentMethodImpl({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'SelectedPaymentMethod(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedPaymentMethodImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of SelectedPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedPaymentMethodImplCopyWith<_$SelectedPaymentMethodImpl>
  get copyWith =>
      __$$SelectedPaymentMethodImplCopyWithImpl<_$SelectedPaymentMethodImpl>(
        this,
        _$identity,
      );
}

abstract class _SelectedPaymentMethod implements SelectedPaymentMethod {
  const factory _SelectedPaymentMethod({required final String code}) =
      _$SelectedPaymentMethodImpl;

  @override
  String get code;

  /// Create a copy of SelectedPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedPaymentMethodImplCopyWith<_$SelectedPaymentMethodImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppliedCoupon {
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;

  /// Create a copy of AppliedCoupon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppliedCouponCopyWith<AppliedCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppliedCouponCopyWith<$Res> {
  factory $AppliedCouponCopyWith(
    AppliedCoupon value,
    $Res Function(AppliedCoupon) then,
  ) = _$AppliedCouponCopyWithImpl<$Res, AppliedCoupon>;
  @useResult
  $Res call({@JsonKey(name: 'code') String code});
}

/// @nodoc
class _$AppliedCouponCopyWithImpl<$Res, $Val extends AppliedCoupon>
    implements $AppliedCouponCopyWith<$Res> {
  _$AppliedCouponCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppliedCoupon
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
abstract class _$$AppliedCouponImplCopyWith<$Res>
    implements $AppliedCouponCopyWith<$Res> {
  factory _$$AppliedCouponImplCopyWith(
    _$AppliedCouponImpl value,
    $Res Function(_$AppliedCouponImpl) then,
  ) = __$$AppliedCouponImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'code') String code});
}

/// @nodoc
class __$$AppliedCouponImplCopyWithImpl<$Res>
    extends _$AppliedCouponCopyWithImpl<$Res, _$AppliedCouponImpl>
    implements _$$AppliedCouponImplCopyWith<$Res> {
  __$$AppliedCouponImplCopyWithImpl(
    _$AppliedCouponImpl _value,
    $Res Function(_$AppliedCouponImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppliedCoupon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null}) {
    return _then(
      _$AppliedCouponImpl(
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

class _$AppliedCouponImpl implements _AppliedCoupon {
  const _$AppliedCouponImpl({@JsonKey(name: 'code') required this.code});

  @override
  @JsonKey(name: 'code')
  final String code;

  @override
  String toString() {
    return 'AppliedCoupon(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppliedCouponImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of AppliedCoupon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppliedCouponImplCopyWith<_$AppliedCouponImpl> get copyWith =>
      __$$AppliedCouponImplCopyWithImpl<_$AppliedCouponImpl>(this, _$identity);
}

abstract class _AppliedCoupon implements AppliedCoupon {
  const factory _AppliedCoupon({
    @JsonKey(name: 'code') required final String code,
  }) = _$AppliedCouponImpl;

  @override
  @JsonKey(name: 'code')
  String get code;

  /// Create a copy of AppliedCoupon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppliedCouponImplCopyWith<_$AppliedCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
