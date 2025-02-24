import 'package:core/data/dto/orders/order_item_dto.fr.dart';
import 'package:core/data/dto/orders/orders_dto.fr.dart';
import 'package:core/data/mapper.dart';
import 'package:core/data/repository/cart/mapper.dart';
import 'package:core/domain/entity/orders/order_item_entity.dart';
import 'package:core/domain/entity/orders/orders_entity.dart';
import 'package:core/domain/entity/orders/shipping_address_order.fr.dart';

extension MapperOrdersDTO on OrdersDTO {
  OrdersEntity toDomain() =>
      OrdersEntity(pageInfo: pageInfo.toDomain(), items: items.map((e) => e.toDomain()).toList());
}

extension MapperOrderPageInfoDTO on OrderPageInfoDTO {
  OrderPageInfoEntity toDomain() => OrderPageInfoEntity(totalPages: totalPages);
}

extension MapperOrderItemDTO on OrderItemDTO {
  OrderItemEntity toDomain() => OrderItemEntity(
      id: id,
      number: number,
      orderDate: orderDate,
      shippingMethod: shippingMethod,
      status: status,
      statusCode: statusCode,
      carrier: carrier,
      editedAt: editedAt,
      total: total.toDomain(),
      isHasCatalogExtended: false,
      shippingAddress: shippingAddress.toDomain(),
      paymentMethods: paymentMethods.map((e) => e.toDomain()).toList(),
      items: items.map((e) => e.toDomain()).toList());
}

extension MapperItemProductOmsShippingMethodDTO on ItemProductOmsShippingMethodDTO {
  ItemProductOmsShippingMethodEntity toDomain() => ItemProductOmsShippingMethodEntity(
    code: code,
    name: name
  );
}

extension MapperOrderItemTotalDTO on OrderItemTotalDTO {
  OrderItemTotalEntity toDomain() => OrderItemTotalEntity(
      discounts: discounts.map((e) => e.toDomain()).toList(),
      grandTotal: grandTotal.toDomain(),
      refundableFee: refundableFee.toDomain(),
      totalTax: totalTax.toDomain(),
      subTotal: subTotal.toDomain(),
      shippingHandling: shippingHandling.toDomain());
}

extension MapperOrderPaymentMethodItemDTO on OrderPaymentMethodItemDTO {
  OrderPaymentMethodItemEntity toDomain() => OrderPaymentMethodItemEntity(name: name, type: type);
}

extension MapperShippingHandlingDTO on OrderItemShippingHandlingDTO {
  OrderItemShippingHandling toDomain() => OrderItemShippingHandling(amount: amount.toDomain());
}

extension MapperProductTaxPriceDTO on ProductTaxPriceDTO {
  ProductTaxPriceEntity toDomain() => ProductTaxPriceEntity(value: value, currency: currency);
}

extension MapperRefundableFeeDTO on RefundableFeeDTO {
  RefundableFeeEntity toDomain() => RefundableFeeEntity(value: value);
}

extension MapperOrderItemGrandTotalDTO on OrderItemGrandTotalDTO {
  OrderItemGrandTotal toDomain() => OrderItemGrandTotal(currency: currency, value: value);
}

extension MapperItemProductDTO on ItemProductDTO {
  ItemProductEntity toDomain() => ItemProductEntity(
        productName: productName,
        eligibleForReturn: eligibleForReturn,
        productSalePrice: productSalePrice.toDomain(),
        productSku: productSku,
        productUrlKey: productUrlKey,
        quantityInvoiced: quantityInvoiced,
        quantityOrdered: quantityOrdered,
        quantityShipped: quantityShipped,
        omsShippingDate: omsShippingDate,
        omsShippingTime: omsShippingTime,
        imageURL: productImage ?? '',
        salesUnitOfMeasure: salesUnitOfMeasure,
        omsShippingMethod: omsShippingMethod?.toDomain(),
        productTaxPrice: productTaxPrice.toDomain(),
      );
}

extension MapperProductSalePriceDTO on ProductSalePriceDTO {
  ProductSalePriceEntity toDomain() => ProductSalePriceEntity(currency: currency, value: value);
}

extension ShippingAddressOrderX on ShippingAddressOrderDTO {
  ShippingAddressOrder toDomain() {
    return ShippingAddressOrder(
      city: city,
      company: company,
      countryCode: countryCode,
      fax: fax,
      firstname: firstname,
      lastname: lastname,
      postcode: postcode,
      region: region,
      street: street,
      telephone: telephone,
    );
  }
}

extension ShippingAddressOrderDomainX on ShippingAddressOrder {
  ShippingAddressOrderDTO toDTO() {
    return ShippingAddressOrderDTO(
      city: city,
      company: company,
      countryCode: countryCode,
      fax: fax,
      firstname: firstname,
      lastname: lastname,
      postcode: postcode,
      region: region,
      street: street,
      telephone: telephone,
    );
  }
}

extension MapperUserInputErrorDTO on UserInputErrorDTO {
  UserInputErrorEntity toDomain() => UserInputErrorEntity(message: message, code: code, path: path);
}

extension MapperReorderItemsDTO on ReorderItemsDTO {
  ReorderItemsEntity toDomain() => ReorderItemsEntity(
        cart: cart.toDomain(),
        userInputErrors: userInputErrors.map((e) => e.toDomain()).toList(),
      );
}
