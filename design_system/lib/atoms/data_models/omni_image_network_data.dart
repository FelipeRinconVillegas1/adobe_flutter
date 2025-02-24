import 'package:flutter/material.dart';

class OmniImageNetworkData {
  final String? url;
  final Widget placeholder;
  final Widget errorWidget;
  final double? widthImage;
  final double? heightImage;
  final BoxFit? fit;
  const OmniImageNetworkData({
    this.url,
    this.widthImage,
    this.heightImage,
    required this.placeholder,
    required this.errorWidget,
    this.fit,
  });
}

