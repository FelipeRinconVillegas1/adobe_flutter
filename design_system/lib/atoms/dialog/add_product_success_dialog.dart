import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:design_system/atoms/icons/primary_svg_icon_asset.dart';
import 'package:design_system/foundations/export.dart';
import 'package:design_system/foundations/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

showSuccessAddProductOmniDialog(
        {required BuildContext context,
        required String message,
        Color barrierColor = ColorsOmni.black60,
        double opacity = 0.3}) =>
    showDialog(
        barrierDismissible: false,
        barrierColor: barrierColor.withOpacity(opacity),
        context: context,
        builder: (contextL) {
          return Center(
            child: Container(
              width: 160.w,
              decoration: BoxDecoration(
                color: ColorsOmni.primaryRedWith50PercentOpacity,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const PrimarySvgIconAsset(
                        data: PrimarySvgIconData(
                            icon: OmniIcons.addToCartSuccess,
                            colorFilter: ColorFilter.mode(ColorsOmni.white, BlendMode.srcIn))),
                    const SizedBox(height: 10),
                    Flexible(
                        child: Text(
                      message,
                      style: OmniTypographyFoundation.medium14WhiteFFFFFF,
                      textAlign: TextAlign.center,
                    )),
                  ],
                ),
              ),
            ),
          );
        });
