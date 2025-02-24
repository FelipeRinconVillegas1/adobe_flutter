import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/atoms/data_models/primary_button_base_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets_omni.dart';

class PrimaryButtonData {
  final VoidCallback? onPressed;
  final Widget? child;
  final Color? activeColor;
  final Color? disabledColor;
  final Color? foregroundColor;
  final bool isDisabled;
  final bool isLoading;
  final double? elevation;
  final double? radius;
  final Color? shadowColor;
  final Color? colorBorder;
  final double? width;
  final double? height;
  final String? text;
  final TextStyle? activeTextStyle;
  final TextStyle? disableTextStyle;
  final EdgeInsetsGeometry? padding;

  PrimaryButtonData({
    this.onPressed,
    this.child,
    this.activeColor,
    this.disabledColor,
    this.foregroundColor,
    this.isDisabled = false,
    this.isLoading = false,
    this.elevation,
    this.radius,
    this.shadowColor,
    this.width,
    this.height,
    this.text,
    this.activeTextStyle,
    this.disableTextStyle,
    this.colorBorder,
    this.padding,
  });

  PrimaryButtonData copyWith({
    VoidCallback? onPressed,
    Widget? child,
    Color? activeColor,
    Color? disabledColor,
    Color? foregroundColor,
    bool? isDisabled,
    bool? isLoading,
    double? elevation,
    double? radius,
    Color? shadowColor,
    double? width,
    double? height,
    String? text,
    TextStyle? activeTextStyle,
    TextStyle? disableTextStyle,
    EdgeInsetsGeometry? padding,
    Color? colorBorder,
  }) {
    return PrimaryButtonData(
      colorBorder: colorBorder ?? this.colorBorder,
      onPressed: onPressed ?? this.onPressed,
      child: child ?? this.child,
      activeColor: activeColor ?? this.activeColor,
      disabledColor: disabledColor ?? this.disabledColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      isDisabled: isDisabled ?? this.isDisabled,
      isLoading: isLoading ?? this.isLoading,
      elevation: elevation ?? this.elevation,
      radius: radius ?? this.radius,
      shadowColor: shadowColor ?? this.shadowColor,
      width: width ?? this.width,
      height: height ?? this.height,
      text: text ?? this.text,
      activeTextStyle: activeTextStyle ?? this.activeTextStyle,
      disableTextStyle: disableTextStyle ?? this.disableTextStyle,
      padding: padding ?? this.padding,
    );
  }

  Widget _childFunctionPrimary() {
    if (child != null) {
      return child!;
    } else if (text != null) {
      final textStyle = isDisabled || onPressed == null ? disableTextStyle : activeTextStyle;
      return AutoSizeText(
        text!,
        style: textStyle ?? OmniTypographyFoundation.bold14WhiteFFFFFF,
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _childFunctionSecondary() {
    if (child != null) {
      return child!;
    } else if (text != null) {
      final textStyle = isDisabled || onPressed == null ? disableTextStyle : activeTextStyle;
      return AutoSizeText(
        text!,
        style: textStyle ?? OmniTypographyFoundation.bold14SecondaryBlack000000,
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  PrimaryButtonBaseData defaultPrimaryButton() {
    return PrimaryButtonBaseData(
      activeColor: activeColor ?? ColorsOmni.primaryRed,
      disabledColor: disabledColor ?? ColorsOmni.primaryRedWith50PercentOpacity,
      foreGroundColor: foregroundColor ?? ColorsOmni.primaryRed,
      onPressed: onPressed,
      elevation: elevation ?? 0,
      isDisabled: isDisabled,
      isLoading: isLoading,
      radius: radius ?? 21.r,
      shadowColor: shadowColor,
      width: width,
      height: height?.h ?? 40.h,
      child: _childFunctionPrimary(),
      padding: padding,
    );
  }

  PrimaryButtonBaseData defaultSecondaryButton() {
    return PrimaryButtonBaseData(
      activeColor: activeColor ?? ColorsOmni.white,
      disabledColor: disabledColor ?? ColorsOmni.white,
      foreGroundColor: foregroundColor ?? ColorsOmni.white,
      side: BorderSide(
        color: colorBorder ?? ColorsOmni.black,
        width: 1.w,
      ),
      onPressed: onPressed,
      elevation: elevation ?? 0,
      isDisabled: isDisabled,
      isLoading: isLoading,
      radius: radius ?? 21.r,
      shadowColor: shadowColor,
      width: width,
      height: height?.h ?? 44,
      child: _childFunctionSecondary(),
      padding: padding,
    );
  }
}
