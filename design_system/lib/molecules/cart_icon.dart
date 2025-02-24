import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/extension/extension_design.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({super.key, required this.param, this.style});

  final CartIconParam param;
  final CartIconStyle? style;

  CartIconStyle get _style => style ?? CartIconStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return param.quantityProductsInCart > 0
        ? Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: ColorsOmni.redFF001D,
            ),
            height: 45,
            child: Padding(
              padding: const EdgeInsets.only(left: 13, right: 13, top: 11, bottom: 10),
              child: InkWell(
                  onTap: () => param.cartButton?.call(),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                          child: Icon(Icons.shopping_cart_outlined, color: ColorsOmni.white, size: _style.sizeIcon)),
                      const SizedBox(width: 5),
                      AutoSizeText(
                        param.quantityProductsInCart.removeZeroIfDoubleIsDecimal(),
                        style: _style.quantityProductsInCartStyle,
                      )
                    ],
                  ))),
            ))
        : InkWell(
            onTap: () => param.cartButton?.call(),
            child: SizedBox(
              height: 45,
              width: 20,
              child: Center(
                child: Icon(Icons.shopping_cart_outlined, color: ColorsOmni.redFF001D, size: _style.sizeIcon),
              ),
            ));
  }
}

class CartIconParam {
  final double quantityProductsInCart;
  final Function? cartButton;
  final GlobalKey? cartIconKey;

  const CartIconParam({
    required this.quantityProductsInCart,
    required this.cartButton,
    this.cartIconKey,
  });

  //Copy with
  CartIconParam copyWith({
    double? quantityProductsInCart,
    Function? cartButton,
    bool? activeCartAnimation,
    GlobalKey? cartIconKey,
  }) {
    return CartIconParam(
      quantityProductsInCart: quantityProductsInCart ?? this.quantityProductsInCart,
      cartButton: cartButton ?? this.cartButton,
      cartIconKey: cartIconKey ?? this.cartIconKey,
    );
  }
}

class CartIconStyle {
  final TextStyle quantityProductsInCartStyle;
  final Color backgroundColorBadge;
  final double sizeIcon;

  const CartIconStyle({
    required this.quantityProductsInCartStyle,
    required this.backgroundColorBadge,
    required this.sizeIcon,
  });

  factory CartIconStyle.defaultStyle() {
    return CartIconStyle(
        quantityProductsInCartStyle: OmniTypographyFoundation.bold16White,
        backgroundColorBadge: ColorsOmni.red,
        sizeIcon: 20);
  }

  CartIconStyle copyWith({
    TextStyle? quantityProductsInCartStyle,
    Color? backgroundColorBadge,
    double? height,
    double? sizeIcon,
  }) {
    return CartIconStyle(
      quantityProductsInCartStyle: quantityProductsInCartStyle ?? this.quantityProductsInCartStyle,
      backgroundColorBadge: backgroundColorBadge ?? this.backgroundColorBadge,
      sizeIcon: sizeIcon ?? this.sizeIcon,
    );
  }
}
