import 'package:core/data/dto/cart/send_tip_dto.dart';
import 'package:core/data/dto/products_dto.fr.dart';
import 'package:core/data/dto/cart/add_product_to_cart_dto.fr.dart';
import 'package:core/data/dto/products_mapper.dart';
import 'package:core/data/mapper.dart';
import '../../../domain/entity/cart/add_product_to_cart.dart';
import '../../../domain/entity/cart/cart.fr.dart';
import '../../../domain/entity/cart/cart_item_input.dart';
import '../../../domain/entity/cart/config_shipping_method.dart';
import '../../../domain/entity/cart/detail_address_on_cart.dart';
import '../../../domain/entity/cart/enabled_shipping_method.dart';
import '../../../domain/entity/cart/entered_option_input.dart';
import '../../../domain/entity/cart/send_tip.dart';
import '../../../domain/entity/cart/shipping_address_on_cart.dart';
import '../../../domain/entity/cart/shipping_addresses_on_cart.dart';
import '../../../domain/entity/cart/shipping_method.dart';
import '../../../domain/entity/cart/update_cart_items.dart';
import '../../dto/cart/cart_dto.fr.dart';
import '../../dto/cart/cart_item_input_dto.fr.dart';
import '../../dto/cart/config_shipping_method_dto.fr.dart';
import '../../dto/cart/enabled_shipping_method_dto.fr.dart';
import '../../dto/cart/shipping_address_on_cart_dto.fr.dart';
import '../../dto/cart/shipping_addresses_on_cart_dto.fr.dart';
import '../../dto/cart/selected_shipping_method_dto.fr.dart';
import '../../dto/cart/update_cart_items_dto.fr.dart';

extension MapperEnteredOptionInputDTO on EnteredOptionInputDTO {
  EnteredOptionInput toDomain() => EnteredOptionInput(
        uid: uid,
        value: value,
      );
}

extension MapperEnteredOptionInput on EnteredOptionInput {
  EnteredOptionInputDTO toDTO() => EnteredOptionInputDTO(
        uid: uid,
        value: value,
      );
}

extension MapperCartItemInputDTO on CartItemInput {
  CartItemInputDTO toDTO() => CartItemInputDTO(
        quantity: quantity,
        sku: sku,
        enteredOptions: enteredOptions?.map((e) => e.toDTO()).toList(),
        parentSku: parentSku,
        selectedOptions: selectedOptions,
      );
}

extension MapperAddProductToCart on AddProductToCart {
  AddProductToCartDTO toDTO() => AddProductToCartDTO(
        cartId: cartId,
        cartItems: cartItem.toDTO(),
      );
}

extension MapperCartItemPriceDto on CartItemPriceDto {
  CartItemPrice toDomain() => CartItemPrice(
        value: value,
        currency: currency,
      );
}

extension MapperCartItemPrice on CartItemPrice {
  CartItemPriceDto toDTO() => CartItemPriceDto(value: value, currency: currency);
}

extension MapperCartItemsPricesDTO on CartItemsPricesDTO {
  CartItemsPrices toDomain() =>
      CartItemsPrices(price: price.toDomain(), appliedTaxes: appliedTaxes.map((e) => e.toDomain()).toList());
}

extension MapperCartItemsPrices on CartItemsPrices {
  CartItemsPricesDTO toDTO() =>
      CartItemsPricesDTO(price: price.toDTO(), appliedTaxes: appliedTaxes.map((e) => e.toDTO()).toList());
}

extension MapperAppliedTaxesDTO on AppliedTaxesDTO {
  AppliedTaxes toDomain() => AppliedTaxes(label: label, amount: amount.toDomain());
}

extension MapperAppliedTaxes on AppliedTaxes {
  AppliedTaxesDTO toDTO() => AppliedTaxesDTO(label: label, amount: amount.toDTO());
}

extension MapperCartProductDTO on CartProductDTO {
  CartProduct toDomain() => CartProduct(
        name: name,
        sku: sku,
        image: image.toDomain(),
        smallImage: smallImage.toDomain(),
        priceRange: priceRange.toDomain(),
      );
}

extension MapperCartProduct on CartProduct {
  CartProductDTO toDTO() => CartProductDTO(
        name: name,
        sku: sku,
        image: ProductsImageDTO(
          url: image.url,
          label: image.label,
        ),
        smallImage: ProductsImageDTO(
          url: smallImage.url,
          label: smallImage.label,
        ),
        priceRange: priceRange.toDTO(),
      );
}

extension MapperPriceRangeDTO on PriceRangeDTO {
  PriceRange toDomain() => PriceRange(
        maximumPrice: maximumPrice.toDomain(),
      );
}

