import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/foundations/export.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemChipTip extends StatelessWidget {
  const ItemChipTip(
      {super.key,
      required this.text,
      required this.isActive,
      this.onTap,
      this.style,
      this.iconLeading,
      this.iconLeadingUnchecked});

  final String text;
  final bool isActive;
  final Function()? onTap;
  final IconData? iconLeading;
  final IconData? iconLeadingUnchecked;

  final ItemChipTipStyle? style;

  ItemChipTipStyle get _style => style ?? ItemChipTipStyle.defaultStyle();


  Widget getContentByShippingStyle() {
    if(_style.constructorType == ConstructorType.chooseShippingMethodStyle) {
      return Padding(
        padding: _style.paddingContent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: AutoSizeText(
                text,
                maxLines: 1,
                style: isActive ? _style.textStyleActive : _style.textStyle,
              ),
            ),
            if (iconLeading != null)
              Icon(isActive ? iconLeading! : iconLeadingUnchecked ?? iconLeading!,
                  color: isActive ? _style.iconLeadingActiveColor : _style.iconLeadingColor,
                  size: _style.iconLeadingSize?.w),

          ],
        ),
      );
    } else {
      return Container(
        width: _style.size?.width,
        height: _style.size?.height,
        decoration: BoxDecoration(
          color: isActive ? _style.backgroundActiveColor : _style.backgroundColor,
          borderRadius: BorderRadius.circular(_style.borderRadius),
          border: Border.all(
            width: _style.borderWidth,
            color: isActive ? _style.borderActiveColor : _style.borderColor,
          ),
        ),
        child: Padding(
          padding: _style.paddingContent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (iconLeading != null)
                Icon(isActive ? iconLeading! : iconLeadingUnchecked ?? iconLeading!,
                    color: isActive ? _style.iconLeadingActiveColor : _style.iconLeadingColor,
                    size: _style.iconLeadingSize?.w),
              SizedBox(width: iconLeading != null ? 10.w : 0),
              Flexible(
                child: Center(
                  child: AutoSizeText(
                    text,
                    maxLines: 1,
                    style: isActive ? _style.textStyleActive : _style.textStyle,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: getContentByShippingStyle(),
    );
  }
}

enum ConstructorType {
  chooseShippingMethodStyle,
  defaultStyle,
  addressStyle,
  registerStyle
}


class ItemChipTipStyle {
  final TextStyle textStyle;
  final TextStyle textStyleActive;
  final Color backgroundColor;
  final Color backgroundActiveColor;
  final Color borderColor;
  final Color borderActiveColor;
  final Color iconLeadingColor;
  final Color iconLeadingActiveColor;
  final double? iconLeadingSize;
  final double borderRadius;
  final Size? size;
  final EdgeInsetsGeometry paddingContent;
  final double borderWidth;
  final ConstructorType constructorType;

  const ItemChipTipStyle({
    this.size,
    required this.borderRadius,
    required this.borderWidth,
    required this.textStyleActive,
    required this.textStyle,
    required this.backgroundColor,
    required this.backgroundActiveColor,
    required this.borderColor,
    required this.borderActiveColor,
    required this.iconLeadingColor,
    required this.iconLeadingActiveColor,
    this.iconLeadingSize,
    required this.paddingContent,
    required this.constructorType,
  });

  ///Default style
  factory ItemChipTipStyle.chooseShippingMethodStyle() {
    return ItemChipTipStyle(
      size: null,
      borderWidth: 1,
      borderRadius: 16.r,
      textStyle: OmniTypographyFoundation.medium18Black161615,
      textStyleActive: OmniTypographyFoundation.medium18Black161615,
      backgroundColor: ColorsOmni.white,
      backgroundActiveColor: ColorsOmni.white,
      borderColor: ColorsOmni.black70,
      borderActiveColor: ColorsOmni.primaryRed,
      iconLeadingColor: ColorsOmni.black70,
      iconLeadingActiveColor: ColorsOmni.primaryRed,
      iconLeadingSize: 28,
      paddingContent: EdgeInsets.zero,
      constructorType: ConstructorType.chooseShippingMethodStyle,
    );
  }

  ///Default style
  factory ItemChipTipStyle.defaultStyle() {
    return ItemChipTipStyle(
      size: Size(60.w, 40.w),
      borderWidth: 1,
      borderRadius: 16.r,
      textStyle: OmniTypographyFoundation.regular16Grey5B636C,
      textStyleActive: OmniTypographyFoundation.semiBold16PrimaryRedFF001D,
      backgroundColor: ColorsOmni.white,
      backgroundActiveColor: ColorsOmni.white,
      borderColor: ColorsOmni.black70,
      borderActiveColor: ColorsOmni.primaryRed,
      iconLeadingColor: ColorsOmni.black70,
      iconLeadingActiveColor: ColorsOmni.primaryRed,
      iconLeadingSize: 24,
      paddingContent: EdgeInsets.zero,
      constructorType: ConstructorType.defaultStyle,
    );
  }

  factory ItemChipTipStyle.addressStyle() {
    return ItemChipTipStyle(
      borderRadius: 16.r,
      borderWidth: 0.5,
      textStyle: OmniTypographyFoundation.medium14SecondaryBlack000000,
      textStyleActive: OmniTypographyFoundation.semiBold16PrimaryRedFF001D,
      backgroundColor: ColorsOmni.white,
      backgroundActiveColor: ColorsOmni.white,
      borderColor: ColorsOmni.black70,
      borderActiveColor: ColorsOmni.primaryRed,
      iconLeadingColor: ColorsOmni.secondaryBlack,
      iconLeadingActiveColor: ColorsOmni.primaryRed,
      paddingContent: EdgeInsets.symmetric(horizontal: 7.w, vertical: 7.h),
      constructorType: ConstructorType.addressStyle,
    );
  }

  factory ItemChipTipStyle.registerStyle() {
    return ItemChipTipStyle(
      borderRadius: 16,
      borderWidth: 1,
      textStyle: OmniTypographyFoundation.regular14SecondaryBlack000000,
      textStyleActive: OmniTypographyFoundation.regular14SecondaryBlack000000,
      backgroundColor: ColorsOmni.white,
      backgroundActiveColor: ColorsOmni.white,
      borderColor: ColorsOmni.rosyPink,
      borderActiveColor: ColorsOmni.primaryRed,
      iconLeadingColor: ColorsOmni.grey707070,
      iconLeadingActiveColor: ColorsOmni.primaryRed,
      iconLeadingSize: 24,
      paddingContent: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
      constructorType: ConstructorType.registerStyle,
    );
  }

  ItemChipTipStyle copyWith(
      {double? borderRadius,
      TextStyle? textStyle,
      TextStyle? textStyleActive,
      Color? backgroundColor,
      Color? backgroundActiveColor,
      Color? borderColor,
      Color? borderActiveColor,
      Color? iconLeadingColor,
      Color? iconLeadingActiveColor,
      double? iconLeadingSize,
      EdgeInsetsGeometry? paddingContent,
        ConstructorType? constructorType,
      double? borderWidth,
      Size? size}) {
    return ItemChipTipStyle(
      constructorType: constructorType ?? this.constructorType,
      borderWidth: borderWidth ?? this.borderWidth,
      paddingContent: paddingContent ?? this.paddingContent,
      size: size ?? this.size,
      borderRadius: borderRadius ?? this.borderRadius,
      textStyleActive: textStyleActive ?? this.textStyleActive,
      textStyle: textStyle ?? this.textStyle,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      backgroundActiveColor: backgroundActiveColor ?? this.backgroundActiveColor,
      borderColor: borderColor ?? this.borderColor,
      borderActiveColor: borderActiveColor ?? this.borderActiveColor,
      iconLeadingColor: iconLeadingColor ?? this.iconLeadingColor,
      iconLeadingActiveColor: iconLeadingActiveColor ?? this.iconLeadingActiveColor,
      iconLeadingSize: iconLeadingSize ?? this.iconLeadingSize,
    );
  }
}
