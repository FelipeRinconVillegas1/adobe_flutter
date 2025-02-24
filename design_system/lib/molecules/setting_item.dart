import 'package:design_system/foundations/export.dart';
import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({super.key, required this.param, this.style});

  final SettingItemStyle? style;
  final SettingItemParam param;

  SettingItemStyle get _style => style ?? SettingItemStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: _style.backgroundColor,
        padding: _style.padding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(param.mainText, style: _style.mainTextStyle),
                Visibility(visible: param.subText.isNotEmpty, child: Text(param.subText, style: _style.subTextStyle)),
              ],
            ),
            param.action,
          ],
        ));
  }
}

class SettingItemParam {
  final String mainText;
  final String subText;
  final Widget action;

  const SettingItemParam({
    required this.mainText,
    this.subText = '',
    this.action = const SizedBox.shrink(),
  });
}

class SettingItemStyle {
  final Color backgroundColor;
  final TextStyle mainTextStyle;
  final TextStyle subTextStyle;
  final EdgeInsets padding;

  const SettingItemStyle({
    required this.backgroundColor,
    required this.mainTextStyle,
    required this.subTextStyle,
    required this.padding,
  });

  //CopyWith
  SettingItemStyle copyWith({
    Color? backgroundColor,
    TextStyle? mainTextStyle,
    TextStyle? subTextStyle,
    EdgeInsets? padding,
  }) {
    return SettingItemStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      mainTextStyle: mainTextStyle ?? this.mainTextStyle,
      subTextStyle: subTextStyle ?? this.subTextStyle,
      padding: padding ?? this.padding,
    );
  }

  //Default Style
  SettingItemStyle.defaultStyle()
      : this(
          backgroundColor: ColorsOmni.white,
          mainTextStyle: OmniTypographyFoundation.regular15Grey5B636C,
          subTextStyle: OmniTypographyFoundation.regular13Grey949091,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
        );
}
