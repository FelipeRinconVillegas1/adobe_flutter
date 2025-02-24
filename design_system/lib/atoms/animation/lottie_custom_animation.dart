import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieCustomAnimation extends StatelessWidget {
  const LottieCustomAnimation({super.key, required this.params, this.style});

  final LottieCustomAnimationParam params;
  final LottieCustomAnimationStyle? style;

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      params.pathAsset,
      repeat: params.repeat,
      height: style?.height,
      fit: style?.boxFit,
      controller: params.controller,
      onLoaded: params.onLoaded,
      filterQuality: style?.filterQuality,
      frameRate: style?.frameRate,
      renderCache: style?.renderCache,
      options: LottieOptions(enableApplyingOpacityToLayers: true),
    );
  }
}

class LottieCustomAnimationParam {
  final String pathAsset;
  final bool? repeat;
  final Animation<double>? controller;
  void Function(LottieComposition)? onLoaded;

  LottieCustomAnimationParam({required this.pathAsset, this.repeat, this.controller, this.onLoaded});

  LottieCustomAnimationParam copyWith({
    String? pathAsset,
    bool? repeat,
    Animation<double>? controller,
    void Function(LottieComposition)? onLoaded,
  }) {
    return LottieCustomAnimationParam(
        pathAsset: pathAsset ?? this.pathAsset,
        repeat: repeat ?? this.repeat,
        controller: controller ?? this.controller,
        onLoaded: onLoaded ?? this.onLoaded);
  }
}

class LottieCustomAnimationStyle {
  final double? height;
  final BoxFit? boxFit;
  final FilterQuality? filterQuality;
  final FrameRate? frameRate;
  final RenderCache? renderCache;

  LottieCustomAnimationStyle({this.height, this.boxFit, this.filterQuality, this.frameRate, this.renderCache});

  LottieCustomAnimationStyle copyWith({
    double? height,
    BoxFit? boxFit,
    FilterQuality? filterQuality,
    FrameRate? frameRate,
    RenderCache? renderCache,
  }) {
    return LottieCustomAnimationStyle(
      height: height ?? this.height,
      boxFit: boxFit ?? this.boxFit,
      filterQuality: filterQuality ?? this.filterQuality,
      frameRate: frameRate ?? this.frameRate,
      renderCache: renderCache ?? this.renderCache,
    );
  }

  factory LottieCustomAnimationStyle.energyEfficient({
    double? height,
    BoxFit? boxFit,
    FilterQuality? filterQuality,
    double? frameRatePerSecond,
    RenderCache? renderCache,
  }) {
    return LottieCustomAnimationStyle(
      height: height,
      boxFit: boxFit,
      filterQuality: filterQuality ?? FilterQuality.low,
      frameRate: frameRatePerSecond != null ? FrameRate(frameRatePerSecond) : const FrameRate(60),
      renderCache: renderCache ?? RenderCache.raster,
    );
  }
}
