import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:design_system/foundations/icons.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:design_system/atoms/icons/primary_svg_icon_asset.dart';

enum SocialButtonType { facebook, google, apple }

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.type, this.style, required this.param});

  /// Type social button  that you want to use SocialButtonType(facebook, google, apple)
  final SocialButtonType type;
  final SocialButtonParam param;

  /// If you want to change the style of the button, you can use this parameter
  final SocialButtonStyle? style;

  Widget _buildButton() {
    switch (type) {
      case SocialButtonType.facebook:
        return _SocialButtonBase(style: style ?? SocialButtonStyle.facebook(), param: param);
      case SocialButtonType.google:
        return _SocialButtonBase(style: style ?? SocialButtonStyle.google(), param: param);
      case SocialButtonType.apple:
        return _SocialButtonBase(style: style ?? SocialButtonStyle.apple(), param: param);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 44.w,
      child: _buildButton(),
    );
  }
}

class _SocialButtonBase extends StatelessWidget {
  const _SocialButtonBase({required this.style, required this.param});

  final SocialButtonStyle style;
  final SocialButtonParam param;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: param.onPressed,
      child: Container(
          decoration: BoxDecoration(
              color: style.backgroundColor,
              border: Border.all(color: style.borderColor ?? style.backgroundColor, width: 1.w),
              borderRadius: BorderRadius.circular(21.r)),
          child: Stack(
            children: [
              Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Center(child: Text(param.text, textAlign: TextAlign.center, style: style.textStyle)),
                  )),
              if (style.logo != null)
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: style.logo,
                  ),
                ),
            ],
          )),
    );
  }
}

class SocialButtonParam {
  final VoidCallback onPressed;
  final String text;

  SocialButtonParam({required this.onPressed, required this.text});
}

class SocialButtonStyle {
  final Color backgroundColor;
  final TextStyle textStyle;
  final Widget? logo;
  final Color? borderColor;

  SocialButtonStyle({required this.backgroundColor, required this.textStyle, this.logo, this.borderColor});

  factory SocialButtonStyle.facebook() {
    return SocialButtonStyle(
        logo: Icon(
          Icons.facebook,
          color: ColorsOmni.white,
          size: 24.w,
        ),
        backgroundColor: ColorsOmni.denimBlueLight,
        textStyle: OmniTypographyFoundation.bold14WhiteFFFFFF);
  }

  factory SocialButtonStyle.google() {
    return SocialButtonStyle(
        borderColor: ColorsOmni.black,
        logo: SizedBox(
          width: 22.w,
          child: const PrimarySvgIconAsset(
            data: PrimarySvgIconData(icon: OmniIcons.logoGoogle),
          ),
        ),
        backgroundColor: ColorsOmni.white,
        textStyle: OmniTypographyFoundation.bold14SecondaryBlack000000);
  }

  factory SocialButtonStyle.apple() {
    return SocialButtonStyle(
        logo: Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Icon(
            Icons.apple,
            color: ColorsOmni.white,
            size: 24.w,
          ),
        ),
        backgroundColor: ColorsOmni.black,
        textStyle: OmniTypographyFoundation.bold14WhiteFFFFFF);
  }
}
