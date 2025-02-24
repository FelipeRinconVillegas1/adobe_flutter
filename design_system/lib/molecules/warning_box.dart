import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';

class WarningBox extends StatelessWidget {
  const WarningBox({
    super.key,
    required this.leadingIcon,
    this.styleWarningBox,
    this.onTap,
    this.child,
    this.children = const [],
  });

  final Widget? child;
  final List<TextSpan> children;
  final Widget? leadingIcon;
  final WarningBoxStyle? styleWarningBox;
  final GestureTapCallback? onTap;

  WarningBoxStyle get style => styleWarningBox ?? WarningBoxStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: style.outerPadding ?? const EdgeInsets.all(0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: style.borderRadius ?? const BorderRadius.all(Radius.circular(4)),
            color: style.backgroundColor,
            border: style.border,
            boxShadow: style.boxShadow,
          ),
          child: Row(
            children: [
              Padding(padding: const EdgeInsets.symmetric(horizontal: 10), child: leadingIcon),
              Flexible(
                child: Padding(
                  padding: style.textPadding ?? const EdgeInsets.only(top: 12,bottom: 12,right: 8),
                  child: children.isNotEmpty
                      ? RichText(text: TextSpan(style: style.richSpanStyle, children: children))
                      : child,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WarningBoxStyle {
  final Color? backgroundColor;
  final Border? border;
  final TextStyle? richSpanStyle;
  final BorderRadius? borderRadius;
  final EdgeInsets? textPadding;
  final EdgeInsets? outerPadding;
  final List<BoxShadow>? boxShadow;

  const WarningBoxStyle({
    this.backgroundColor,
    this.border,
    this.richSpanStyle,
    this.outerPadding,
    this.borderRadius,
    this.textPadding,
    this.boxShadow,
  });

  factory WarningBoxStyle.defaultStyle() => WarningBoxStyle(
        backgroundColor: ColorsOmni.orangeFFF9E8,
        outerPadding: const EdgeInsets.symmetric(horizontal: 16),
        border: Border.all(color: ColorsOmni.orangeF47100, strokeAlign: 1),
        richSpanStyle: OmniTypographyFoundation.gothamBold14OrangeF47100.copyWith(letterSpacing: 0, height: 1.16),
      );

  factory WarningBoxStyle.infoGrayStyle() => WarningBoxStyle(
        boxShadow: [
          BoxShadow(
            color: ColorsOmni.black.withOpacity(0.29),
            spreadRadius: 0,
            blurRadius: 6,
            offset: const Offset(0, 0),
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        backgroundColor: ColorsOmni.grayF5F5F5,
      );

  ///create copywith
  WarningBoxStyle copyWith({
    Color? backgroundColor,
    Border? border,
    TextStyle? richSpanStyle,
    EdgeInsets? outerPadding,
    BorderRadius? borderRadius,
    EdgeInsets? textPadding,
    List<BoxShadow>? boxShadow,
  }) {
    return WarningBoxStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      border: border ?? this.border,
      richSpanStyle: richSpanStyle ?? this.richSpanStyle,
      outerPadding: outerPadding ?? this.outerPadding,
      borderRadius: borderRadius ?? this.borderRadius,
      textPadding: textPadding ?? this.textPadding,
      boxShadow: boxShadow ?? this.boxShadow,
    );
  }
}

class IconInfoInBox extends StatelessWidget {
  const IconInfoInBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const RotationTransition(
      turns: AlwaysStoppedAnimation(180 / 360),
      child: Icon(
        Icons.info_outline_rounded,
        grade: 90,
        color: ColorsOmni.orangeF47100,
      ),
    );
  }
}
