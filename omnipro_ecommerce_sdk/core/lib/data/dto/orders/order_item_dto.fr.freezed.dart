// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderItemDTO _$OrderItemDTOFromJson(Map<String, dynamic> json) {
  return _OrderItemDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderItemDTO {
  String get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  String get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'edited_at')
  String? get editedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_method')
  String get shippingMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_number')
  String get number => throw _privateConstructorUsedError;
  String get carrier => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_date')
  String get orderDate => throw _privateConstructorUsedError;
  OrderItemTotalDTO get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_address')
  ShippingAddressOrderDTO get shippingAddress =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_methods')
  List<OrderPaymentMethodItemDTO> get paymentMethods =>
      throw _privateConstructorUsedError;
  List<ItemProductDTO> get items => throw _privateConstructorUsedError;

  /// Serializes this OrderItemDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemDTOCopyWith<OrderItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemDTOCopyWith<$Res> {
  factory $OrderItemDTOCopyWith(
    OrderItemDTO value,
    $Res Function(OrderItemDTO) then,
  ) = _$OrderItemDTOCopyWithImpl<$Res, OrderItemDTO>;
  @useResult
  $Res call({
    String id,
    String status,
    @JsonKey(name: 'status_code') String statusCode,
    @JsonKey(name: 'edited_at') String? editedAt,
    @JsonKey(name: 'shipping_method') String shippingMethod,
    @JsonKey(name: 'order_number') String number,
    String carrier,
    @JsonKey(name: 'order_date') String orderDate,
    OrderItemTotalDTO total,
    @JsonKey(name: 'shipping_address') ShippingAddressOrderDTO shippingAddress,
    @JsonKey(name: 'payment_methods')
    List<OrderPaymentMethodItemDTO> paymentMethods,
    List<ItemProductDTO> items,
  });

  $OrderItemTotalDTOCopyWith<$Res> get total;
  $ShippingAddressOrderDTOCopyWith<$Res> get shippingAddress;
}

/// @nodoc
class _$OrderItemDTOCopyWithImpl<$Res, $Val extends OrderItemDTO>
    implements $OrderItemDTOCopyWith<$Res> {
  _$OrderItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? statusCode = null,
    Object? editedAt = freezed,
    Object? shippingMethod = null,
    Object? number = null,
    Object? carrier = null,
    Object? orderDate = null,
    Object? total = null,
    Object? shippingAddress = null,
    Object? paymentMethods = null,
    Object? items = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            statusCode:
                null == statusCode
                    ? _value.statusCode
                    : statusCode // ignore: cast_nullable_to_non_nullable
                        as String,
            editedAt:
                freezed == editedAt
                    ? _value.editedAt
                    : editedAt // ignore: cast_nullable_to_non_nullable
                        as String?,
            shippingMethod:
                null == shippingMethod
                    ? _value.shippingMethod
                    : shippingMethod // ignore: cast_nullable_to_non_nullable
                        as String,
            number:
                null == number
                    ? _value.number
                    : number // ignore: cast_nullable_to_non_nullable
                        as String,
            carrier:
                null == carrier
                    ? _value.carrier
                    : carrier // ignore: cast_nullable_to_non_nullable
                        as String,
            orderDate:
                null == orderDate
                    ? _value.orderDate
                    : orderDate // ignore: cast_nullable_to_non_nullable
                        as String,
            total:
                null == total
                    ? _value.total
                    : total // ignore: cast_nullable_to_non_nullable
                        as OrderItemTotalDTO,
            shippingAddress:
                null == shippingAddress
                    ? _value.shippingAddress
                    : shippingAddress // ignore: cast_nullable_to_non_nullable
                        as ShippingAddressOrderDTO,
            paymentMethods:
                null == paymentMethods
                    ? _value.paymentMethods
                    : paymentMethods // ignore: cast_nullable_to_non_nullable
                        as List<OrderPaymentMethodItemDTO>,
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<ItemProductDTO>,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderItemTotalDTOCopyWith<$Res> get total {
    return $OrderItemTotalDTOCopyWith<$Res>(_value.total, (value) {
      return _then(_value.copyWith(total: value) as $Val);
    });
  }

  /// Create a copy of OrderItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShippingAddressOrderDTOCopyWith<$Res> get shippingAddress {
    return $ShippingAddressOrderDTOCopyWith<$Res>(_value.shippingAddress, (
      value,
    ) {
      return _then(_value.copyWith(shippingAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderItemDTOImplCopyWith<$Res>
    implements $OrderItemDTOCopyWith<$Res> {
  factory _$$OrderItemDTOImplCopyWith(
    _$OrderItemDTOImpl value,
    $Res Function(_$OrderItemDTOImpl) then,
  ) = __$$OrderItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String status,
    @JsonKey(name: 'status_code') String statusCode,
    @JsonKey(name: 'edited_at') String? editedAt,
    @JsonKey(name: 'shipping_method') String shippingMethod,
    @JsonKey(name: 'order_number') String number,
    String carrier,
    @JsonKey(name: 'order_date') String orderDate,
    OrderItemTotalDTO total,
    @JsonKey(name: 'shipping_address') ShippingAddressOrderDTO shippingAddress,
    @JsonKey(name: 'payment_methods')
    List<OrderPaymentMethodItemDTO> paymentMethods,
    List<ItemProductDTO> items,
  });

  @override
  $OrderItemTotalDTOCopyWith<$Res> get total;
  @override
  $ShippingAddressOrderDTOCopyWith<$Res> get shippingAddress;
}

/// @nodoc
class __$$OrderItemDTOImplCopyWithImpl<$Res>
    extends _$OrderItemDTOCopyWithImpl<$Res, _$OrderItemDTOImpl>
    implements _$$OrderItemDTOImplCopyWith<$Res> {
  __$$OrderItemDTOImplCopyWithImpl(
    _$OrderItemDTOImpl _value,
    $Res Function(_$OrderItemDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? statusCode = null,
    Object? editedAt = freezed,
    Object? shippingMethod = null,
    Object? number = null,
    Object? carrier = null,
    Object? orderDate = null,
    Object? total = null,
    Object? shippingAddress = null,
    Object? paymentMethods = null,
    Object? items = null,
  }) {
    return _then(
      _$OrderItemDTOImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        statusCode:
            null == statusCode
                ? _value.statusCode
                : statusCode // ignore: cast_nullable_to_non_nullable
                    as String,
        editedAt:
            freezed == editedAt
                ? _value.editedAt
                : editedAt // ignore: cast_nullable_to_non_nullable
                    as String?,
        shippingMethod:
            null == shippingMethod
                ? _value.shippingMethod
                : shippingMethod // ignore: cast_nullable_to_non_nullable
                    as String,
        number:
            null == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                    as String,
        carrier:
            null == carrier
                ? _value.carrier
                : carrier // ignore: cast_nullable_to_non_nullable
                    as String,
        orderDate:
            null == orderDate
                ? _value.orderDate
                : orderDate // ignore: cast_nullable_to_non_nullable
                    as String,
        total:
            null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                    as OrderItemTotalDTO,
        shippingAddress:
            null == shippingAddress
                ? _value.shippingAddress
                : shippingAddress // ignore: cast_nullable_to_non_nullable
                    as ShippingAddressOrderDTO,
        paymentMethods:
            null == paymentMethods
                ? _value._paymentMethods
                : paymentMethods // ignore: cast_nullable_to_non_nullable
                    as List<OrderPaymentMethodItemDTO>,
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<ItemProductDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemDTOImpl implements _OrderItemDTO {
  const _$OrderItemDTOImpl({
    required this.id,
    required this.status,
    @JsonKey(name: 'status_code') required this.statusCode,
    @JsonKey(name: 'edited_at') this.editedAt,
    @JsonKey(name: 'shipping_method') required this.shippingMethod,
    @JsonKey(name: 'order_number') required this.number,
    this.carrier = '',
    @JsonKey(name: 'order_date') required this.orderDate,
    required this.total,
    @JsonKey(name: 'shipping_address') required this.shippingAddress,
    @JsonKey(name: 'payment_methods')
    required final List<OrderPaymentMethodItemDTO> paymentMethods,
    required final List<ItemProductDTO> items,
  }) : _paymentMethods = paymentMethods,
       _items = items;

  factory _$OrderItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String status;
  @override
  @JsonKey(name: 'status_code')
  final String statusCode;
  @override
  @JsonKey(name: 'edited_at')
  final String? editedAt;
  @override
  @JsonKey(name: 'shipping_method')
  final String shippingMethod;
  @override
  @JsonKey(name: 'order_number')
  final String number;
  @override
  @JsonKey()
  final String carrier;
  @override
  @JsonKey(name: 'order_date')
  final String orderDate;
  @override
  final OrderItemTotalDTO total;
  @override
  @JsonKey(name: 'shipping_address')
  final ShippingAddressOrderDTO shippingAddress;
  final List<OrderPaymentMethodItemDTO> _paymentMethods;
  @override
  @JsonKey(name: 'payment_methods')
  List<OrderPaymentMethodItemDTO> get paymentMethods {
    if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentMethods);
  }

  final List<ItemProductDTO> _items;
  @override
  List<ItemProductDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'OrderItemDTO(id: $id, status: $status, statusCode: $statusCode, editedAt: $editedAt, shippingMethod: $shippingMethod, number: $number, carrier: $carrier, orderDate: $orderDate, total: $total, shippingAddress: $shippingAddress, paymentMethods: $paymentMethods, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.editedAt, editedAt) ||
                other.editedAt == editedAt) &&
            (identical(other.shippingMethod, shippingMethod) ||
                other.shippingMethod == shippingMethod) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.carrier, carrier) || other.carrier == carrier) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            const DeepCollectionEquality().equals(
              other._paymentMethods,
              _paymentMethods,
            ) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    status,
    statusCode,
    editedAt,
    shippingMethod,
    number,
    carrier,
    orderDate,
    total,
    shippingAddress,
    const DeepCollectionEquality().hash(_paymentMethods),
    const DeepCollectionEquality().hash(_items),
  );

  /// Create a copy of OrderItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemDTOImplCopyWith<_$OrderItemDTOImpl> get copyWith =>
      __$$OrderItemDTOImplCopyWithImpl<_$OrderItemDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemDTOImplToJson(this);
  }
}

