import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';

class ShowPriceWishlistItem extends StatelessWidget {
  const ShowPriceWishlistItem({super.key, this.style, required this.param});

  final ShowPriceWishlistItemStyle? style;
  final ShowPriceWishlistItemParam param;

  ShowPriceWishlistItemStyle get _style => style ?? ShowPriceWishlistItemStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          param.totalPrice,
          style: _style.totalPriceTextStyle,
        ),
        if (param.tax.isNotEmpty)
          Text(
            param.tax,
            style: _style.taxTextStyle,
          ),
        Text(
          param.priceUnd,
          style: _style.unitOfMeasureTextStyle,
        ),
        Text(
          param.unitOfMeasure,
          style: _style.unitOfMeasureTextStyle,
        ),
      ],
    );
  }
}

class ShowPriceWishlistItemStyle {
  const ShowPriceWishlistItemStyle({
    required this.priceTextStyle,
    required this.totalPriceTextStyle,
    required this.unitOfMeasureTextStyle,
    required this.taxTextStyle,
  });

  final TextStyle priceTextStyle;
  final TextStyle totalPriceTextStyle;
  final TextStyle unitOfMeasureTextStyle;
  final TextStyle taxTextStyle;

  static ShowPriceWishlistItemStyle defaultStyle() {
    return ShowPriceWishlistItemStyle(
      totalPriceTextStyle: OmniTypographyFoundation.bold16redFF001D,
      priceTextStyle: OmniTypographyFoundation.regular12SecondaryBlack000000,
      unitOfMeasureTextStyle: OmniTypographyFoundation.regular12SecondaryBlack000000,
      taxTextStyle: OmniTypographyFoundation.regular10PrimaryRedFF001D,
    );
  }
}

class ShowPriceWishlistItemParam {
  const ShowPriceWishlistItemParam(
      {required this.priceUnd, required this.unitOfMeasure, required this.totalPrice, required this.tax});

  final String tax;
  final String totalPrice;
  final String priceUnd;
  final String unitOfMeasure;
}
