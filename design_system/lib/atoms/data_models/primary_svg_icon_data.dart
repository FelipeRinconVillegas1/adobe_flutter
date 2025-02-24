import 'package:design_system/foundations/icons.dart';
import 'package:flutter/material.dart';

class PrimarySvgIconData {
  final double? width;
  final double? height;
  final ColorFilter? colorFilter;
  final Color? color;
  final OmniIcons icon;
  final BoxFit? fit;

  const PrimarySvgIconData({
    this.width,
    this.height,
    this.colorFilter,
    this.color,
    required this.icon,
    this.fit,
  });

  PrimarySvgIconData copyWith({
    double? width,
    double? height,
    OmniIcons? icon,
    ColorFilter? colorFilter,
    BoxFit? fit,
    Color? color,
  }) {
    return PrimarySvgIconData(
      color: color ?? this.color,
      width: width ?? this.width,
      height: height ?? this.height,
      icon: icon ?? this.icon,
      colorFilter: colorFilter ?? this.colorFilter,
      fit: fit ?? this.fit,
    );
  }
}