abstract class _OrderItemDTO implements OrderItemDTO {
  const factory _OrderItemDTO({
    required final String id,
    required final String status,
    @JsonKey(name: 'status_code') required final String statusCode,
    @JsonKey(name: 'edited_at') final String? editedAt,
    @JsonKey(name: 'shipping_method') required final String shippingMethod,
    @JsonKey(name: 'order_number') required final String number,
    final String carrier,
    @JsonKey(name: 'order_date') required final String orderDate,
    required final OrderItemTotalDTO total,
    @JsonKey(name: 'shipping_address')
    required final ShippingAddressOrderDTO shippingAddress,
    @JsonKey(name: 'payment_methods')
    required final List<OrderPaymentMethodItemDTO> paymentMethods,
    required final List<ItemProductDTO> items,
  }) = _$OrderItemDTOImpl;

  factory _OrderItemDTO.fromJson(Map<String, dynamic> json) =
      _$OrderItemDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get status;
  @override
  @JsonKey(name: 'status_code')
  String get statusCode;
  @override
  @JsonKey(name: 'edited_at')
  String? get editedAt;
  @override
  @JsonKey(name: 'shipping_method')
  String get shippingMethod;
  @override
  @JsonKey(name: 'order_number')
  String get number;
  @override
  String get carrier;
  @override
  @JsonKey(name: 'order_date')
  String get orderDate;
  @override
  OrderItemTotalDTO get total;
  @override
  @JsonKey(name: 'shipping_address')
  ShippingAddressOrderDTO get shippingAddress;
  @override
  @JsonKey(name: 'payment_methods')
  List<OrderPaymentMethodItemDTO> get paymentMethods;
  @override
  List<ItemProductDTO> get items;

  /// Create a copy of OrderItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemDTOImplCopyWith<_$OrderItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShippingAddressOrderDTO _$ShippingAddressOrderDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ShippingAddressOrderDTO.fromJson(json);
}

/// @nodoc
mixin _$ShippingAddressOrderDTO {
  String get city => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String get countryCode => throw _privateConstructorUsedError;
  String? get fax => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get postcode => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  List<String> get street => throw _privateConstructorUsedError;
  String get telephone => throw _privateConstructorUsedError;

  /// Serializes this ShippingAddressOrderDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShippingAddressOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingAddressOrderDTOCopyWith<ShippingAddressOrderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingAddressOrderDTOCopyWith<$Res> {
  factory $ShippingAddressOrderDTOCopyWith(
    ShippingAddressOrderDTO value,
    $Res Function(ShippingAddressOrderDTO) then,
  ) = _$ShippingAddressOrderDTOCopyWithImpl<$Res, ShippingAddressOrderDTO>;
  @useResult
  $Res call({
    String city,
    String? company,
    @JsonKey(name: 'country_code') String countryCode,
    String? fax,
    String firstname,
    String lastname,
    String postcode,
    String region,
    List<String> street,
    String telephone,
  });
}

/// @nodoc
class _$ShippingAddressOrderDTOCopyWithImpl<
  $Res,
  $Val extends ShippingAddressOrderDTO
>
    implements $ShippingAddressOrderDTOCopyWith<$Res> {
  _$ShippingAddressOrderDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingAddressOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? company = freezed,
    Object? countryCode = null,
    Object? fax = freezed,
    Object? firstname = null,
    Object? lastname = null,
    Object? postcode = null,
    Object? region = null,
    Object? street = null,
    Object? telephone = null,
  }) {
    return _then(
      _value.copyWith(
            city:
                null == city
                    ? _value.city
                    : city // ignore: cast_nullable_to_non_nullable
                        as String,
            company:
                freezed == company
                    ? _value.company
                    : company // ignore: cast_nullable_to_non_nullable
                        as String?,
            countryCode:
                null == countryCode
                    ? _value.countryCode
                    : countryCode // ignore: cast_nullable_to_non_nullable
                        as String,
            fax:
                freezed == fax
                    ? _value.fax
                    : fax // ignore: cast_nullable_to_non_nullable
                        as String?,
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
            postcode:
                null == postcode
                    ? _value.postcode
                    : postcode // ignore: cast_nullable_to_non_nullable
                        as String,
            region:
                null == region
                    ? _value.region
                    : region // ignore: cast_nullable_to_non_nullable
                        as String,
            street:
                null == street
                    ? _value.street
                    : street // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            telephone:
                null == telephone
                    ? _value.telephone
                    : telephone // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShippingAddressOrderDTOImplCopyWith<$Res>
    implements $ShippingAddressOrderDTOCopyWith<$Res> {
  factory _$$ShippingAddressOrderDTOImplCopyWith(
    _$ShippingAddressOrderDTOImpl value,
    $Res Function(_$ShippingAddressOrderDTOImpl) then,
  ) = __$$ShippingAddressOrderDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String city,
    String? company,
    @JsonKey(name: 'country_code') String countryCode,
    String? fax,
    String firstname,
    String lastname,
    String postcode,
    String region,
    List<String> street,
    String telephone,
  });
}

/// @nodoc
class __$$ShippingAddressOrderDTOImplCopyWithImpl<$Res>
    extends
        _$ShippingAddressOrderDTOCopyWithImpl<
          $Res,
          _$ShippingAddressOrderDTOImpl
        >
    implements _$$ShippingAddressOrderDTOImplCopyWith<$Res> {
  __$$ShippingAddressOrderDTOImplCopyWithImpl(
    _$ShippingAddressOrderDTOImpl _value,
    $Res Function(_$ShippingAddressOrderDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShippingAddressOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? company = freezed,
    Object? countryCode = null,
    Object? fax = freezed,
    Object? firstname = null,
    Object? lastname = null,
    Object? postcode = null,
    Object? region = null,
    Object? street = null,
    Object? telephone = null,
  }) {
    return _then(
      _$ShippingAddressOrderDTOImpl(
        city:
            null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                    as String,
        company:
            freezed == company
                ? _value.company
                : company // ignore: cast_nullable_to_non_nullable
                    as String?,
        countryCode:
            null == countryCode
                ? _value.countryCode
                : countryCode // ignore: cast_nullable_to_non_nullable
                    as String,
        fax:
            freezed == fax
                ? _value.fax
                : fax // ignore: cast_nullable_to_non_nullable
                    as String?,
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
        postcode:
            null == postcode
                ? _value.postcode
                : postcode // ignore: cast_nullable_to_non_nullable
                    as String,
        region:
            null == region
                ? _value.region
                : region // ignore: cast_nullable_to_non_nullable
                    as String,
        street:
            null == street
                ? _value._street
                : street // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        telephone:
            null == telephone
                ? _value.telephone
                : telephone // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingAddressOrderDTOImpl implements _ShippingAddressOrderDTO {
  const _$ShippingAddressOrderDTOImpl({
    required this.city,
    this.company,
    @JsonKey(name: 'country_code') required this.countryCode,
    this.fax,
    required this.firstname,
    required this.lastname,
    this.postcode = '',
    required this.region,
    required final List<String> street,
    required this.telephone,
  }) : _street = street;

  factory _$ShippingAddressOrderDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingAddressOrderDTOImplFromJson(json);

  @override
  final String city;
  @override
  final String? company;
  @override
  @JsonKey(name: 'country_code')
  final String countryCode;
  @override
  final String? fax;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  @JsonKey()
  final String postcode;
  @override
  final String region;
  final List<String> _street;
  @override
  List<String> get street {
    if (_street is EqualUnmodifiableListView) return _street;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_street);
  }

  @override
  final String telephone;

  @override
  String toString() {
    return 'ShippingAddressOrderDTO(city: $city, company: $company, countryCode: $countryCode, fax: $fax, firstname: $firstname, lastname: $lastname, postcode: $postcode, region: $region, street: $street, telephone: $telephone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingAddressOrderDTOImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.fax, fax) || other.fax == fax) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.region, region) || other.region == region) &&
            const DeepCollectionEquality().equals(other._street, _street) &&
            (identical(other.telephone, telephone) ||
                other.telephone == telephone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    city,
    company,
    countryCode,
    fax,
    firstname,
    lastname,
    postcode,
    region,
    const DeepCollectionEquality().hash(_street),
    telephone,
  );

  /// Create a copy of ShippingAddressOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingAddressOrderDTOImplCopyWith<_$ShippingAddressOrderDTOImpl>
  get copyWith => __$$ShippingAddressOrderDTOImplCopyWithImpl<
    _$ShippingAddressOrderDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingAddressOrderDTOImplToJson(this);
  }
}

abstract class _ShippingAddressOrderDTO implements ShippingAddressOrderDTO {
  const factory _ShippingAddressOrderDTO({
    required final String city,
    final String? company,
    @JsonKey(name: 'country_code') required final String countryCode,
    final String? fax,
    required final String firstname,
    required final String lastname,
    final String postcode,
    required final String region,
    required final List<String> street,
    required final String telephone,
  }) = _$ShippingAddressOrderDTOImpl;

  factory _ShippingAddressOrderDTO.fromJson(Map<String, dynamic> json) =
      _$ShippingAddressOrderDTOImpl.fromJson;

  @override
  String get city;
  @override
  String? get company;
  @override
  @JsonKey(name: 'country_code')
  String get countryCode;
  @override
  String? get fax;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get postcode;
  @override
  String get region;
  @override
  List<String> get street;
  @override
  String get telephone;

  /// Create a copy of ShippingAddressOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingAddressOrderDTOImplCopyWith<_$ShippingAddressOrderDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

OrderPaymentMethodItemDTO _$OrderPaymentMethodItemDTOFromJson(
  Map<String, dynamic> json,
) {
  return _OrderPaymentMethodItemDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderPaymentMethodItemDTO {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;

  /// Serializes this OrderPaymentMethodItemDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderPaymentMethodItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderPaymentMethodItemDTOCopyWith<OrderPaymentMethodItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPaymentMethodItemDTOCopyWith<$Res> {
  factory $OrderPaymentMethodItemDTOCopyWith(
    OrderPaymentMethodItemDTO value,
    $Res Function(OrderPaymentMethodItemDTO) then,
  ) = _$OrderPaymentMethodItemDTOCopyWithImpl<$Res, OrderPaymentMethodItemDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'type') String type,
  });
}

/// @nodoc
class _$OrderPaymentMethodItemDTOCopyWithImpl<
  $Res,
  $Val extends OrderPaymentMethodItemDTO
>
    implements $OrderPaymentMethodItemDTOCopyWith<$Res> {
  _$OrderPaymentMethodItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderPaymentMethodItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? type = null}) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderPaymentMethodItemDTOImplCopyWith<$Res>
    implements $OrderPaymentMethodItemDTOCopyWith<$Res> {
  factory _$$OrderPaymentMethodItemDTOImplCopyWith(
    _$OrderPaymentMethodItemDTOImpl value,
    $Res Function(_$OrderPaymentMethodItemDTOImpl) then,
  ) = __$$OrderPaymentMethodItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'type') String type,
  });
}

