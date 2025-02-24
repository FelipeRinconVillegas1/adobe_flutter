import 'package:design_system/foundations/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LabelExclusive extends StatelessWidget {
  const LabelExclusive({super.key, required this.label, this.style});

  final String label;
  final LabelExclusiveStyle? style;

  LabelExclusiveStyle get _defaultStyle => style ?? LabelExclusiveStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _defaultStyle.padding,
      decoration: BoxDecoration(
        color: _defaultStyle.backgroundColor,
        borderRadius: BorderRadius.circular(_defaultStyle.borderRadius),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: _defaultStyle.labelStyle,
        ),
      ),
    );
  }
}

class LabelExclusiveStyle {
  final TextStyle labelStyle;
  final Color backgroundColor;
  final double borderRadius;
  final EdgeInsets padding;

  const LabelExclusiveStyle({
    required this.labelStyle,
    required this.backgroundColor,
    required this.borderRadius,
    required this.padding,
  });

  factory LabelExclusiveStyle.defaultStyle({double fontSize = 8}) {
    return LabelExclusiveStyle(
      labelStyle: OmniTypographyFoundation.medium9WhiteFFFFFF.copyWith(fontSize: fontSize.sp),
      backgroundColor: ColorsOmni.ceruleanBlue,
      borderRadius: 2,
      padding:  EdgeInsets.only(top: 3.5.h, bottom: 4.h),
    );
  }

  //copy with
  LabelExclusiveStyle copyWith({
    TextStyle? labelStyle,
    Color? backgroundColor,
    double? borderRadius,
    EdgeInsets? padding,
  }) {
    return LabelExclusiveStyle(
      labelStyle: labelStyle ?? this.labelStyle,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
    );
  }
}
