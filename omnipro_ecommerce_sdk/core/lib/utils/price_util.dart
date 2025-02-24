import '../domain/entity/cart/cart.fr.dart';
import '../domain/entity/products.dart';

class PriceUtil {
  static double? getPriceBeforeDiscount({ProductsPriceRange? priceRange}) {
    final finalPrice = priceRange?.maximumPrice?.finalPrice.value;
    final regularPrice = priceRange?.maximumPrice?.regularPrice.value;

    if (regularPrice == null || finalPrice == null) return null;

    return regularPrice > finalPrice ? regularPrice : null;
  }

  static double? getDiscountPrice({ProductsPriceRange? priceRange}) {
    final finalPrice = priceRange?.maximumPrice?.finalPrice.value;
    final regularPrice = priceRange?.maximumPrice?.regularPrice.value;

    if (regularPrice == null || finalPrice == null) return null;

    return regularPrice - finalPrice;
  }

  static double getPrice({ProductsPriceRange? priceRange}) {
    return priceRange?.maximumPrice?.finalPrice.value ?? 0;
  }

  static double getTaxProduct({CartItemsPrices? price}) {
    return price?.appliedTaxes.fold(0, (previousValue, element) => (previousValue ?? 0) + element.amount.value) ?? 0;
  }

  static double getPercentDiscount({ProductsPriceRange? priceRange}) {
    final finalPrice = priceRange?.maximumPrice?.finalPrice.value;
    final regularPrice = priceRange?.maximumPrice?.regularPrice.value;

    if (regularPrice == null || finalPrice == null) return 0;

    return ((regularPrice - finalPrice) / regularPrice) * 100;
  }

  static double getTotalPrice({required CartPrices price}) {
    return price.grandTotal.value - price.refundableFee.value;
  }
}