/// @nodoc
class __$$OrderPaymentMethodItemDTOImplCopyWithImpl<$Res>
    extends
        _$OrderPaymentMethodItemDTOCopyWithImpl<
          $Res,
          _$OrderPaymentMethodItemDTOImpl
        >
    implements _$$OrderPaymentMethodItemDTOImplCopyWith<$Res> {
  __$$OrderPaymentMethodItemDTOImplCopyWithImpl(
    _$OrderPaymentMethodItemDTOImpl _value,
    $Res Function(_$OrderPaymentMethodItemDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderPaymentMethodItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? type = null}) {
    return _then(
      _$OrderPaymentMethodItemDTOImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderPaymentMethodItemDTOImpl implements _OrderPaymentMethodItemDTO {
  const _$OrderPaymentMethodItemDTOImpl({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'type') required this.type,
  });

  factory _$OrderPaymentMethodItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderPaymentMethodItemDTOImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'type')
  final String type;

  @override
  String toString() {
    return 'OrderPaymentMethodItemDTO(name: $name, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPaymentMethodItemDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type);

  /// Create a copy of OrderPaymentMethodItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPaymentMethodItemDTOImplCopyWith<_$OrderPaymentMethodItemDTOImpl>
  get copyWith => __$$OrderPaymentMethodItemDTOImplCopyWithImpl<
    _$OrderPaymentMethodItemDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderPaymentMethodItemDTOImplToJson(this);
  }
}

abstract class _OrderPaymentMethodItemDTO implements OrderPaymentMethodItemDTO {
  const factory _OrderPaymentMethodItemDTO({
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'type') required final String type,
  }) = _$OrderPaymentMethodItemDTOImpl;

  factory _OrderPaymentMethodItemDTO.fromJson(Map<String, dynamic> json) =
      _$OrderPaymentMethodItemDTOImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'type')
  String get type;

  /// Create a copy of OrderPaymentMethodItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderPaymentMethodItemDTOImplCopyWith<_$OrderPaymentMethodItemDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

OrderItemTotalDTO _$OrderItemTotalDTOFromJson(Map<String, dynamic> json) {
  return _OrderItemTotalDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderItemTotalDTO {
  @JsonKey(name: 'grand_total')
  OrderItemGrandTotalDTO get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tax')
  MoneyDTO get totalTax => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtotal')
  MoneyDTO get subTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_handling')
  OrderItemShippingHandlingDTO get shippingHandling =>
      throw _privateConstructorUsedError;
  List<MoneyInfoDTO> get discounts => throw _privateConstructorUsedError;

  /// Serializes this OrderItemTotalDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemTotalDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemTotalDTOCopyWith<OrderItemTotalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemTotalDTOCopyWith<$Res> {
  factory $OrderItemTotalDTOCopyWith(
    OrderItemTotalDTO value,
    $Res Function(OrderItemTotalDTO) then,
  ) = _$OrderItemTotalDTOCopyWithImpl<$Res, OrderItemTotalDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'grand_total') OrderItemGrandTotalDTO grandTotal,
    @JsonKey(name: 'total_tax') MoneyDTO totalTax,
    @JsonKey(name: 'subtotal') MoneyDTO subTotal,
    @JsonKey(name: 'shipping_handling')
    OrderItemShippingHandlingDTO shippingHandling,
    List<MoneyInfoDTO> discounts,
  });

  $OrderItemGrandTotalDTOCopyWith<$Res> get grandTotal;
  $MoneyDTOCopyWith<$Res> get totalTax;
  $MoneyDTOCopyWith<$Res> get subTotal;
  $OrderItemShippingHandlingDTOCopyWith<$Res> get shippingHandling;
}

/// @nodoc
class _$OrderItemTotalDTOCopyWithImpl<$Res, $Val extends OrderItemTotalDTO>
    implements $OrderItemTotalDTOCopyWith<$Res> {
  _$OrderItemTotalDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemTotalDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grandTotal = null,
    Object? totalTax = null,
    Object? subTotal = null,
    Object? shippingHandling = null,
    Object? discounts = null,
  }) {
    return _then(
      _value.copyWith(
            grandTotal:
                null == grandTotal
                    ? _value.grandTotal
                    : grandTotal // ignore: cast_nullable_to_non_nullable
                        as OrderItemGrandTotalDTO,
            totalTax:
                null == totalTax
                    ? _value.totalTax
                    : totalTax // ignore: cast_nullable_to_non_nullable
                        as MoneyDTO,
            subTotal:
                null == subTotal
                    ? _value.subTotal
                    : subTotal // ignore: cast_nullable_to_non_nullable
                        as MoneyDTO,
            shippingHandling:
                null == shippingHandling
                    ? _value.shippingHandling
                    : shippingHandling // ignore: cast_nullable_to_non_nullable
                        as OrderItemShippingHandlingDTO,
            discounts:
                null == discounts
                    ? _value.discounts
                    : discounts // ignore: cast_nullable_to_non_nullable
                        as List<MoneyInfoDTO>,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderItemTotalDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderItemGrandTotalDTOCopyWith<$Res> get grandTotal {
    return $OrderItemGrandTotalDTOCopyWith<$Res>(_value.grandTotal, (value) {
      return _then(_value.copyWith(grandTotal: value) as $Val);
    });
  }

  /// Create a copy of OrderItemTotalDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyDTOCopyWith<$Res> get totalTax {
    return $MoneyDTOCopyWith<$Res>(_value.totalTax, (value) {
      return _then(_value.copyWith(totalTax: value) as $Val);
    });
  }

  /// Create a copy of OrderItemTotalDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyDTOCopyWith<$Res> get subTotal {
    return $MoneyDTOCopyWith<$Res>(_value.subTotal, (value) {
      return _then(_value.copyWith(subTotal: value) as $Val);
    });
  }

  /// Create a copy of OrderItemTotalDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderItemShippingHandlingDTOCopyWith<$Res> get shippingHandling {
    return $OrderItemShippingHandlingDTOCopyWith<$Res>(
      _value.shippingHandling,
      (value) {
        return _then(_value.copyWith(shippingHandling: value) as $Val);
      },
    );
  }
}

