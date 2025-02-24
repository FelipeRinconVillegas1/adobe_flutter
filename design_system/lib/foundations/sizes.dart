import 'package:design_system/tokens/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class OmniSizesFoundation {
  static const double sizeCard = OmniSizes.sizeLG;
  static const double sizeCircleAccionableCard = OmniSizes.sizeMD;
  static const double baseSepareted = OmniSizes.sizeSM;
  static const double sizeCardSM = OmniSizes.sizeSM;

  static double hResponsive(double value) => value.h;
  static double wResponsive(double value) => value.w;
  static double spResponsive(double value) => value.sp;
  static double rResponsive(double value) => value.r;
}

extension OmniSizedBox on SizedBox {
  SizedBox get responsive => SizedBox(
        width: width?.w,
        height: height?.h,
      );
}

extension DoubleResponsive on double {
  double get height => OmniSizesFoundation.hResponsive(this);
  double get width => OmniSizesFoundation.wResponsive(this);
  double get scalablePixel => OmniSizesFoundation.spResponsive(this);
  double get radius => OmniSizesFoundation.rResponsive(this);
}
