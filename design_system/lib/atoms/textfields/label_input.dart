import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';

class LabelInput extends StatelessWidget {
  const LabelInput({
    super.key,
    required this.text,
    this.textRequired,
    this.isRequired = false,
    this.styleLabel,
  });

  final String text;
  final String? textRequired;
  final bool isRequired;

  final LabelInputStyle? styleLabel;

  LabelInputStyle get _style => styleLabel ?? LabelInputStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        if (_style.icon != null) _style.icon!,
        const SizedBox(width: 2),
        Expanded(
          child: AutoSizeText.rich(
            TextSpan(
              text: text,
              style: _style.styleLabel,
              children: [
                if (isRequired)
                  TextSpan(
                    text: textRequired ?? '*',
                    style: _style.labelRequiredTextStyle,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class LabelInputStyle {
  final Widget? icon;
  final TextStyle styleLabel;
  final TextStyle labelRequiredTextStyle;

  const LabelInputStyle({
    this.icon,
    required this.styleLabel,
    required this.labelRequiredTextStyle,
  });

  LabelInputStyle copyWith({
    Widget? icon,
    TextStyle? styleLabel,
    TextStyle? labelRequiredTextStyle,
  }) {
    return LabelInputStyle(
      icon: icon ?? this.icon,
      styleLabel: styleLabel ?? this.styleLabel,
      labelRequiredTextStyle: labelRequiredTextStyle ?? this.labelRequiredTextStyle,
    );
  }

  static LabelInputStyle defaultStyle() {
    return LabelInputStyle(
      styleLabel: OmniTypographyFoundation.medium14SecondaryBlack000000,
      labelRequiredTextStyle: OmniTypographyFoundation.medium14PrimaryRedFF001D,
    );
  }
}
