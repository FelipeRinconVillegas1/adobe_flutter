import 'package:design_system/atoms/buttons/primary_button.dart';
import 'package:design_system/atoms/data_models/primary_button_data.dart';
import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:design_system/atoms/icons/primary_svg_icon_asset.dart';
import 'package:design_system/foundations/export.dart';
import 'package:design_system/foundations/icons.dart';
import 'package:flutter/material.dart';

class ShowAddressSelected extends StatelessWidget {
  const ShowAddressSelected(this.param, {super.key, this.style});

  final ShowAddressSelectedParam param;

  final ShowAddressSelectedStyle? style;

  ShowAddressSelectedStyle get _style => style ?? ShowAddressSelectedStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _style.backGroundColor,
      padding: _style.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PrimarySvgIconAsset(
              data: PrimarySvgIconData(
            icon: _style.icon,
            colorFilter: const ColorFilter.mode(ColorsOmni.red, BlendMode.srcIn),
            height: 28,
            width: 28,
          )),
          const SizedBox(width: 14),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                param.title,
                style: _style.titleTextStyle,
              ),
              const SizedBox(height: 4),
              Text(param.description, style: _style.descriptionTextStyle),
            ],
          )),
          const SizedBox(width: 14),
          if (param.changeButtonData != null) ...[
            PrimaryButton(
              data: param.changeButtonData!.copyWith(
                  radius: 24,
                  height: 27,
                  activeColor: _style.activeColorChangeButton,
                  activeTextStyle: _style.textStyleChangeButton),
            )
          ]
        ],
      ),
    );
  }
}

class ShowAddressSelectedStyle {
  final TextStyle titleTextStyle;
  final TextStyle descriptionTextStyle;
  final OmniIcons icon;
  final EdgeInsetsGeometry? padding;
  final Color activeColorChangeButton;
  final Color backGroundColor;
  final TextStyle textStyleChangeButton;

  ShowAddressSelectedStyle(
      {required this.icon,
      required this.titleTextStyle,
      required this.descriptionTextStyle,
      required this.padding,
      required this.activeColorChangeButton,
      required this.textStyleChangeButton,
      required this.backGroundColor});

  factory ShowAddressSelectedStyle.defaultStyle() {
    return ShowAddressSelectedStyle(
        backGroundColor: ColorsOmni.white,
        activeColorChangeButton: ColorsOmni.lightPink,
        textStyleChangeButton: OmniTypographyFoundation.medium12PrimaryRedFF001D,
        padding: const EdgeInsets.all(14),
        icon: OmniIcons.locationOutline,
        titleTextStyle: OmniTypographyFoundation.medium14Grey707070,
        descriptionTextStyle: OmniTypographyFoundation.medium13Grey5B636C);
  }
}

class ShowAddressSelectedParam {
  final PrimaryButtonData? changeButtonData;
  final String title;
  final String description;

  ShowAddressSelectedParam({
    required this.title,
    required this.description,
    this.changeButtonData,
  });
}