/// @nodoc
abstract class _$$OrderItemTotalDTOImplCopyWith<$Res>
    implements $OrderItemTotalDTOCopyWith<$Res> {
  factory _$$OrderItemTotalDTOImplCopyWith(
    _$OrderItemTotalDTOImpl value,
    $Res Function(_$OrderItemTotalDTOImpl) then,
  ) = __$$OrderItemTotalDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'grand_total') OrderItemGrandTotalDTO grandTotal,
    @JsonKey(name: 'total_tax') MoneyDTO totalTax,
    @JsonKey(name: 'subtotal') MoneyDTO subTotal,
    @JsonKey(name: 'shipping_handling')
    OrderItemShippingHandlingDTO shippingHandling,
    List<MoneyInfoDTO> discounts,
  });

  @override
  $OrderItemGrandTotalDTOCopyWith<$Res> get grandTotal;
  @override
  $MoneyDTOCopyWith<$Res> get totalTax;
  @override
  $MoneyDTOCopyWith<$Res> get subTotal;
  @override
  $OrderItemShippingHandlingDTOCopyWith<$Res> get shippingHandling;
}

/// @nodoc
class __$$OrderItemTotalDTOImplCopyWithImpl<$Res>
    extends _$OrderItemTotalDTOCopyWithImpl<$Res, _$OrderItemTotalDTOImpl>
    implements _$$OrderItemTotalDTOImplCopyWith<$Res> {
  __$$OrderItemTotalDTOImplCopyWithImpl(
    _$OrderItemTotalDTOImpl _value,
    $Res Function(_$OrderItemTotalDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderItemTotalDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grandTotal = null,
    Object? totalTax = null,
    Object? subTotal = null,
    Object? shippingHandling = null,
    Object? discounts = null,
  }) {
    return _then(
      _$OrderItemTotalDTOImpl(
        grandTotal:
            null == grandTotal
                ? _value.grandTotal
                : grandTotal // ignore: cast_nullable_to_non_nullable
                    as OrderItemGrandTotalDTO,
        totalTax:
            null == totalTax
                ? _value.totalTax
                : totalTax // ignore: cast_nullable_to_non_nullable
                    as MoneyDTO,
        subTotal:
            null == subTotal
                ? _value.subTotal
                : subTotal // ignore: cast_nullable_to_non_nullable
                    as MoneyDTO,
        shippingHandling:
            null == shippingHandling
                ? _value.shippingHandling
                : shippingHandling // ignore: cast_nullable_to_non_nullable
                    as OrderItemShippingHandlingDTO,
        discounts:
            null == discounts
                ? _value._discounts
                : discounts // ignore: cast_nullable_to_non_nullable
                    as List<MoneyInfoDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemTotalDTOImpl implements _OrderItemTotalDTO {
  const _$OrderItemTotalDTOImpl({
    @JsonKey(name: 'grand_total') required this.grandTotal,
    @JsonKey(name: 'total_tax') required this.totalTax,
    @JsonKey(name: 'subtotal') required this.subTotal,
    @JsonKey(name: 'shipping_handling') required this.shippingHandling,
    required final List<MoneyInfoDTO> discounts,
  }) : _discounts = discounts;

  factory _$OrderItemTotalDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemTotalDTOImplFromJson(json);

  @override
  @JsonKey(name: 'grand_total')
  final OrderItemGrandTotalDTO grandTotal;
  @override
  @JsonKey(name: 'total_tax')
  final MoneyDTO totalTax;
  @override
  @JsonKey(name: 'subtotal')
  final MoneyDTO subTotal;
  @override
  @JsonKey(name: 'shipping_handling')
  final OrderItemShippingHandlingDTO shippingHandling;
  final List<MoneyInfoDTO> _discounts;
  @override
  List<MoneyInfoDTO> get discounts {
    if (_discounts is EqualUnmodifiableListView) return _discounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discounts);
  }

  @override
  String toString() {
    return 'OrderItemTotalDTO(grandTotal: $grandTotal, totalTax: $totalTax, subTotal: $subTotal, shippingHandling: $shippingHandling, discounts: $discounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemTotalDTOImpl &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.totalTax, totalTax) ||
                other.totalTax == totalTax) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.shippingHandling, shippingHandling) ||
                other.shippingHandling == shippingHandling) &&
            const DeepCollectionEquality().equals(
              other._discounts,
              _discounts,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    grandTotal,
    totalTax,
    subTotal,
    shippingHandling,
    const DeepCollectionEquality().hash(_discounts),
  );

  /// Create a copy of OrderItemTotalDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemTotalDTOImplCopyWith<_$OrderItemTotalDTOImpl> get copyWith =>
      __$$OrderItemTotalDTOImplCopyWithImpl<_$OrderItemTotalDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemTotalDTOImplToJson(this);
  }
}

abstract class _OrderItemTotalDTO implements OrderItemTotalDTO {
  const factory _OrderItemTotalDTO({
    @JsonKey(name: 'grand_total')
    required final OrderItemGrandTotalDTO grandTotal,
    @JsonKey(name: 'total_tax') required final MoneyDTO totalTax,
    @JsonKey(name: 'subtotal') required final MoneyDTO subTotal,
    @JsonKey(name: 'shipping_handling')
    required final OrderItemShippingHandlingDTO shippingHandling,
    required final List<MoneyInfoDTO> discounts,
  }) = _$OrderItemTotalDTOImpl;

  factory _OrderItemTotalDTO.fromJson(Map<String, dynamic> json) =
      _$OrderItemTotalDTOImpl.fromJson;

  @override
  @JsonKey(name: 'grand_total')
  OrderItemGrandTotalDTO get grandTotal;
  @override
  @JsonKey(name: 'total_tax')
  MoneyDTO get totalTax;
  @override
  @JsonKey(name: 'subtotal')
  MoneyDTO get subTotal;
  @override
  @JsonKey(name: 'shipping_handling')
  OrderItemShippingHandlingDTO get shippingHandling;
  @override
  List<MoneyInfoDTO> get discounts;

  /// Create a copy of OrderItemTotalDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemTotalDTOImplCopyWith<_$OrderItemTotalDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItemShippingHandlingDTO _$OrderItemShippingHandlingDTOFromJson(
  Map<String, dynamic> json,
) {
  return _OrderItemShippingHandlingDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderItemShippingHandlingDTO {
  @JsonKey(name: 'total_amount')
  MoneyDTO get amount => throw _privateConstructorUsedError;

  /// Serializes this OrderItemShippingHandlingDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemShippingHandlingDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemShippingHandlingDTOCopyWith<OrderItemShippingHandlingDTO>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemShippingHandlingDTOCopyWith<$Res> {
  factory $OrderItemShippingHandlingDTOCopyWith(
    OrderItemShippingHandlingDTO value,
    $Res Function(OrderItemShippingHandlingDTO) then,
  ) =
      _$OrderItemShippingHandlingDTOCopyWithImpl<
        $Res,
        OrderItemShippingHandlingDTO
      >;
  @useResult
  $Res call({@JsonKey(name: 'total_amount') MoneyDTO amount});

  $MoneyDTOCopyWith<$Res> get amount;
}

/// @nodoc
class _$OrderItemShippingHandlingDTOCopyWithImpl<
  $Res,
  $Val extends OrderItemShippingHandlingDTO
>
    implements $OrderItemShippingHandlingDTOCopyWith<$Res> {
  _$OrderItemShippingHandlingDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemShippingHandlingDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null}) {
    return _then(
      _value.copyWith(
            amount:
                null == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as MoneyDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderItemShippingHandlingDTO
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
abstract class _$$OrderItemShippingHandlingDTOImplCopyWith<$Res>
    implements $OrderItemShippingHandlingDTOCopyWith<$Res> {
  factory _$$OrderItemShippingHandlingDTOImplCopyWith(
    _$OrderItemShippingHandlingDTOImpl value,
    $Res Function(_$OrderItemShippingHandlingDTOImpl) then,
  ) = __$$OrderItemShippingHandlingDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'total_amount') MoneyDTO amount});

  @override
  $MoneyDTOCopyWith<$Res> get amount;
}

