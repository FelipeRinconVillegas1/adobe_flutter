import 'package:design_system/foundations/images.dart';
import 'package:flutter/material.dart';

class PrimaryImageData {
  final double? width;
  final double? height;
  final Color? color;
  final ImagesOmni image;
  final BoxFit? fit;

  PrimaryImageData({
    this.width,
    this.height,
    this.color,
    this.fit,
    required this.image,
  });

  PrimaryImageData copyWith({
    double? width,
    double? height,
    ImagesOmni? image,
    Color? color,
  }) {
    return PrimaryImageData(
      width: width ?? this.width,
      height: height ?? this.height,
      image: image ?? this.image,
      color: color ?? this.color,
    );
  }
}
