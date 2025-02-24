import 'dart:async';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpandableButtonData {
  ExpandableButtonData({
    this.title,
    this.child,
    this.titleStyle,
    this.buttonBackgroundColor,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonPadding,
    this.contentPadding,
    this.buttonColor,
    this.buttonBoxShadow,
    this.isExpanded,
    this.initWidgetExpanded,
    this.outerPadding,
    this.iconSize,
    this.buttonBorder,
    this.buttonBorderRadius,
    this.onTap,
  });

  final Object? title;
  final Widget? child;
  final double? buttonHeight;
  final double? buttonWidth;
  final TextStyle? titleStyle;
  final Color? buttonBackgroundColor;
  final EdgeInsets? buttonPadding;
  final EdgeInsets? contentPadding;
  final EdgeInsetsGeometry? outerPadding;
  final Color? buttonColor;
  final List<BoxShadow>? buttonBoxShadow;
  final StreamController<bool>? isExpanded;
  final bool? initWidgetExpanded;
  final double? iconSize;
  final Border? buttonBorder;
  final BorderRadius? buttonBorderRadius;
  final Function(bool val)? onTap;

  ExpandableButtonData copyWith({
    Object? title,
    Widget? child,
    double? buttonHeight,
    double? buttonWidth,
    TextStyle? titleStyle,
    Color? buttonBackgroundColor,
    EdgeInsets? buttonPadding,
    EdgeInsets? contentPadding,
    Color? buttonColor,
    List<BoxShadow>? buttonBoxShadow,
    StreamController<bool>? isExpanded,
    bool? initWidgetExpanded,
    EdgeInsetsGeometry? outerPadding,
    double? iconSize,
    Border? buttonBorder,
    BorderRadius? buttonBorderRadius,
    Function(bool?)? onTap,
  }) {
    return ExpandableButtonData(
      title: title ?? this.title,
      child: child ?? this.child,
      buttonHeight: buttonHeight ?? this.buttonHeight,
      buttonWidth: buttonWidth ?? this.buttonWidth,
      titleStyle: titleStyle ?? this.titleStyle,
      buttonBackgroundColor: buttonBackgroundColor ?? this.buttonBackgroundColor,
      buttonPadding: buttonPadding ?? this.buttonPadding,
      contentPadding: contentPadding ?? this.contentPadding,
      buttonColor: buttonColor ?? this.buttonColor,
      buttonBoxShadow: buttonBoxShadow ?? this.buttonBoxShadow,
      isExpanded: isExpanded ?? this.isExpanded,
      initWidgetExpanded: initWidgetExpanded ?? this.initWidgetExpanded,
      outerPadding: outerPadding ?? this.outerPadding,
      iconSize: iconSize ?? this.iconSize,
      buttonBorder: buttonBorder ?? this.buttonBorder,
      buttonBorderRadius: buttonBorderRadius ?? this.buttonBorderRadius,
      onTap: onTap ?? this.onTap,
    );
  }

  ExpandableButtonData mainData() {
    return ExpandableButtonData(
      title: title,
      child: child,
      buttonWidth: buttonWidth ?? double.infinity,
      buttonHeight: buttonHeight,
      titleStyle: titleStyle ?? OmniTypographyFoundation.semiBold14Black161615,
      buttonBackgroundColor: buttonBackgroundColor ?? ColorsOmni.white,
      buttonPadding: buttonPadding ?? EdgeInsets.zero,
      contentPadding: contentPadding ?? EdgeInsets.zero,
      buttonColor: buttonColor ?? Colors.black,
      buttonBoxShadow: buttonBoxShadow,
      isExpanded: isExpanded,
      initWidgetExpanded: initWidgetExpanded ?? false,
      outerPadding: outerPadding ?? EdgeInsets.zero,
      iconSize: iconSize ?? 20.h,
      buttonBorder: buttonBorder ?? Border.all(color: ColorsOmni.grey707070, width: 1),
      buttonBorderRadius: buttonBorderRadius ?? BorderRadius.circular(5.r),
      onTap: onTap,
    );
  }
}
