import 'package:core/utils/extension.dart';
import 'package:core/utils/extensions/string_extension.dart';
import 'package:design_system/foundations/sizes.dart';
import 'package:flutter/material.dart';

import '../data_models/price_data.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
    required this.priceData,
  });

  final PriceData priceData;

  @override
  Widget build(BuildContext context) {
    bool hasDiscountPrice = priceData.discountPrice != null;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          priceData.finalPrice.formatNumberTwoDecimalToDouble().toCurrency(),
          style: hasDiscountPrice ? priceData.priceWithDiscountStyle : priceData.priceStyle,
        ),
        const SizedBox(width: 5).responsive,
        if (hasDiscountPrice && priceData.discountPrice != null)
          Text(
            priceData.discountPrice!.formatNumberTwoDecimalToDouble().toCurrency(),
            style: priceData.discountPriceStyle?.copyWith(
              decoration: TextDecoration.lineThrough,
            ),
          ),
      ],
    );
  }
}

class BigPriceWidget extends StatelessWidget {
  const BigPriceWidget({
    super.key,
    required this.priceData,
  });

  final PriceData priceData;

  @override
  Widget build(BuildContext context) {
    return PriceWidget(
      priceData: priceData.big(),
    );
  }
}

class MediumPriceWidget extends StatelessWidget {
  const MediumPriceWidget({
    super.key,
    required this.priceData,
  });

  final PriceData priceData;

  @override
  Widget build(BuildContext context) {
    return PriceWidget(
      priceData: priceData.medium(),
    );
  }
}