extension MapperPriceRange on PriceRange {
  PriceRangeDTO toDTO() => PriceRangeDTO(
        maximumPrice: maximumPrice.toDTO(),
      );
}

extension MapperItemPriceRangeDTO on ItemPriceRangeDTO {
  ItemPriceRange toDomain() => ItemPriceRange(
        regularPrice: regularPrice.toDomain(),
        finalPrice: finalPrice.toDomain(),
        discount: discount.toDomain(),
      );
}

extension MapperItemPriceRange on ItemPriceRange {
  ItemPriceRangeDTO toDTO() => ItemPriceRangeDTO(
        regularPrice: regularPrice.toDTO(),
        finalPrice: finalPrice.toDTO(),
        discount: discount.toDTO(),
      );
}

extension MapperDiscountDTO on DiscountDTO {
  Discount toDomain() => Discount(amountOff: amountOff);
}

extension MapperDiscount on Discount {
  DiscountDTO toDTO() => DiscountDTO(amountOff: amountOff);
}

extension MapperCartItemsDTO on CartItemsDTO {
  CartItems toDomain() => CartItems(
        uid: uid,
        product: product.toDomain(),
        quantity: quantity,
        prices: prices.toDomain(),
      );
}

extension MapperCartPricesGrandTotalDTO on CartPricesDTO {
  CartPrices toDomain() => CartPrices(
        grandTotal: grandTotalDTO.toDomain(),
        subtotalExcludingTax: subtotalExcludingTaxDTO.toDomain(),
        discounts: discountsDTO.map((e) => e.toDomain()).toList(),
        appliedTaxes: appliedTaxesDTO.map((e) => e.toDomain()).toList(),
        catalogDiscountAmount: catalogDiscountAmountDTO.toDomain(),
      );
}

extension MapperCartPrices on CartPrices {
  CartPricesDTO toDTO() => CartPricesDTO(
        grandTotalDTO: grandTotal.toDTO(),
        subtotalExcludingTaxDTO: subtotalExcludingTax.toDTO(),
        discountsDTO: discounts.map((e) => e.toDTO()).toList(),
        appliedTaxesDTO: appliedTaxes.map((e) => e.toDTO()).toList(),
        catalogDiscountAmountDTO: catalogDiscountAmount.toDTO(),
      );
}

extension MapperCatalogDiscountAmountDTO on CatalogDiscountAmountDTO {
  CatalogDiscountAmount toDomain() => CatalogDiscountAmount(value: value);
}

extension MapperCatalogDiscountAmount on CatalogDiscountAmount {
  CatalogDiscountAmountDTO toDTO() => CatalogDiscountAmountDTO(value: value);
}

extension MapperShippingMethodDTO on SelectedShippingMethodDTO {
  SelectedShippingMethod toDomain() => SelectedShippingMethod(
      carrierCode: carrierCode,
      carrierTitle: carrierTitle,
      methodCode: methodCode,
      methodTitle: methodTitle,
      amount: amount.toDomain());
}

extension MapperShippingMethod on SelectedShippingMethod {
  SelectedShippingMethodDTO toDTO() => SelectedShippingMethodDTO(
      carrierCode: carrierCode,
      carrierTitle: carrierTitle,
      methodCode: methodCode,
      methodTitle: methodTitle,
      amount: amount.toDTO());
}

extension MapperCartDTO on CartDTO {
  Cart toDomain() => Cart(
      id: id,
      email: email,
      tip: tip,
      prices: prices.toDomain(),
      shippingAddresses: shippingAddresses?.map((e) => e.toDomain()).toList(),
      billingAddress: billingAddress?.toDomain(),
      selectedPaymentMethod: selectedPaymentMethod?.toDomain(),
      availablePaymentMethods: availablePaymentMethods.map((e) => e.toDomain()).toList(),
      appliedCoupons: appliedCoupons.map((e) => e.toDomain()).toList(),
      items: items.map((e) => e.toDomain()).toList());
}

extension MapperDetailAddressOnCart on DetailAddressOnCart {
  BillingAddressOnCartDTO toBillingAddressDTO() {
    return BillingAddressOnCartDTO(
      firstname: firstname,
      lastname: lastname,
      street: street,
      city: city,
      country: country.toDTO(),
      postcode: postcode,
      telephone: telephone,
    );
  }
}

extension MapperBillingAddressOnCartDTO on BillingAddressOnCartDTO {
  DetailAddressOnCart toDomain() => DetailAddressOnCart(
        firstname: firstname,
        lastname: lastname,
        street: street,
        city: city,
        postcode: postcode,
        telephone: telephone,
        country: country.toDomain(),
        cityCustom: cityCustom,
        stateCustom: stateCustom,
        zoneCustom: zoneCustom,
      );
}

