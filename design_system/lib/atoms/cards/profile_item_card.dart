import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/foundations/images.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileItemCard extends StatelessWidget {
  const ProfileItemCard(
      {super.key, required this.child, required this.name, this.nameStyle, this.paddingBetweenItem, this.onTap});

  final Widget child;
  final String name;
  final TextStyle? nameStyle;
  final void Function()? onTap;
  final double? paddingBetweenItem;

  TextStyle get _nameStyle => nameStyle ?? OmniTypographyFoundation.regular10Black161615;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(
                ImagesOmni.backgroundIconMenu.path,
                width: 70,
                height: 70,
              ),
              child,
            ],
          ),
          AutoSizeText(
            name,
            style: _nameStyle,
            textAlign: TextAlign.center,
            maxLines: 2,
            minFontSize: 12,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
