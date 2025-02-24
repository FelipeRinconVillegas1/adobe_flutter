import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';

class ShowPriceCartItem extends StatelessWidget {
  const ShowPriceCartItem({super.key, this.style, required this.param});

  final ShowPriceCartItemStyle? style;
  final ShowPriceCartItemParam param;

  ShowPriceCartItemStyle get _style => style ?? ShowPriceCartItemStyle.defaultStyle();

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
        if(param.tax.isNotEmpty)Text(
          param.tax,
          style: _style.taxTextStyle,
        ),
        RichText(
          text: TextSpan(
            text: param.startTextPrice,
            style: _style.priceTextStyle,
            children: [
              TextSpan(
                text: param.priceUnd,
                style: _style.priceTextStyle,
              ),
              TextSpan(
                text: ' ${param.unitOfMeasure}',
                style: _style.unitOfMeasureTextStyle,
              ),
              TextSpan(
                text: param.endTextPrice,
                style: _style.priceTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ShowPriceCartItemStyle {
  const ShowPriceCartItemStyle({
    required this.priceTextStyle,
    required this.totalPriceTextStyle,
    required this.unitOfMeasureTextStyle,
    required this.discountTextStyle,
    required this.percentageOffTextStyle,
    required this.taxTextStyle,
  });

  final TextStyle priceTextStyle;
  final TextStyle totalPriceTextStyle;
  final TextStyle unitOfMeasureTextStyle;
  final TextStyle discountTextStyle;
  final TextStyle percentageOffTextStyle;
  final TextStyle taxTextStyle;

  static ShowPriceCartItemStyle defaultStyle() {
    return ShowPriceCartItemStyle(
      totalPriceTextStyle: OmniTypographyFoundation.semiBold14PrimaryRedFF001D,
      priceTextStyle: OmniTypographyFoundation.regular12SecondaryBlack000000,
      unitOfMeasureTextStyle: OmniTypographyFoundation.regular12SecondaryBlack000000,
      discountTextStyle: OmniTypographyFoundation.regular10SecondaryBlack000000,
      percentageOffTextStyle: OmniTypographyFoundation.regular10SecondaryBlack000000,
      taxTextStyle: OmniTypographyFoundation.regular10PrimaryRedFF001D,
    );
  }

  static ShowPriceCartItemStyle disabledStyle() {
    return ShowPriceCartItemStyle(
      totalPriceTextStyle: OmniTypographyFoundation.semiBold14PrimaryRedFF001D.copyWith(color: ColorsOmni.greyB7B7B7),
      priceTextStyle: OmniTypographyFoundation.regular12SecondaryBlack000000.copyWith(color: ColorsOmni.greyB7B7B7),
      unitOfMeasureTextStyle:
          OmniTypographyFoundation.regular12SecondaryBlack000000.copyWith(color: ColorsOmni.greyB7B7B7),
      discountTextStyle: OmniTypographyFoundation.regular10SecondaryBlack000000.copyWith(color: ColorsOmni.greyB7B7B7),
      percentageOffTextStyle:
          OmniTypographyFoundation.regular10SecondaryBlack000000.copyWith(color: ColorsOmni.greyB7B7B7),
      taxTextStyle: OmniTypographyFoundation.regular10PrimaryRedFF001D.copyWith(color: ColorsOmni.greyB7B7B7),
    );
  }
}

class ShowPriceCartItemParam {
  const ShowPriceCartItemParam({
    required this.priceUnd,
    required this.unitOfMeasure,
    required this.totalPrice,
    required this.tax,
    this.discount,
    this.percentageOff,
    this.startTextPrice = '(',
    this.endTextPrice = ')',
  });

  final String tax;
  final String totalPrice;
  final String priceUnd;
  final String unitOfMeasure;
  final String? discount;
  final String? percentageOff;
  final String startTextPrice;
  final String endTextPrice;
}
