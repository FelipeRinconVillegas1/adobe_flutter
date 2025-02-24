import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingDefaultAnimation extends StatelessWidget {
  const LoadingDefaultAnimation({super.key, this.param = const LoadingDefaultAnimationParam.defaultParam()});

  final LoadingDefaultAnimationParam param;

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.horizontalRotatingDots(
      color: param.color,
      size: param.size,
    );
  }
}

class LoadingDefaultAnimationFullScreen extends StatelessWidget {
  const LoadingDefaultAnimationFullScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: ColorsOmni.black.withOpacity(0.3),
      child: const Center(
        child: LoadingDefaultAnimation(
          param: LoadingDefaultAnimationParam.defaultParam(),
        ),
      ),
    );
  }
}

class LoadingDefaultAnimationParam {
  final Color color;
  final double size;

  const LoadingDefaultAnimationParam({required this.color, required this.size});

  const LoadingDefaultAnimationParam.defaultParam()
      : color = ColorsOmni.primaryRed,
        size = 48;

  LoadingDefaultAnimationParam copyWith({
    Color? color,
    double? size,
  }) {
    return LoadingDefaultAnimationParam(
      color: color ?? this.color,
      size: size ?? this.size,
    );
  }
}
