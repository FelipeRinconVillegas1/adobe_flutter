import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';

class CommonHeader extends StatelessWidget {
  const CommonHeader({super.key, this.style, required this.param});

  final CommonHeaderStyle? style;
  final CommonHeaderParam param;

  CommonHeaderStyle get _style => style ?? CommonHeaderStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () => param.onTapIconLeft?.call(),
              child: _style.iconLeft ?? const SizedBox(),
            ),
            const SizedBox(width: 8),
            InkWell(onTap: () => param.onTapTextLeft?.call(), child: Text(param.textLeft, style: _style.textStyleLeft)),
          ],
        ),
        Row(
          children: [
            InkWell(
                onTap: () => param.onTapTextRight?.call(),
                child: Text(param.textRight ?? '', style: _style.textStyleRight)),
            _style.iconRight ?? const SizedBox(),
          ],
        )
      ],
    );
  }
}

class CommonHeaderParam {
  final String textLeft;
  final String? textRight;
  final Function()? onTapIconLeft;
  final Function()? onTapTextLeft;
  final Function()? onTapTextRight;

  CommonHeaderParam({
    required this.textLeft,
    required this.onTapIconLeft,
    this.onTapTextLeft,
    this.onTapTextRight,
    this.textRight,
  });
}

class CommonHeaderStyle {
  final TextStyle textStyleLeft;
  final TextStyle textStyleRight;

  final Widget? iconRight;
  final Widget? iconLeft;

  CommonHeaderStyle({
    required this.textStyleLeft,
    required this.textStyleRight,
    required this.iconRight,
    required this.iconLeft,
  });

  factory CommonHeaderStyle.defaultDisabledStyle() {
    return CommonHeaderStyle(
      textStyleLeft: OmniTypographyFoundation.bold22SecondaryBlack000000,
      textStyleRight: OmniTypographyFoundation.bold12GreyB7B7B7,
      iconRight: null,
      iconLeft: const Icon(
        Icons.arrow_back,
        color: ColorsOmni.black161615,
        size: 28,
      ),
    );
  }

  factory CommonHeaderStyle.defaultStyle() {
    return CommonHeaderStyle(
      textStyleLeft: OmniTypographyFoundation.bold22SecondaryBlack000000,
      textStyleRight: OmniTypographyFoundation.semiBold12RedFF001D,
      iconRight: null,
      iconLeft: const Icon(
        Icons.arrow_back,
        color: ColorsOmni.black161615,
        size: 28,
      ),
    );
  }

  CommonHeaderStyle copyWith({
    TextStyle? textStyleLeft,
    TextStyle? textStyleRight,
    Widget? iconRight,
    Widget? iconLeft,
  }) {
    return CommonHeaderStyle(
      textStyleLeft: textStyleLeft ?? this.textStyleLeft,
      textStyleRight: textStyleRight ?? this.textStyleRight,
      iconRight: iconRight ?? this.iconRight,
      iconLeft: iconLeft ?? this.iconLeft,
    );
  }

}
