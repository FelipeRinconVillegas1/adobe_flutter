import 'package:design_system/foundations/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IndicatorItemInCart extends StatelessWidget {
  const IndicatorItemInCart({super.key, this.style, required this.text});

  final String text;
  final IndicatorItemInCartStyle? style;

  IndicatorItemInCartStyle get _style => style ?? IndicatorItemInCartStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 4.w),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.w),
          decoration: BoxDecoration(
            color: _style.backgroundColor,
            borderRadius: BorderRadius.circular(4.w),
          ),
          child: Text(
            text,
            style: _style.textStyle,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}

class IndicatorItemInCartStyle {
  final double borderRadius;
  final Color backgroundColor;
  final TextStyle textStyle;

  IndicatorItemInCartStyle({
    required this.borderRadius,
    required this.backgroundColor,
    required this.textStyle,
  });

  factory IndicatorItemInCartStyle.defaultStyle() {
    return IndicatorItemInCartStyle(
      borderRadius: 4.w,
      backgroundColor: ColorsOmni.grayF5F5F5,
      textStyle: OmniTypographyFoundation.medium9Grey707070,
    );
  }
}