extension MapperShippingAddressOnCartDTO on ShippingAddressOnCartDTO {
  ShippingAddressOnCart toDomain() => ShippingAddressOnCart(
        addressDetails: DetailAddressOnCart(
          firstname: firstname,
          lastname: lastname,
          street: street,
          city: city,
          postcode: postcode,
          telephone: telephone,
          cityCustom: cityCustom,
          stateCustom: stateCustom,
          zoneCustom: zoneCustom,
          country: country.toDomain(),
        ),
        selectedShippingMethod: selectedShippingMethod?.toDomain(),
        availableShippingMethods: availableShippingMethods.map((e) => e.toDomain()).toList(),
      );
}

extension MapperShippingAddressOnCart on ShippingAddressOnCart {
  ShippingAddressOnCartDTO toDTO() => ShippingAddressOnCartDTO(
        firstname: addressDetails.firstname,
        lastname: addressDetails.lastname,
        street: addressDetails.street,
        city: addressDetails.city,
        telephone: addressDetails.telephone,
        country: addressDetails.country.toDTO(),
        postcode: addressDetails.postcode,
        selectedShippingMethod: selectedShippingMethod?.toDTO(),
      );
}

extension MapperShippingAddressesOnCartDTO on ShippingAddressesOnCartDTO {
  ShippingAddressesOnCart toDomain() => ShippingAddressesOnCart(
        shippingAddresses: shippingAddresses.map((e) => e.toDomain()).toList(),
      );
}

extension MapperShippingAddressesOnCart on ShippingAddressesOnCart {
  ShippingAddressesOnCartDTO toDTO() => ShippingAddressesOnCartDTO(
        shippingAddresses: shippingAddresses.map((e) => e.toDTO()).toList(),
      );
}

// Mapper for PaymentMethod
extension MapperPaymentMethodDTO on SelectedPaymentMethodDTO {
  SelectedPaymentMethod toDomain() => SelectedPaymentMethod(
        code: code,
      );
}

extension MapperPaymentMethod on SelectedPaymentMethod {
  SelectedPaymentMethodDTO toDTO() => SelectedPaymentMethodDTO(
        code: code,
      );
}

extension MapperAppliedCouponDTO on AppliedCouponDTO {
  AppliedCoupon toDomain() => AppliedCoupon(
        code: code,
      );
}

extension MapperAppliedCoupon on AppliedCoupon {
  AppliedCouponDTO toDTO() => AppliedCouponDTO(
        code: code,
      );
}

extension MapperUpdateCartItemsInputDTO on UpdateCartItemsInput {
  UpdateCartItemsInputDTO toDto() => UpdateCartItemsInputDTO(
        cartId: cartId,
        cartItems: cartItems.map((e) => e.toDTO()).toList(),
      );
}

extension MapperCartItemUpdateInputDTO on CartItemUpdateInput {
  CartItemUpdateInputDTO toDTO() => CartItemUpdateInputDTO(
        cartItemUid: cartItemUid,
        quantity: quantity,
        price: price,
        sku: sku,
      );
}

extension SendTipExtensions on SendTip {
  SendTipDTO toDto() {
    return SendTipDTO(cartId: cartId, tip: tip);
  }
}

extension SendTipResponseExtensions on SendTipResponseDTO {
  SendTipResponse toDomain() {
    return SendTipResponse(
      message: message,
      code: code,
      cartId: cartId,
    );
  }
}

extension SendTipDTOExtensions on SendTipDTO {
  SendTip toDomain() {
    return SendTip(
      cartId: cartId,
      tip: tip,
    );
  }
}

extension SendTipResponseToDtoExtensions on SendTipResponse {
  SendTipResponseDTO toDto() {
    return SendTipResponseDTO(
      message: message,
      code: code,
      cartId: cartId,
    );
  }
}

extension EnabledShippingMethodDTOX on EnabledShippingMethodDTO {
  EnabledShippingMethod toDomain() {
    return EnabledShippingMethod(
      methodCode: methodCode,
      methodLabel: methodLabel,
    );
  }
}

extension EnableShippingMethodX on EnabledShippingMethod {
  EnabledShippingMethodDTO toDTO() {
    return EnabledShippingMethodDTO(
      methodCode: methodCode,
      methodLabel: methodLabel,
    );
  }
}

extension ConfigShippingMethodMapper on ConfigShippingMethod {
  ConfigShippingMethodDTO toDTO() {
    return ConfigShippingMethodDTO(
      carrierCode: carrierCode,
      methodCode: methodCode,
    );
  }
}
