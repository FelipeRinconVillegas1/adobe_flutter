import 'package:core/domain/entity/money.fr.dart';
import 'package:core/domain/entity/orders/shipping_address_order.fr.dart';
import 'package:core/utils/extension.dart';
import 'package:equatable/equatable.dart';

class OrderItemEntity extends Equatable {
  const OrderItemEntity(
      {required this.id,
      required this.number,
      required this.orderDate,
      required this.total,
      required this.status,
      required this.statusCode,
      this.editedAt,
      required this.items,
      required this.paymentMethods,
      required this.shippingMethod,
      required this.carrier,
      required this.shippingAddress,
      required this.isHasCatalogExtended});
  final String id;
  final String number;
  final String orderDate;
  final String status;
  final String statusCode;
  final String carrier;
  final String? editedAt;
  final String shippingMethod;
  final bool isHasCatalogExtended;
  final ShippingAddressOrder shippingAddress;
  final List<OrderPaymentMethodItemEntity> paymentMethods;
  final List<ItemProductEntity> items;
  final OrderItemTotalEntity total;

  OrderItemEntity copyWith(
      {String? id,
      String? number,
      String? orderDate,
      String? status,
      String? statusCode,
      String? editedAt,
      String? carrier,
      int? numberProducts,
      List<ItemProductEntity>? items,
      OrderItemTotalEntity? total,
      List<OrderPaymentMethodItemEntity>? paymentMethods,
      String? shippingMethod,
      ShippingAddressOrder? shippingAddress,
      bool? isHasCatalogExtended}) {
    return OrderItemEntity(
        id: id ?? this.id,
        items: items ?? this.items,
        number: number ?? this.number,
        carrier: carrier ?? this.carrier,
        orderDate: orderDate ?? this.orderDate,
        status: status ?? this.status,
        statusCode: statusCode ?? this.statusCode,
        editedAt: editedAt ?? this.editedAt,
        total: total ?? this.total,
        paymentMethods: paymentMethods ?? this.paymentMethods,
        shippingMethod: shippingMethod ?? this.shippingMethod,
        shippingAddress: shippingAddress ?? this.shippingAddress,
        isHasCatalogExtended: isHasCatalogExtended ?? this.isHasCatalogExtended);
  }

  @override
  List<Object?> get props => [
        id,
        number,
        orderDate,
        status,
        statusCode,
        editedAt,
        items,
        total,
        paymentMethods,
        shippingMethod,
        shippingAddress,
        isHasCatalogExtended,
        carrier
      ];
}

class OrderItemTotalEntity extends Equatable {
  const OrderItemTotalEntity({
    required this.grandTotal,
    required this.totalTax,
    required this.subTotal,
    required this.shippingHandling,
    required this.discounts,
    required this.refundableFee,
  });
  final OrderItemGrandTotal grandTotal;
  final Money totalTax;
  final Money subTotal;

  final OrderItemShippingHandling shippingHandling;
  final List<MoneyInfo> discounts;
  final RefundableFeeEntity refundableFee;

  double get totalDiscounts => discounts.fold(0, (previousValue, element) => previousValue + element.money.value);

  @override
  List<Object?> get props => [grandTotal, totalTax, subTotal, shippingHandling, discounts, refundableFee];
}

class OrderPaymentMethodItemEntity extends Equatable {
  const OrderPaymentMethodItemEntity({required this.name, required this.type});
  final String name;
  final String type;

  @override
  List<Object?> get props => [name, type];
}

class RefundableFeeEntity extends Equatable {
  const RefundableFeeEntity({required this.value});
  final double value;

  @override
  List<Object?> get props => [value];
}

class ProductTaxPriceEntity extends Equatable {
  const ProductTaxPriceEntity({required this.value, required this.currency});
  final double value;
  final String currency;

  @override
  List<Object?> get props => [value, currency];
}

class OrderItemShippingHandling extends Equatable {
  const OrderItemShippingHandling({required this.amount});
  final Money amount;

  @override
  List<Object?> get props => [amount];
}

class OrderItemGrandTotal extends Equatable {
  const OrderItemGrandTotal({required this.value, required this.currency});
  final double value;
  final String currency;

  String get valueInCurrency => value.toCurrency();

  @override
  List<Object?> get props => [value, currency];
}

class ItemProductEntity extends Equatable {
  const ItemProductEntity({
    required this.productName,
    required this.productSku,
    required this.imageURL,
    required this.productUrlKey,
    required this.quantityOrdered,
    required this.quantityInvoiced,
    required this.quantityShipped,
    required this.eligibleForReturn,
    required this.productSalePrice,
    required this.salesUnitOfMeasure,
    required this.productTaxPrice,
    required this.omsShippingDate,
    required this.omsShippingTime,
    this.omsShippingMethod,
  });
  final String productName;
  final String productSku;
  final String imageURL;
  final String productUrlKey;
  final double quantityOrdered;
  final double quantityInvoiced;
  final double quantityShipped;
  final bool eligibleForReturn;
  final ProductSalePriceEntity productSalePrice;
  final String salesUnitOfMeasure;
  final ProductTaxPriceEntity productTaxPrice;
  final String omsShippingDate;
  final String omsShippingTime;
  final ItemProductOmsShippingMethodEntity? omsShippingMethod;

  @override
  List<Object?> get props => [
        productName,
        productSku,
        productUrlKey,
        quantityOrdered,
        quantityInvoiced,
        quantityShipped,
        eligibleForReturn,
        productSalePrice,
        imageURL,
        salesUnitOfMeasure,
        productTaxPrice,
        omsShippingDate,
        omsShippingTime,
        omsShippingMethod
      ];
}

class ItemProductOmsShippingMethodEntity extends Equatable {
  const ItemProductOmsShippingMethodEntity({required this.code, required this.name});
  final String code;
  final String name;

  @override
  List<Object?> get props => [code, name];
}

class ProductSalePriceEntity extends Equatable {
  const ProductSalePriceEntity({required this.value, required this.currency});
  final double value;
  final String currency;

  @override
  List<Object?> get props => [value, currency];
}
