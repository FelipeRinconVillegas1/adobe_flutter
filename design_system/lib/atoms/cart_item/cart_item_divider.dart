import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';

class CartItemDivider extends StatelessWidget {
  const CartItemDivider({super.key, this.color = ColorsOmni.grayF5F5F5, this.height = 12, this.thickness = 1.5});

  final Color color;
  final double height;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      height: height,
      thickness: thickness,
    );
  }
}
