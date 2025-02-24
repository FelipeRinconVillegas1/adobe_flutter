import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/foundations/export.dart';
import 'package:flutter/material.dart';

class CircularPercentageIndicator extends StatelessWidget {
  const CircularPercentageIndicator({super.key, this.style, required this.percentage, this.textPercentage});

  final double percentage;
  /// Text percentage, if null, will be shown percentage * 100
  final String? textPercentage;
  final CircularPercentageIndicatorStyle? style;

  CircularPercentageIndicatorStyle get _style => style ?? CircularPercentageIndicatorStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: _style.sizeIndicator,
          height: _style.sizeIndicator,
          child: Align(
            alignment: Alignment.center,
            child: AutoSizeText(
              textPercentage ?? '${(percentage * 100).toInt()}%',
              maxLines: 1,
              style: _style.indicatorTextStyle,
            ),
          ),
        ),
        SizedBox(
          height: _style.sizeIndicator,
          width: _style.sizeIndicator,
          child: CircularProgressIndicator(
            strokeWidth: _style.strokeWidth,
            value: percentage,
            valueColor: AlwaysStoppedAnimation<Color>(_style.indicatorColor),
            backgroundColor: _style.backgroundColor,
          ),
        ),
      ],
    );
  }
}

class CircularPercentageIndicatorStyle {
  final double sizeIndicator;
  final double strokeWidth;
  final TextStyle indicatorTextStyle;
  final Color indicatorColor;
  final Color backgroundColor;

  const CircularPercentageIndicatorStyle({
    required this.sizeIndicator,
    required this.strokeWidth,
    required this.indicatorColor,
    required this.backgroundColor,
    required this.indicatorTextStyle,
  });

  static CircularPercentageIndicatorStyle defaultStyle() => CircularPercentageIndicatorStyle(
        sizeIndicator: 70,
        strokeWidth: 6,
        indicatorColor: ColorsOmni.denotativePositiveGreen,
        backgroundColor: ColorsOmni.ice,
        indicatorTextStyle: OmniTypographyFoundation.semiBold16Green20BE79,
      );

  ///Copy with
  CircularPercentageIndicatorStyle copyWith({
    double? sizeIndicator,
    double? strokeWidth,
    double? percentage,
    Color? indicatorColor,
    Color? backgroundColor,
    TextStyle? indicatorTextStyle,
  }) {
    return CircularPercentageIndicatorStyle(
      indicatorTextStyle: indicatorTextStyle ?? this.indicatorTextStyle,
      sizeIndicator: sizeIndicator ?? this.sizeIndicator,
      strokeWidth: strokeWidth ?? this.strokeWidth,
      indicatorColor: indicatorColor ?? this.indicatorColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}
