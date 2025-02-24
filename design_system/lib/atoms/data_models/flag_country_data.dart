import 'package:flutter/material.dart';

class FlagCountryData {
  final double? width;
  final double? height;
  final Color? color;
  final String codeFlag;
  final BoxFit? fit;

  FlagCountryData({
    this.width,
    this.height,
    this.color,
    this.fit,
    required this.codeFlag,
  });

  FlagCountryData copyWith({
    double? width,
    double? height,
    String? codeFlag,
    Color? color,
  }) {
    return FlagCountryData(
      width: width ?? this.width,
      height: height ?? this.height,
      codeFlag: codeFlag ?? this.codeFlag,
      color: color ?? this.color,
    );
  }
}
