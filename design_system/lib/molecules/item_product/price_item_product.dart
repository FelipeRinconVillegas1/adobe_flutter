import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../foundations/typo.dart';

class PriceItemProduct extends StatelessWidget {
  const PriceItemProduct({super.key, required this.param, this.style});

  final PriceItemProductStyle? style;

  PriceItemProductStyle get _style => style ?? PriceItemProductStyle.defaultStyle();

  final PriceItemProductParam param;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 11),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: 3,
                child: Text(
                  param.price,
                  style: param.discount.isNotEmpty ? _style.priceWithDiscountTextStyle : _style.priceTextStyle,
                  maxLines: 1,
                ),
              ),
              const SizedBox(width: 4),
              Flexible(
                  flex: 2,
                  child: AutoSizeText(
                    param.discount,
                    style: _style.discountTextStyle,
                    minFontSize: 8,
                    maxLines: 1,
                  )),
            ],
          ),
          Visibility(
            visible: param.unitOfMeasure.isNotEmpty,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(param.unitOfMeasure,
                      style: _style.unitOfMeasureTextStyle, maxLines: 1),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PriceItemProductParam {
  final String price;
  final String unitOfMeasure;
  final String discount;
  final String percentageOff;

  PriceItemProductParam({
    required this.price,
    required this.unitOfMeasure,
    this.discount = '',
    this.percentageOff = '',
  });
}

class PriceItemProductStyle {
  PriceItemProductStyle({
    required this.priceTextStyle,
    required this.priceWithDiscountTextStyle,
    required this.discountTextStyle,
    required this.percentageOffTextStyle,
    required this.unitOfMeasureTextStyle,
  });

  final TextStyle priceTextStyle;
  final TextStyle priceWithDiscountTextStyle;
  final TextStyle discountTextStyle;
  final TextStyle percentageOffTextStyle;
  final TextStyle unitOfMeasureTextStyle;

  static PriceItemProductStyle defaultStyle() => PriceItemProductStyle(
        priceTextStyle: OmniTypographyFoundation.bold14SecondaryBlack000000,
        priceWithDiscountTextStyle: OmniTypographyFoundation.bold14RedFF1335,
        unitOfMeasureTextStyle: OmniTypographyFoundation.medium8Grey9f9f9f.copyWith(letterSpacing: 0),
        discountTextStyle:
            OmniTypographyFoundation.light12SecondaryBlack000000.copyWith(decoration: TextDecoration.lineThrough),
        percentageOffTextStyle: OmniTypographyFoundation.regular12Grey9A9B9E,
      );

  ///Copy with
  PriceItemProductStyle copyWith({
    TextStyle? priceTextStyle,
    TextStyle? priceWithDiscountTextStyle,
    TextStyle? discountTextStyle,
    TextStyle? percentageOffTextStyle,
    TextStyle? unitOfMeasureTextStyle,
  }) {
    return PriceItemProductStyle(
      priceTextStyle: priceTextStyle ?? this.priceTextStyle,
      priceWithDiscountTextStyle: priceWithDiscountTextStyle ?? this.priceWithDiscountTextStyle,
      discountTextStyle: discountTextStyle ?? this.discountTextStyle,
      percentageOffTextStyle: percentageOffTextStyle ?? this.percentageOffTextStyle,
      unitOfMeasureTextStyle: unitOfMeasureTextStyle ?? this.unitOfMeasureTextStyle,
    );
  }
}
