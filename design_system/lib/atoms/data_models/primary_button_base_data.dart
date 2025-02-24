import 'package:flutter/material.dart';

class PrimaryButtonBaseData {
  final VoidCallback? onPressed;
  final Widget child;
  final Color activeColor;
  final Color disabledColor;
  final Color? foreGroundColor;
  final bool isDisabled;
  final bool isLoading;
  final double? elevation;
  final double? radius;
  final Color? shadowColor;
  final double? width;
  final double? height;
  final BorderSide? side;
  final EdgeInsetsGeometry? padding;
  final Color? colorBorder;

  PrimaryButtonBaseData({
    this.onPressed,
    required this.child,
    required this.activeColor,
    required this.disabledColor,
    this.side,
    this.foreGroundColor,
    this.isDisabled = false,
    this.isLoading = false,
    this.elevation,
    this.radius,
    this.shadowColor,
    this.width,
    this.height,
    this.padding,
    this.colorBorder,
  });

  PrimaryButtonBaseData copyWith({
    VoidCallback? onPressed,
    Widget? child,
    Color? activeColor,
    Color? disabledColor,
    Color? foreGroundColor,
    bool? isDisabled,
    bool? isLoading,
    double? elevation,
    double? radius,
    Color? shadowColor,
    double? width,
    double? height,
    BorderSide? side,
    EdgeInsetsGeometry? padding,
    Color? colorBorder,
  }) {
    return PrimaryButtonBaseData(
      onPressed: onPressed ?? this.onPressed,
      child: child ?? this.child,
      activeColor: activeColor ?? this.activeColor,
      disabledColor: disabledColor ?? this.disabledColor,
      foreGroundColor: foreGroundColor ?? this.foreGroundColor,
      isDisabled: isDisabled ?? this.isDisabled,
      isLoading: isLoading ?? this.isLoading,
      elevation: elevation ?? this.elevation,
      radius: radius ?? this.radius,
      shadowColor: shadowColor ?? this.shadowColor,
      width: width ?? this.width,
      height: height ?? this.height,
      side: side ?? this.side,
      padding: padding ?? this.padding,
      colorBorder: colorBorder ?? this.colorBorder,
    );
  }
}