/// @nodoc
class __$$OrderItemShippingHandlingDTOImplCopyWithImpl<$Res>
    extends
        _$OrderItemShippingHandlingDTOCopyWithImpl<
          $Res,
          _$OrderItemShippingHandlingDTOImpl
        >
    implements _$$OrderItemShippingHandlingDTOImplCopyWith<$Res> {
  __$$OrderItemShippingHandlingDTOImplCopyWithImpl(
    _$OrderItemShippingHandlingDTOImpl _value,
    $Res Function(_$OrderItemShippingHandlingDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderItemShippingHandlingDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null}) {
    return _then(
      _$OrderItemShippingHandlingDTOImpl(
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
class _$OrderItemShippingHandlingDTOImpl
    implements _OrderItemShippingHandlingDTO {
  const _$OrderItemShippingHandlingDTOImpl({
    @JsonKey(name: 'total_amount') required this.amount,
  });

  factory _$OrderItemShippingHandlingDTOImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$OrderItemShippingHandlingDTOImplFromJson(json);

  @override
  @JsonKey(name: 'total_amount')
  final MoneyDTO amount;

  @override
  String toString() {
    return 'OrderItemShippingHandlingDTO(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemShippingHandlingDTOImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of OrderItemShippingHandlingDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemShippingHandlingDTOImplCopyWith<
    _$OrderItemShippingHandlingDTOImpl
  >
  get copyWith => __$$OrderItemShippingHandlingDTOImplCopyWithImpl<
    _$OrderItemShippingHandlingDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemShippingHandlingDTOImplToJson(this);
  }
}

abstract class _OrderItemShippingHandlingDTO
    implements OrderItemShippingHandlingDTO {
  const factory _OrderItemShippingHandlingDTO({
    @JsonKey(name: 'total_amount') required final MoneyDTO amount,
  }) = _$OrderItemShippingHandlingDTOImpl;

  factory _OrderItemShippingHandlingDTO.fromJson(Map<String, dynamic> json) =
      _$OrderItemShippingHandlingDTOImpl.fromJson;

  @override
  @JsonKey(name: 'total_amount')
  MoneyDTO get amount;

  /// Create a copy of OrderItemShippingHandlingDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemShippingHandlingDTOImplCopyWith<
    _$OrderItemShippingHandlingDTOImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

OrderItemGrandTotalDTO _$OrderItemGrandTotalDTOFromJson(
  Map<String, dynamic> json,
) {
  return _OrderItemGrandTotalDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderItemGrandTotalDTO {
  double get value => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  /// Serializes this OrderItemGrandTotalDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemGrandTotalDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemGrandTotalDTOCopyWith<OrderItemGrandTotalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemGrandTotalDTOCopyWith<$Res> {
  factory $OrderItemGrandTotalDTOCopyWith(
    OrderItemGrandTotalDTO value,
    $Res Function(OrderItemGrandTotalDTO) then,
  ) = _$OrderItemGrandTotalDTOCopyWithImpl<$Res, OrderItemGrandTotalDTO>;
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class _$OrderItemGrandTotalDTOCopyWithImpl<
  $Res,
  $Val extends OrderItemGrandTotalDTO
>
    implements $OrderItemGrandTotalDTOCopyWith<$Res> {
  _$OrderItemGrandTotalDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemGrandTotalDTO
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
abstract class _$$OrderItemGrandTotalDTOImplCopyWith<$Res>
    implements $OrderItemGrandTotalDTOCopyWith<$Res> {
  factory _$$OrderItemGrandTotalDTOImplCopyWith(
    _$OrderItemGrandTotalDTOImpl value,
    $Res Function(_$OrderItemGrandTotalDTOImpl) then,
  ) = __$$OrderItemGrandTotalDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class __$$OrderItemGrandTotalDTOImplCopyWithImpl<$Res>
    extends
        _$OrderItemGrandTotalDTOCopyWithImpl<$Res, _$OrderItemGrandTotalDTOImpl>
    implements _$$OrderItemGrandTotalDTOImplCopyWith<$Res> {
  __$$OrderItemGrandTotalDTOImplCopyWithImpl(
    _$OrderItemGrandTotalDTOImpl _value,
    $Res Function(_$OrderItemGrandTotalDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderItemGrandTotalDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? currency = null}) {
    return _then(
      _$OrderItemGrandTotalDTOImpl(
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
class _$OrderItemGrandTotalDTOImpl implements _OrderItemGrandTotalDTO {
  const _$OrderItemGrandTotalDTOImpl({
    required this.value,
    required this.currency,
  });

  factory _$OrderItemGrandTotalDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemGrandTotalDTOImplFromJson(json);

  @override
  final double value;
  @override
  final String currency;

  @override
  String toString() {
    return 'OrderItemGrandTotalDTO(value: $value, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemGrandTotalDTOImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, currency);

  /// Create a copy of OrderItemGrandTotalDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemGrandTotalDTOImplCopyWith<_$OrderItemGrandTotalDTOImpl>
  get copyWith =>
      __$$OrderItemGrandTotalDTOImplCopyWithImpl<_$OrderItemGrandTotalDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemGrandTotalDTOImplToJson(this);
  }
}

abstract class _OrderItemGrandTotalDTO implements OrderItemGrandTotalDTO {
  const factory _OrderItemGrandTotalDTO({
    required final double value,
    required final String currency,
  }) = _$OrderItemGrandTotalDTOImpl;

  factory _OrderItemGrandTotalDTO.fromJson(Map<String, dynamic> json) =
      _$OrderItemGrandTotalDTOImpl.fromJson;

  @override
  double get value;
  @override
  String get currency;

  /// Create a copy of OrderItemGrandTotalDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemGrandTotalDTOImplCopyWith<_$OrderItemGrandTotalDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ItemProductDTO _$ItemProductDTOFromJson(Map<String, dynamic> json) {
  return _ItemProductDTO.fromJson(json);
}

/// @nodoc
mixin _$ItemProductDTO {
  @JsonKey(name: 'product_name')
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_sku')
  String get productSku => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_url_key')
  String get productUrlKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity_ordered')
  double get quantityOrdered => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity_invoiced')
  double get quantityInvoiced => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity_shipped')
  double get quantityShipped => throw _privateConstructorUsedError;
  @JsonKey(name: 'eligible_for_return')
  bool get eligibleForReturn => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_sale_price')
  ProductSalePriceDTO get productSalePrice =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_unit_of_measure', defaultValue: '')
  String get salesUnitOfMeasure => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_image')
  String? get productImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_tax_price')
  ProductTaxPriceDTO get productTaxPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'oms_shipping_date')
  String get omsShippingDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'oms_shipping_time')
  String get omsShippingTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'oms_shipping_method')
  ItemProductOmsShippingMethodDTO? get omsShippingMethod =>
      throw _privateConstructorUsedError;

  /// Serializes this ItemProductDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemProductDTOCopyWith<ItemProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemProductDTOCopyWith<$Res> {
  factory $ItemProductDTOCopyWith(
    ItemProductDTO value,
    $Res Function(ItemProductDTO) then,
  ) = _$ItemProductDTOCopyWithImpl<$Res, ItemProductDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'product_name') String productName,
    @JsonKey(name: 'product_sku') String productSku,
    @JsonKey(name: 'product_url_key') String productUrlKey,
    @JsonKey(name: 'quantity_ordered') double quantityOrdered,
    @JsonKey(name: 'quantity_invoiced') double quantityInvoiced,
    @JsonKey(name: 'quantity_shipped') double quantityShipped,
    @JsonKey(name: 'eligible_for_return') bool eligibleForReturn,
    @JsonKey(name: 'product_sale_price') ProductSalePriceDTO productSalePrice,
    @JsonKey(name: 'sales_unit_of_measure', defaultValue: '')
    String salesUnitOfMeasure,
    @JsonKey(name: 'product_image') String? productImage,
    @JsonKey(name: 'product_tax_price') ProductTaxPriceDTO productTaxPrice,
    @JsonKey(name: 'oms_shipping_date') String omsShippingDate,
    @JsonKey(name: 'oms_shipping_time') String omsShippingTime,
    @JsonKey(name: 'oms_shipping_method')
    ItemProductOmsShippingMethodDTO? omsShippingMethod,
  });

  $ProductSalePriceDTOCopyWith<$Res> get productSalePrice;
  $ProductTaxPriceDTOCopyWith<$Res> get productTaxPrice;
  $ItemProductOmsShippingMethodDTOCopyWith<$Res>? get omsShippingMethod;
}

/// @nodoc
class _$ItemProductDTOCopyWithImpl<$Res, $Val extends ItemProductDTO>
    implements $ItemProductDTOCopyWith<$Res> {
  _$ItemProductDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? productSku = null,
    Object? productUrlKey = null,
    Object? quantityOrdered = null,
    Object? quantityInvoiced = null,
    Object? quantityShipped = null,
    Object? eligibleForReturn = null,
    Object? productSalePrice = null,
    Object? salesUnitOfMeasure = null,
    Object? productImage = freezed,
    Object? productTaxPrice = null,
    Object? omsShippingDate = null,
    Object? omsShippingTime = null,
    Object? omsShippingMethod = freezed,
  }) {
    return _then(
      _value.copyWith(
            productName:
                null == productName
                    ? _value.productName
                    : productName // ignore: cast_nullable_to_non_nullable
                        as String,
            productSku:
                null == productSku
                    ? _value.productSku
                    : productSku // ignore: cast_nullable_to_non_nullable
                        as String,
            productUrlKey:
                null == productUrlKey
                    ? _value.productUrlKey
                    : productUrlKey // ignore: cast_nullable_to_non_nullable
                        as String,
            quantityOrdered:
                null == quantityOrdered
                    ? _value.quantityOrdered
                    : quantityOrdered // ignore: cast_nullable_to_non_nullable
                        as double,
            quantityInvoiced:
                null == quantityInvoiced
                    ? _value.quantityInvoiced
                    : quantityInvoiced // ignore: cast_nullable_to_non_nullable
                        as double,
            quantityShipped:
                null == quantityShipped
                    ? _value.quantityShipped
                    : quantityShipped // ignore: cast_nullable_to_non_nullable
                        as double,
            eligibleForReturn:
                null == eligibleForReturn
                    ? _value.eligibleForReturn
                    : eligibleForReturn // ignore: cast_nullable_to_non_nullable
                        as bool,
            productSalePrice:
                null == productSalePrice
                    ? _value.productSalePrice
                    : productSalePrice // ignore: cast_nullable_to_non_nullable
                        as ProductSalePriceDTO,
            salesUnitOfMeasure:
                null == salesUnitOfMeasure
                    ? _value.salesUnitOfMeasure
                    : salesUnitOfMeasure // ignore: cast_nullable_to_non_nullable
                        as String,
            productImage:
                freezed == productImage
                    ? _value.productImage
                    : productImage // ignore: cast_nullable_to_non_nullable
                        as String?,
            productTaxPrice:
                null == productTaxPrice
                    ? _value.productTaxPrice
                    : productTaxPrice // ignore: cast_nullable_to_non_nullable
                        as ProductTaxPriceDTO,
            omsShippingDate:
                null == omsShippingDate
                    ? _value.omsShippingDate
                    : omsShippingDate // ignore: cast_nullable_to_non_nullable
                        as String,
            omsShippingTime:
                null == omsShippingTime
                    ? _value.omsShippingTime
                    : omsShippingTime // ignore: cast_nullable_to_non_nullable
                        as String,
            omsShippingMethod:
                freezed == omsShippingMethod
                    ? _value.omsShippingMethod
                    : omsShippingMethod // ignore: cast_nullable_to_non_nullable
                        as ItemProductOmsShippingMethodDTO?,
          )
          as $Val,
    );
  }

  /// Create a copy of ItemProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductSalePriceDTOCopyWith<$Res> get productSalePrice {
    return $ProductSalePriceDTOCopyWith<$Res>(_value.productSalePrice, (value) {
      return _then(_value.copyWith(productSalePrice: value) as $Val);
    });
  }

  /// Create a copy of ItemProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductTaxPriceDTOCopyWith<$Res> get productTaxPrice {
    return $ProductTaxPriceDTOCopyWith<$Res>(_value.productTaxPrice, (value) {
      return _then(_value.copyWith(productTaxPrice: value) as $Val);
    });
  }

  /// Create a copy of ItemProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemProductOmsShippingMethodDTOCopyWith<$Res>? get omsShippingMethod {
    if (_value.omsShippingMethod == null) {
      return null;
    }

    return $ItemProductOmsShippingMethodDTOCopyWith<$Res>(
      _value.omsShippingMethod!,
      (value) {
        return _then(_value.copyWith(omsShippingMethod: value) as $Val);
      },
    );
  }
}

/// @nodoc
abstract class _$$ItemProductDTOImplCopyWith<$Res>
    implements $ItemProductDTOCopyWith<$Res> {
  factory _$$ItemProductDTOImplCopyWith(
    _$ItemProductDTOImpl value,
    $Res Function(_$ItemProductDTOImpl) then,
  ) = __$$ItemProductDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'product_name') String productName,
    @JsonKey(name: 'product_sku') String productSku,
    @JsonKey(name: 'product_url_key') String productUrlKey,
    @JsonKey(name: 'quantity_ordered') double quantityOrdered,
    @JsonKey(name: 'quantity_invoiced') double quantityInvoiced,
    @JsonKey(name: 'quantity_shipped') double quantityShipped,
    @JsonKey(name: 'eligible_for_return') bool eligibleForReturn,
    @JsonKey(name: 'product_sale_price') ProductSalePriceDTO productSalePrice,
    @JsonKey(name: 'sales_unit_of_measure', defaultValue: '')
    String salesUnitOfMeasure,
    @JsonKey(name: 'product_image') String? productImage,
    @JsonKey(name: 'product_tax_price') ProductTaxPriceDTO productTaxPrice,
    @JsonKey(name: 'oms_shipping_date') String omsShippingDate,
    @JsonKey(name: 'oms_shipping_time') String omsShippingTime,
    @JsonKey(name: 'oms_shipping_method')
    ItemProductOmsShippingMethodDTO? omsShippingMethod,
  });

  @override
  $ProductSalePriceDTOCopyWith<$Res> get productSalePrice;
  @override
  $ProductTaxPriceDTOCopyWith<$Res> get productTaxPrice;
  @override
  $ItemProductOmsShippingMethodDTOCopyWith<$Res>? get omsShippingMethod;
}

