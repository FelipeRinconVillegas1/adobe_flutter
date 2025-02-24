import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:design_system/atoms/icons/primary_svg_icon_asset.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:design_system/foundations/icons.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RedirectWhatsapp extends StatelessWidget {
  const RedirectWhatsapp({super.key, this.text = '', this.onTap, this.style});

  final String text;
  final Function? onTap;
  final RedirectWhatsappStyle? style;

  RedirectWhatsappStyle get _style => style ?? RedirectWhatsappStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap?.call(),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsOmni.transparent,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: ColorsOmni.silverGrey, width: 0.5),
        ),
        child: Padding(
          padding: _style.innerPadding,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: _style.mainAxisAlignment,
            children: [
              PrimarySvgIconAsset(
                data: PrimarySvgIconData(
                  icon: OmniIcons.whatsapp,
                  width: _style.iconSize,
                  height: _style.iconSize,
                ),
              ),
              SizedBox(width: _style.separatorWidth),
              Flexible(
                child: AutoSizeText(
                  text,
                  maxLines: 1,
                  minFontSize: 8,
                  overflow: TextOverflow.ellipsis,
                  style: OmniTypographyFoundation.semiBold12Black292a2c,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RedirectWhatsappStyle {
  final TextStyle textStyle;
  final EdgeInsets innerPadding;
  final MainAxisAlignment mainAxisAlignment;
  final double separatorWidth;
  final double iconSize;

  RedirectWhatsappStyle({
    required this.textStyle,
    required this.innerPadding,
    required this.mainAxisAlignment,
    required this.separatorWidth,
    required this.iconSize,
  });

  factory RedirectWhatsappStyle.defaultStyle() {
    return RedirectWhatsappStyle(
      textStyle: OmniTypographyFoundation.semiBold12Black292a2c,
      innerPadding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
      mainAxisAlignment: MainAxisAlignment.center,
      separatorWidth: 8,
      iconSize: 22,
    );
  }

  factory RedirectWhatsappStyle.orderStyle({
    TextStyle? textStyle,
    EdgeInsets? innerPadding,
    double? separatorWidth,
    double? iconSize,
  }) {
    return RedirectWhatsappStyle(
      textStyle: textStyle ?? OmniTypographyFoundation.semiBold12Black000000.copyWith(height: 1.2),
      innerPadding: innerPadding ?? EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.4),
      mainAxisAlignment: MainAxisAlignment.center,
      separatorWidth: separatorWidth ?? 8,
      iconSize: iconSize ?? 22,
    );
  }
}
