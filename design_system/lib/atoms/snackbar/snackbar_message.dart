import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:design_system/atoms/icons/primary_svg_icon_asset.dart';
import 'package:design_system/foundations/export.dart';
import 'package:design_system/foundations/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum TypeSnackBar { error, success }

enum TypeSnackBarStyle { styleSuccess1, styleSuccess2, styleError1, styleError2, styleWarning1, styleWarning2 }

SnackBar snackBarMessage(
    {required String message,
    TypeSnackBarStyle? typeSnackBarStyle,
    SnackBarMessageStyle? style,
    Duration duration = const Duration(milliseconds: 4000)}) {
  SnackBarMessageStyle style_;

  if (style != null) {
    style_ = style;
  } else {
    switch (typeSnackBarStyle) {
      case TypeSnackBarStyle.styleSuccess1:
        style_ = SnackBarMessageStyle.styleSuccess1();
        break;
      case TypeSnackBarStyle.styleSuccess2:
        style_ = SnackBarMessageStyle.styleSuccess2();
        break;
      case TypeSnackBarStyle.styleError1:
        style_ = SnackBarMessageStyle.styleError1();
        break;
      case TypeSnackBarStyle.styleError2:
        style_ = SnackBarMessageStyle.styleError2();
        break;
      case TypeSnackBarStyle.styleWarning1:
        style_ = SnackBarMessageStyle.styleWarning1();
        break;
      case TypeSnackBarStyle.styleWarning2:
        style_ = SnackBarMessageStyle.styleWarning2();
        break;
      default:
        style_ = SnackBarMessageStyle.defaultStyle();
        break;
    }
  }

  Widget getIconByStyle() {
    switch (typeSnackBarStyle) {
      case TypeSnackBarStyle.styleSuccess1:
      case TypeSnackBarStyle.styleSuccess2:
        return const PrimarySvgIconAsset(
          data: PrimarySvgIconData(
            icon: OmniIcons.successSnackBar,
          ),
        );
      case TypeSnackBarStyle.styleError1:
      case TypeSnackBarStyle.styleError2:
        return const PrimarySvgIconAsset(
          data: PrimarySvgIconData(
            icon: OmniIcons.errorSnackBar,
          ),
        );
      default:
        return const PrimarySvgIconAsset(
          data: PrimarySvgIconData(icon: OmniIcons.logoS99, height: 20),
        );
    }
  }

  return SnackBar(
    duration: duration,
    content: Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(0, 4), // changes position of shadow
            ),
          ],
          border: Border.all(color: style_.borderColor, width: style_.borderWidth),
          color: style_.backgroundColor,
          borderRadius: BorderRadius.circular(style_.borderRadius)),
      margin: EdgeInsets.fromLTRB(0, 0, 0, style_.marginBottom),
      child: Padding(
        padding: EdgeInsets.all(style_.padding),
        child: Row(
          children: [
            getIconByStyle(),
            const SizedBox(width: 12),
            Flexible(child: Text(message, style: style_.textStyle)),
          ],
        ),
      ),
    ),
    backgroundColor: Colors.transparent,
    behavior: SnackBarBehavior.floating,
    dismissDirection: DismissDirection.horizontal,
    elevation: 0,
  );
}

class SnackBarMessageStyle {
  final TextStyle textStyle;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final double borderRadius;
  final double padding;
  final double marginBottom;

  const SnackBarMessageStyle(
      {required this.textStyle,
      required this.backgroundColor,
      required this.borderRadius,
      required this.borderColor,
      required this.borderWidth,
      required this.padding,
      required this.marginBottom});

  SnackBarMessageStyle.defaultStyle()
      : textStyle = OmniTypographyFoundation.regular12Black454545.copyWith(fontWeight: FontWeight.w600),
        backgroundColor = ColorsOmni.white,
        borderColor = ColorsOmni.gray,
        borderWidth = 0.4,
        borderRadius = 15.r,
        padding = 8,
        marginBottom = 70.h;

  SnackBarMessageStyle.styleError1()
      : textStyle = OmniTypographyFoundation.regular12Black454545,
        backgroundColor = ColorsOmni.redLightSnackBar,
        borderColor = ColorsOmni.redSnackBar,
        borderWidth = 1,
        borderRadius = 15.r,
        padding = 8,
        marginBottom = 70.h;

  SnackBarMessageStyle.styleError2()
      : textStyle = OmniTypographyFoundation.regular12Black454545,
        backgroundColor = ColorsOmni.white,
        borderColor = ColorsOmni.redSnackBar,
        borderWidth = 1,
        borderRadius = 15.r,
        padding = 8,
        marginBottom = 70.h;

  SnackBarMessageStyle.styleSuccess1()
      : textStyle = OmniTypographyFoundation.regular12Black454545,
        backgroundColor = ColorsOmni.greenLightSnackBar,
        borderColor = ColorsOmni.greenLightSnackBar,
        borderWidth = 1,
        borderRadius = 15.r,
        padding = 8,
        marginBottom = 70.h;

  SnackBarMessageStyle.styleSuccess2()
      : textStyle = OmniTypographyFoundation.regular12Black454545,
        backgroundColor = ColorsOmni.white,
        borderColor = ColorsOmni.greenSnackBar,
        borderWidth = 1,
        borderRadius = 15.r,
        padding = 8,
        marginBottom = 70.h;

  SnackBarMessageStyle.styleWarning1()
      : textStyle = OmniTypographyFoundation.regular12Black454545,
        backgroundColor = ColorsOmni.yellowLightSnackBar,
        borderColor = ColorsOmni.yellowSnackBar,
        borderWidth = 1,
        borderRadius = 15.r,
        padding = 8,
        marginBottom = 70.h;

  SnackBarMessageStyle.styleWarning2()
      : textStyle = OmniTypographyFoundation.regular12Black454545,
        backgroundColor = ColorsOmni.white,
        borderColor = ColorsOmni.yellowSnackBar,
        borderWidth = 1,
        borderRadius = 15.r,
        padding = 8,
        marginBottom = 70.h;


  SnackBarMessageStyle copyWith({
    TextStyle? textStyle,
    Color? backgroundColor,
    Color? borderColor,
    double? borderWidth,
    double? borderRadius,
    double? padding,
    double? marginBottom,
  }) {
    return SnackBarMessageStyle(
      textStyle: textStyle ?? this.textStyle,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      borderWidth: borderWidth ?? this.borderWidth,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      marginBottom: marginBottom ?? this.marginBottom,
    );
  }
}
