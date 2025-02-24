import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';

import '../../foundations/typo.dart';

class RibbonsProduct extends StatelessWidget {
  const RibbonsProduct({
    Key? key,
    required this.text,
    this.style,
  }) : super(key: key);

  final RibbonsProductStyle? style;
  final String text;

  RibbonsProductStyle get _style => style ?? RibbonsProductStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _style.paddingContent,
      decoration: BoxDecoration(
        color: _style.backgroundColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: _style.borderColor),
      ),
      child: Text(
        text,
        style: _style.textStyle,
      ),
    );
  }
}

class RibbonsProductStyle {
  RibbonsProductStyle({
    required this.textStyle,
    required this.backgroundColor,
    required this.borderColor,
    required this.paddingContent,
    required this.borderRadius,
  });

  final TextStyle textStyle;
  final Color backgroundColor;
  final Color borderColor;
  final EdgeInsets paddingContent;
  final BorderRadius borderRadius;

  static RibbonsProductStyle defaultStyle() => RibbonsProductStyle(
        textStyle: OmniTypographyFoundation.bold8WhiteFFFFFF,
        backgroundColor: ColorsOmni.redFF1335,
        borderColor: ColorsOmni.redFF1335,
        paddingContent: const EdgeInsets.all(2.5),
        borderRadius: BorderRadius.circular(8),
      );

  ///Copy with
  RibbonsProductStyle copyWith({
    TextStyle? textStyle,
    Color? backgroundColor,
    Color? borderColor,
    EdgeInsets? paddingContent,
    BorderRadius? borderRadius,
  }) {
    return RibbonsProductStyle(
      textStyle: textStyle ?? this.textStyle,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      paddingContent: paddingContent ?? this.paddingContent,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
