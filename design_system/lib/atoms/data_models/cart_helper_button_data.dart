import 'package:design_system/foundations/export.dart';
import 'package:flutter/material.dart';

class CartHelperButtonData {
  CartHelperButtonData({
    required this.quantity,
    required this.totalPrice,
    this.productTextStyle,
    this.cartTextStyle,
    this.backgroundColor,
    this.shadowColor,
    this.cartText,
    this.onTap,
    this.productText,
  });

  final int quantity;
  final double totalPrice;
  final TextStyle? productTextStyle;
  final TextStyle? cartTextStyle;
  final Color? backgroundColor;
  final Color? shadowColor;
  final String? cartText;
  final String? productText;
  final VoidCallback? onTap;

  CartHelperButtonData copyWith({
    int? quantity,
    double? totalPrice,
    TextStyle? productTextStyle,
    TextStyle? cartTextStyle,
    Color? backgroundColor,
    Color? shadowColor,
    String? cartText,
    VoidCallback? onTap,
    String? productText,
  }) {
    return CartHelperButtonData(
      quantity: quantity ?? this.quantity,
      totalPrice: totalPrice ?? this.totalPrice,
      productTextStyle: productTextStyle ?? this.productTextStyle,
      cartTextStyle: cartTextStyle ?? this.cartTextStyle,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      shadowColor: shadowColor ?? this.shadowColor,
      cartText: cartText ?? this.cartText,
      onTap: onTap ?? this.onTap,
      productText: productText ?? this.productText,
    );
  }

  CartHelperButtonData main() {
    return CartHelperButtonData(
      quantity: quantity,
      totalPrice: totalPrice,
      productTextStyle: OmniTypographyFoundation.semiBold14Grey707070,
      cartTextStyle: OmniTypographyFoundation.semiBold16PrimaryRedFF001D,
      backgroundColor: backgroundColor ?? ColorsOmni.white,
      shadowColor: shadowColor ?? ColorsOmni.veryLightShadeGray,
      cartText: cartText,
      onTap: onTap,
      productText: productText,
    );
  }
}
