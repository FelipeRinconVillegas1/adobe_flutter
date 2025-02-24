import 'package:design_system/foundations/colors.dart';
import 'package:flutter/cupertino.dart';

class SimpleSwitch extends StatelessWidget {
  const SimpleSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.style,
  });

  final bool value;
  final ValueChanged<bool> onChanged;

  final SimpleSwitchStyle? style;

  SimpleSwitchStyle get _style => style ?? SimpleSwitchStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      thumbColor: _style.activeColor,
      value: value,
      activeColor: _style.activeTrackColor,
      onChanged: onChanged,
      focusColor: _style.borderColor,
    );
  }
}

class SimpleSwitchStyle {
  final Color activeColor;
  final Color activeTrackColor;
  final Color borderColor;

  const SimpleSwitchStyle({
    this.activeColor = ColorsOmni.white,
    this.activeTrackColor = ColorsOmni.green,
    this.borderColor = ColorsOmni.green,
  });

  SimpleSwitchStyle copyWith({
    Color? activeColor,
    Color? activeTrackColor,
    Color? borderColor,
  }) {
    return SimpleSwitchStyle(
      activeColor: activeColor ?? this.activeColor,
      activeTrackColor: activeTrackColor ?? this.activeTrackColor,
      borderColor: borderColor ?? this.borderColor,
    );
  }

  //Default Style
  SimpleSwitchStyle.defaultStyle()
      : this(
          activeColor: ColorsOmni.white,
          activeTrackColor: ColorsOmni.green,
          borderColor: ColorsOmni.green,
        );
}
