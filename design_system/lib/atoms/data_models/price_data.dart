import 'package:flutter/material.dart';

import '../../foundations/typo.dart';

class PriceData {
  PriceData({
    this.priceWithDiscountStyle,
    this.priceStyle,
    this.discountPriceStyle,
    this.discountPrice,
    required this.finalPrice,
  });

  final TextStyle? priceWithDiscountStyle;
  final TextStyle? priceStyle;
  final TextStyle? discountPriceStyle;
  final double? discountPrice;
  final double finalPrice;

  PriceData copyWith({
    TextStyle? priceStyle,
    TextStyle? discountPriceStyle,
    double? discountPrice,
    double? finalPrice,
  }) {
    return PriceData(
      priceWithDiscountStyle: priceWithDiscountStyle ?? priceStyle ?? this.priceStyle,
      priceStyle: priceStyle ?? this.priceStyle,
      discountPriceStyle: discountPriceStyle ?? this.discountPriceStyle,
      discountPrice: discountPrice ?? this.discountPrice,
      finalPrice: finalPrice ?? this.finalPrice,
    );
  }

  PriceData big() {
    return PriceData(
      priceWithDiscountStyle: priceWithDiscountStyle ?? priceStyle ?? OmniTypographyFoundation.bold18SecondaryBlack000000,
      priceStyle: priceStyle ?? OmniTypographyFoundation.bold18SecondaryBlack000000,
      discountPriceStyle: discountPriceStyle ?? OmniTypographyFoundation.regular16Blue939EAB,
      discountPrice: discountPrice,
      finalPrice: finalPrice,
    );
  }

  PriceData medium() {
    return PriceData(
      priceWithDiscountStyle: priceWithDiscountStyle ?? priceStyle ?? OmniTypographyFoundation.medium14Grey707070,
      priceStyle: priceStyle ?? OmniTypographyFoundation.medium14Grey707070,
      discountPriceStyle: discountPriceStyle ?? OmniTypographyFoundation.regular14Grey7070,
      discountPrice: discountPrice,
      finalPrice: finalPrice,
    );
  }
}
