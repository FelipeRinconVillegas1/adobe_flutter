import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:flutter/material.dart';

import '../../widgets_omni.dart';

class CartItemDiscountBanner extends StatelessWidget {
  const CartItemDiscountBanner({super.key, this.style, required this.param});

  final CartItemDiscountBannerStyle? style;
  final CartItemDiscountBannerParam param;

  CartItemDiscountBannerStyle get _style => style ?? CartItemDiscountBannerStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_style.borderRadius),
        color: _style.backgroundColor,
      ),
      padding: _style.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _style.iconLeft,
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: RichText(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  children: [
                    TextSpan(text: param.discount, style: _style.discountTextStyle),
                    const TextSpan(text: ' '),
                    TextSpan(text: param.percentageOff, style: _style.percentageOffTextStyle),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CartItemDiscountBannerParam {
  final String discount;
  final String percentageOff;

  CartItemDiscountBannerParam({required this.discount, required this.percentageOff});
}

class CartItemDiscountBannerStyle {
  const CartItemDiscountBannerStyle({
    required this.discountTextStyle,
    required this.percentageOffTextStyle,
    required this.iconLeft,
    required this.backgroundColor,
    required this.padding,
    required this.borderRadius,
  });

  final TextStyle discountTextStyle;
  final TextStyle percentageOffTextStyle;
  final Widget iconLeft;
  final Color backgroundColor;
  final EdgeInsets padding;
  final double borderRadius;

  static CartItemDiscountBannerStyle defaultStyle({Color iconColor = ColorsOmni.white}) {
    return CartItemDiscountBannerStyle(
      discountTextStyle: OmniTypographyFoundation.regular14White,
      percentageOffTextStyle: OmniTypographyFoundation.bold14WhiteFFFFFF,
      iconLeft: const PrimarySvgIconAsset(data: PrimarySvgIconData(icon: OmniIcons.s99Benefit99Plus,height: 20)),
      backgroundColor: ColorsOmni.redFF001D,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      borderRadius: 0,
    );
  }

  //Copy with
  CartItemDiscountBannerStyle copyWith({
    TextStyle? discountTextStyle,
    TextStyle? percentageOffTextStyle,
    Widget? iconLeft,
    Color? backgroundColor,
    EdgeInsets? padding,
    double? borderRadius,
  }) {
    return CartItemDiscountBannerStyle(
      discountTextStyle: discountTextStyle ?? this.discountTextStyle,
      percentageOffTextStyle: percentageOffTextStyle ?? this.percentageOffTextStyle,
      iconLeft: iconLeft ?? this.iconLeft,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      padding: padding ?? this.padding,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