/// @nodoc
class __$$ItemProductDTOImplCopyWithImpl<$Res>
    extends _$ItemProductDTOCopyWithImpl<$Res, _$ItemProductDTOImpl>
    implements _$$ItemProductDTOImplCopyWith<$Res> {
  __$$ItemProductDTOImplCopyWithImpl(
    _$ItemProductDTOImpl _value,
    $Res Function(_$ItemProductDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? productSku = null,
    Object? productUrlKey = null,
    Object? quantityOrdered = null,
    Object? quantityInvoiced = null,
    Object? quantityShipped = null,
    Object? eligibleForReturn = null,
    Object? productSalePrice = null,
    Object? salesUnitOfMeasure = null,
    Object? productImage = freezed,
    Object? productTaxPrice = null,
    Object? omsShippingDate = null,
    Object? omsShippingTime = null,
    Object? omsShippingMethod = freezed,
  }) {
    return _then(
      _$ItemProductDTOImpl(
        productName:
            null == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                    as String,
        productSku:
            null == productSku
                ? _value.productSku
                : productSku // ignore: cast_nullable_to_non_nullable
                    as String,
        productUrlKey:
            null == productUrlKey
                ? _value.productUrlKey
                : productUrlKey // ignore: cast_nullable_to_non_nullable
                    as String,
        quantityOrdered:
            null == quantityOrdered
                ? _value.quantityOrdered
                : quantityOrdered // ignore: cast_nullable_to_non_nullable
                    as double,
        quantityInvoiced:
            null == quantityInvoiced
                ? _value.quantityInvoiced
                : quantityInvoiced // ignore: cast_nullable_to_non_nullable
                    as double,
        quantityShipped:
            null == quantityShipped
                ? _value.quantityShipped
                : quantityShipped // ignore: cast_nullable_to_non_nullable
                    as double,
        eligibleForReturn:
            null == eligibleForReturn
                ? _value.eligibleForReturn
                : eligibleForReturn // ignore: cast_nullable_to_non_nullable
                    as bool,
        productSalePrice:
            null == productSalePrice
                ? _value.productSalePrice
                : productSalePrice // ignore: cast_nullable_to_non_nullable
                    as ProductSalePriceDTO,
        salesUnitOfMeasure:
            null == salesUnitOfMeasure
                ? _value.salesUnitOfMeasure
                : salesUnitOfMeasure // ignore: cast_nullable_to_non_nullable
                    as String,
        productImage:
            freezed == productImage
                ? _value.productImage
                : productImage // ignore: cast_nullable_to_non_nullable
                    as String?,
        productTaxPrice:
            null == productTaxPrice
                ? _value.productTaxPrice
                : productTaxPrice // ignore: cast_nullable_to_non_nullable
                    as ProductTaxPriceDTO,
        omsShippingDate:
            null == omsShippingDate
                ? _value.omsShippingDate
                : omsShippingDate // ignore: cast_nullable_to_non_nullable
                    as String,
        omsShippingTime:
            null == omsShippingTime
                ? _value.omsShippingTime
                : omsShippingTime // ignore: cast_nullable_to_non_nullable
                    as String,
        omsShippingMethod:
            freezed == omsShippingMethod
                ? _value.omsShippingMethod
                : omsShippingMethod // ignore: cast_nullable_to_non_nullable
                    as ItemProductOmsShippingMethodDTO?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemProductDTOImpl implements _ItemProductDTO {
  const _$ItemProductDTOImpl({
    @JsonKey(name: 'product_name') required this.productName,
    @JsonKey(name: 'product_sku') required this.productSku,
    @JsonKey(name: 'product_url_key') required this.productUrlKey,
    @JsonKey(name: 'quantity_ordered') required this.quantityOrdered,
    @JsonKey(name: 'quantity_invoiced') required this.quantityInvoiced,
    @JsonKey(name: 'quantity_shipped') required this.quantityShipped,
    @JsonKey(name: 'eligible_for_return') required this.eligibleForReturn,
    @JsonKey(name: 'product_sale_price') required this.productSalePrice,
    @JsonKey(name: 'sales_unit_of_measure', defaultValue: '')
    required this.salesUnitOfMeasure,
    @JsonKey(name: 'product_image') this.productImage,
    @JsonKey(name: 'product_tax_price') required this.productTaxPrice,
    @JsonKey(name: 'oms_shipping_date') required this.omsShippingDate,
    @JsonKey(name: 'oms_shipping_time') required this.omsShippingTime,
    @JsonKey(name: 'oms_shipping_method') this.omsShippingMethod,
  });

  factory _$ItemProductDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemProductDTOImplFromJson(json);

  @override
  @JsonKey(name: 'product_name')
  final String productName;
  @override
  @JsonKey(name: 'product_sku')
  final String productSku;
  @override
  @JsonKey(name: 'product_url_key')
  final String productUrlKey;
  @override
  @JsonKey(name: 'quantity_ordered')
  final double quantityOrdered;
  @override
  @JsonKey(name: 'quantity_invoiced')
  final double quantityInvoiced;
  @override
  @JsonKey(name: 'quantity_shipped')
  final double quantityShipped;
  @override
  @JsonKey(name: 'eligible_for_return')
  final bool eligibleForReturn;
  @override
  @JsonKey(name: 'product_sale_price')
  final ProductSalePriceDTO productSalePrice;
  @override
  @JsonKey(name: 'sales_unit_of_measure', defaultValue: '')
  final String salesUnitOfMeasure;
  @override
  @JsonKey(name: 'product_image')
  final String? productImage;
  @override
  @JsonKey(name: 'product_tax_price')
  final ProductTaxPriceDTO productTaxPrice;
  @override
  @JsonKey(name: 'oms_shipping_date')
  final String omsShippingDate;
  @override
  @JsonKey(name: 'oms_shipping_time')
  final String omsShippingTime;
  @override
  @JsonKey(name: 'oms_shipping_method')
  final ItemProductOmsShippingMethodDTO? omsShippingMethod;

  @override
  String toString() {
    return 'ItemProductDTO(productName: $productName, productSku: $productSku, productUrlKey: $productUrlKey, quantityOrdered: $quantityOrdered, quantityInvoiced: $quantityInvoiced, quantityShipped: $quantityShipped, eligibleForReturn: $eligibleForReturn, productSalePrice: $productSalePrice, salesUnitOfMeasure: $salesUnitOfMeasure, productImage: $productImage, productTaxPrice: $productTaxPrice, omsShippingDate: $omsShippingDate, omsShippingTime: $omsShippingTime, omsShippingMethod: $omsShippingMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemProductDTOImpl &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productSku, productSku) ||
                other.productSku == productSku) &&
            (identical(other.productUrlKey, productUrlKey) ||
                other.productUrlKey == productUrlKey) &&
            (identical(other.quantityOrdered, quantityOrdered) ||
                other.quantityOrdered == quantityOrdered) &&
            (identical(other.quantityInvoiced, quantityInvoiced) ||
                other.quantityInvoiced == quantityInvoiced) &&
            (identical(other.quantityShipped, quantityShipped) ||
                other.quantityShipped == quantityShipped) &&
            (identical(other.eligibleForReturn, eligibleForReturn) ||
                other.eligibleForReturn == eligibleForReturn) &&
            (identical(other.productSalePrice, productSalePrice) ||
                other.productSalePrice == productSalePrice) &&
            (identical(other.salesUnitOfMeasure, salesUnitOfMeasure) ||
                other.salesUnitOfMeasure == salesUnitOfMeasure) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.productTaxPrice, productTaxPrice) ||
                other.productTaxPrice == productTaxPrice) &&
            (identical(other.omsShippingDate, omsShippingDate) ||
                other.omsShippingDate == omsShippingDate) &&
            (identical(other.omsShippingTime, omsShippingTime) ||
                other.omsShippingTime == omsShippingTime) &&
            (identical(other.omsShippingMethod, omsShippingMethod) ||
                other.omsShippingMethod == omsShippingMethod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    productName,
    productSku,
    productUrlKey,
    quantityOrdered,
    quantityInvoiced,
    quantityShipped,
    eligibleForReturn,
    productSalePrice,
    salesUnitOfMeasure,
    productImage,
    productTaxPrice,
    omsShippingDate,
    omsShippingTime,
    omsShippingMethod,
  );

  /// Create a copy of ItemProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemProductDTOImplCopyWith<_$ItemProductDTOImpl> get copyWith =>
      __$$ItemProductDTOImplCopyWithImpl<_$ItemProductDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemProductDTOImplToJson(this);
  }
}

abstract class _ItemProductDTO implements ItemProductDTO {
  const factory _ItemProductDTO({
    @JsonKey(name: 'product_name') required final String productName,
    @JsonKey(name: 'product_sku') required final String productSku,
    @JsonKey(name: 'product_url_key') required final String productUrlKey,
    @JsonKey(name: 'quantity_ordered') required final double quantityOrdered,
    @JsonKey(name: 'quantity_invoiced') required final double quantityInvoiced,
    @JsonKey(name: 'quantity_shipped') required final double quantityShipped,
    @JsonKey(name: 'eligible_for_return') required final bool eligibleForReturn,
    @JsonKey(name: 'product_sale_price')
    required final ProductSalePriceDTO productSalePrice,
    @JsonKey(name: 'sales_unit_of_measure', defaultValue: '')
    required final String salesUnitOfMeasure,
    @JsonKey(name: 'product_image') final String? productImage,
    @JsonKey(name: 'product_tax_price')
    required final ProductTaxPriceDTO productTaxPrice,
    @JsonKey(name: 'oms_shipping_date') required final String omsShippingDate,
    @JsonKey(name: 'oms_shipping_time') required final String omsShippingTime,
    @JsonKey(name: 'oms_shipping_method')
    final ItemProductOmsShippingMethodDTO? omsShippingMethod,
  }) = _$ItemProductDTOImpl;

  factory _ItemProductDTO.fromJson(Map<String, dynamic> json) =
      _$ItemProductDTOImpl.fromJson;

  @override
  @JsonKey(name: 'product_name')
  String get productName;
  @override
  @JsonKey(name: 'product_sku')
  String get productSku;
  @override
  @JsonKey(name: 'product_url_key')
  String get productUrlKey;
  @override
  @JsonKey(name: 'quantity_ordered')
  double get quantityOrdered;
  @override
  @JsonKey(name: 'quantity_invoiced')
  double get quantityInvoiced;
  @override
  @JsonKey(name: 'quantity_shipped')
  double get quantityShipped;
  @override
  @JsonKey(name: 'eligible_for_return')
  bool get eligibleForReturn;
  @override
  @JsonKey(name: 'product_sale_price')
  ProductSalePriceDTO get productSalePrice;
  @override
  @JsonKey(name: 'sales_unit_of_measure', defaultValue: '')
  String get salesUnitOfMeasure;
  @override
  @JsonKey(name: 'product_image')
  String? get productImage;
  @override
  @JsonKey(name: 'product_tax_price')
  ProductTaxPriceDTO get productTaxPrice;
  @override
  @JsonKey(name: 'oms_shipping_date')
  String get omsShippingDate;
  @override
  @JsonKey(name: 'oms_shipping_time')
  String get omsShippingTime;
  @override
  @JsonKey(name: 'oms_shipping_method')
  ItemProductOmsShippingMethodDTO? get omsShippingMethod;

  /// Create a copy of ItemProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemProductDTOImplCopyWith<_$ItemProductDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemProductOmsShippingMethodDTO _$ItemProductOmsShippingMethodDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ItemProductOmsShippingMethodDTO.fromJson(json);
}

/// @nodoc
mixin _$ItemProductOmsShippingMethodDTO {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this ItemProductOmsShippingMethodDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemProductOmsShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemProductOmsShippingMethodDTOCopyWith<ItemProductOmsShippingMethodDTO>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemProductOmsShippingMethodDTOCopyWith<$Res> {
  factory $ItemProductOmsShippingMethodDTOCopyWith(
    ItemProductOmsShippingMethodDTO value,
    $Res Function(ItemProductOmsShippingMethodDTO) then,
  ) =
      _$ItemProductOmsShippingMethodDTOCopyWithImpl<
        $Res,
        ItemProductOmsShippingMethodDTO
      >;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$ItemProductOmsShippingMethodDTOCopyWithImpl<
  $Res,
  $Val extends ItemProductOmsShippingMethodDTO
>
    implements $ItemProductOmsShippingMethodDTOCopyWith<$Res> {
  _$ItemProductOmsShippingMethodDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemProductOmsShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? name = null}) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ItemProductOmsShippingMethodDTOImplCopyWith<$Res>
    implements $ItemProductOmsShippingMethodDTOCopyWith<$Res> {
  factory _$$ItemProductOmsShippingMethodDTOImplCopyWith(
    _$ItemProductOmsShippingMethodDTOImpl value,
    $Res Function(_$ItemProductOmsShippingMethodDTOImpl) then,
  ) = __$$ItemProductOmsShippingMethodDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$ItemProductOmsShippingMethodDTOImplCopyWithImpl<$Res>
    extends
        _$ItemProductOmsShippingMethodDTOCopyWithImpl<
          $Res,
          _$ItemProductOmsShippingMethodDTOImpl
        >
    implements _$$ItemProductOmsShippingMethodDTOImplCopyWith<$Res> {
  __$$ItemProductOmsShippingMethodDTOImplCopyWithImpl(
    _$ItemProductOmsShippingMethodDTOImpl _value,
    $Res Function(_$ItemProductOmsShippingMethodDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemProductOmsShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? name = null}) {
    return _then(
      _$ItemProductOmsShippingMethodDTOImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemProductOmsShippingMethodDTOImpl
    implements _ItemProductOmsShippingMethodDTO {
  const _$ItemProductOmsShippingMethodDTOImpl({this.code = "", this.name = ""});

  factory _$ItemProductOmsShippingMethodDTOImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ItemProductOmsShippingMethodDTOImplFromJson(json);

  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'ItemProductOmsShippingMethodDTO(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemProductOmsShippingMethodDTOImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of ItemProductOmsShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemProductOmsShippingMethodDTOImplCopyWith<
    _$ItemProductOmsShippingMethodDTOImpl
  >
  get copyWith => __$$ItemProductOmsShippingMethodDTOImplCopyWithImpl<
    _$ItemProductOmsShippingMethodDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemProductOmsShippingMethodDTOImplToJson(this);
  }
}

abstract class _ItemProductOmsShippingMethodDTO
    implements ItemProductOmsShippingMethodDTO {
  const factory _ItemProductOmsShippingMethodDTO({
    final String code,
    final String name,
  }) = _$ItemProductOmsShippingMethodDTOImpl;

  factory _ItemProductOmsShippingMethodDTO.fromJson(Map<String, dynamic> json) =
      _$ItemProductOmsShippingMethodDTOImpl.fromJson;

  @override
  String get code;
  @override
  String get name;

  /// Create a copy of ItemProductOmsShippingMethodDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemProductOmsShippingMethodDTOImplCopyWith<
    _$ItemProductOmsShippingMethodDTOImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

ProductSalePriceDTO _$ProductSalePriceDTOFromJson(Map<String, dynamic> json) {
  return _ProductSalePriceDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductSalePriceDTO {
  double get value => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  /// Serializes this ProductSalePriceDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductSalePriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductSalePriceDTOCopyWith<ProductSalePriceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSalePriceDTOCopyWith<$Res> {
  factory $ProductSalePriceDTOCopyWith(
    ProductSalePriceDTO value,
    $Res Function(ProductSalePriceDTO) then,
  ) = _$ProductSalePriceDTOCopyWithImpl<$Res, ProductSalePriceDTO>;
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class _$ProductSalePriceDTOCopyWithImpl<$Res, $Val extends ProductSalePriceDTO>
    implements $ProductSalePriceDTOCopyWith<$Res> {
  _$ProductSalePriceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductSalePriceDTO
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
abstract class _$$ProductSalePriceDTOImplCopyWith<$Res>
    implements $ProductSalePriceDTOCopyWith<$Res> {
  factory _$$ProductSalePriceDTOImplCopyWith(
    _$ProductSalePriceDTOImpl value,
    $Res Function(_$ProductSalePriceDTOImpl) then,
  ) = __$$ProductSalePriceDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class __$$ProductSalePriceDTOImplCopyWithImpl<$Res>
    extends _$ProductSalePriceDTOCopyWithImpl<$Res, _$ProductSalePriceDTOImpl>
    implements _$$ProductSalePriceDTOImplCopyWith<$Res> {
  __$$ProductSalePriceDTOImplCopyWithImpl(
    _$ProductSalePriceDTOImpl _value,
    $Res Function(_$ProductSalePriceDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductSalePriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? currency = null}) {
    return _then(
      _$ProductSalePriceDTOImpl(
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
class _$ProductSalePriceDTOImpl implements _ProductSalePriceDTO {
  const _$ProductSalePriceDTOImpl({
    required this.value,
    required this.currency,
  });

  factory _$ProductSalePriceDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductSalePriceDTOImplFromJson(json);

  @override
  final double value;
  @override
  final String currency;

  @override
  String toString() {
    return 'ProductSalePriceDTO(value: $value, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSalePriceDTOImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, currency);

  /// Create a copy of ProductSalePriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSalePriceDTOImplCopyWith<_$ProductSalePriceDTOImpl> get copyWith =>
      __$$ProductSalePriceDTOImplCopyWithImpl<_$ProductSalePriceDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductSalePriceDTOImplToJson(this);
  }
}

abstract class _ProductSalePriceDTO implements ProductSalePriceDTO {
  const factory _ProductSalePriceDTO({
    required final double value,
    required final String currency,
  }) = _$ProductSalePriceDTOImpl;

  factory _ProductSalePriceDTO.fromJson(Map<String, dynamic> json) =
      _$ProductSalePriceDTOImpl.fromJson;

  @override
  double get value;
  @override
  String get currency;

  /// Create a copy of ProductSalePriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductSalePriceDTOImplCopyWith<_$ProductSalePriceDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductTaxPriceDTO _$ProductTaxPriceDTOFromJson(Map<String, dynamic> json) {
  return _ProductTaxPriceDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductTaxPriceDTO {
  double get value => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  /// Serializes this ProductTaxPriceDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductTaxPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductTaxPriceDTOCopyWith<ProductTaxPriceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTaxPriceDTOCopyWith<$Res> {
  factory $ProductTaxPriceDTOCopyWith(
    ProductTaxPriceDTO value,
    $Res Function(ProductTaxPriceDTO) then,
  ) = _$ProductTaxPriceDTOCopyWithImpl<$Res, ProductTaxPriceDTO>;
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class _$ProductTaxPriceDTOCopyWithImpl<$Res, $Val extends ProductTaxPriceDTO>
    implements $ProductTaxPriceDTOCopyWith<$Res> {
  _$ProductTaxPriceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductTaxPriceDTO
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
abstract class _$$ProductTaxPriceDTOImplCopyWith<$Res>
    implements $ProductTaxPriceDTOCopyWith<$Res> {
  factory _$$ProductTaxPriceDTOImplCopyWith(
    _$ProductTaxPriceDTOImpl value,
    $Res Function(_$ProductTaxPriceDTOImpl) then,
  ) = __$$ProductTaxPriceDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class __$$ProductTaxPriceDTOImplCopyWithImpl<$Res>
    extends _$ProductTaxPriceDTOCopyWithImpl<$Res, _$ProductTaxPriceDTOImpl>
    implements _$$ProductTaxPriceDTOImplCopyWith<$Res> {
  __$$ProductTaxPriceDTOImplCopyWithImpl(
    _$ProductTaxPriceDTOImpl _value,
    $Res Function(_$ProductTaxPriceDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductTaxPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? currency = null}) {
    return _then(
      _$ProductTaxPriceDTOImpl(
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
class _$ProductTaxPriceDTOImpl implements _ProductTaxPriceDTO {
  const _$ProductTaxPriceDTOImpl({required this.value, required this.currency});

  factory _$ProductTaxPriceDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductTaxPriceDTOImplFromJson(json);

  @override
  final double value;
  @override
  final String currency;

  @override
  String toString() {
    return 'ProductTaxPriceDTO(value: $value, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductTaxPriceDTOImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, currency);

  /// Create a copy of ProductTaxPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductTaxPriceDTOImplCopyWith<_$ProductTaxPriceDTOImpl> get copyWith =>
      __$$ProductTaxPriceDTOImplCopyWithImpl<_$ProductTaxPriceDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductTaxPriceDTOImplToJson(this);
  }
}

abstract class _ProductTaxPriceDTO implements ProductTaxPriceDTO {
  const factory _ProductTaxPriceDTO({
    required final double value,
    required final String currency,
  }) = _$ProductTaxPriceDTOImpl;

  factory _ProductTaxPriceDTO.fromJson(Map<String, dynamic> json) =
      _$ProductTaxPriceDTOImpl.fromJson;

  @override
  double get value;
  @override
  String get currency;

  /// Create a copy of ProductTaxPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductTaxPriceDTOImplCopyWith<_$ProductTaxPriceDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
