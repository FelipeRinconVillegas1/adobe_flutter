import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:design_system/atoms/icons/primary_svg_icon_asset.dart';
import 'package:design_system/foundations/export.dart';
import 'package:design_system/foundations/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedBackFullPage extends StatelessWidget {
  const FeedBackFullPage({super.key, required this.style, required this.params});

  final FeedBackFullPageStyle style;
  final FeedBackFullPageParams params;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style.colorBackground,
      body: SafeArea(
        child: Container(
            margin: EdgeInsets.all(24.w),
            width: double.infinity,
            decoration: BoxDecoration(
              color: style.colorCenterContainer,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (style.iconTop != null)
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.h),
                          child: style.iconTop,
                        ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          params.textTitle,
                          style: style.textStyleTitle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 37.h),
                        child: Stack(
                          children: [
                            if (style.iconCenter99 != null)
                              Align(alignment: Alignment.topCenter, child: style.iconCenter99),
                            if (style.iconCenter != null)
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 50.h),
                                    child: style.iconCenter,
                                  )),
                            if (style.iconCenter2 != null)
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 50.h),
                                    child: style.iconCenter2,
                                  )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      onTap: params.onTapClose,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 32.h),
                        child: SizedBox(
                            height: 50,
                            child: Text(params.textClose, style: OmniTypographyFoundation.medium14PrimaryRedFF001D)),
                      ),
                    ))
              ],
            )),
      ),
    );
  }
}

class FeedBackFullPageParams {
  final String textClose;
  final String textTitle;
  final VoidCallback onTapClose;

  const FeedBackFullPageParams({required this.textClose, required this.textTitle, required this.onTapClose});
}

class FeedBackFullPageStyle {
  final TextStyle textStyleTitle;
  final Color colorBackground;
  final Color colorCenterContainer;
  final Widget? iconTop;
  final Widget? iconCenter;
  final Widget? iconCenter2;
  final Widget? iconCenter99;

  const FeedBackFullPageStyle({
    required this.textStyleTitle,
    required this.colorBackground,
    required this.colorCenterContainer,
    this.iconTop,
    this.iconCenter,
    this.iconCenter99,
    this.iconCenter2,
  });

  factory FeedBackFullPageStyle.errorStyle() {
    return FeedBackFullPageStyle(
        iconCenter: const PrimarySvgIconAsset(data: PrimarySvgIconData(icon: OmniIcons.s99CartError)),
        iconCenter99: const PrimarySvgIconAsset(
            data: PrimarySvgIconData(icon: OmniIcons.s99DigitsRed, color: ColorsOmni.white, height: 125, width: 240)),
        iconTop: const PrimarySvgIconAsset(data: PrimarySvgIconData(icon: OmniIcons.s99Error)),
        colorBackground: ColorsOmni.redFF001D,
        colorCenterContainer: ColorsOmni.pinkFFF0D9,
        textStyleTitle: OmniTypographyFoundation.bold16Black161615);
  }

  factory FeedBackFullPageStyle.successStyle() {
    return FeedBackFullPageStyle(
        iconCenter: const PrimarySvgIconAsset(data: PrimarySvgIconData(icon: OmniIcons.s99CartSuccess)),
        iconCenter99: const PrimarySvgIconAsset(
            data: PrimarySvgIconData(icon: OmniIcons.s99DigitsRed, height: 125, width: 240)),
        iconTop: const PrimarySvgIconAsset(data: PrimarySvgIconData(icon: OmniIcons.s99Success, height: 30, width: 30)),
        iconCenter2: const PrimarySvgIconAsset(data: PrimarySvgIconData(icon: OmniIcons.s99Success,height: 66,width: 66)),
        colorBackground: ColorsOmni.btnDisabled,
        colorCenterContainer: ColorsOmni.white,
        textStyleTitle: OmniTypographyFoundation.bold16Black161615);
  }

  factory FeedBackFullPageStyle.errorCartStyle() {
    return FeedBackFullPageStyle(
        iconCenter: const PrimarySvgIconAsset(data: PrimarySvgIconData(icon: OmniIcons.s99CartError)),
        iconCenter99: const PrimarySvgIconAsset(
            data: PrimarySvgIconData(icon: OmniIcons.s99DigitsRed, color: ColorsOmni.white, height: 125, width: 240)),
        iconTop: const PrimarySvgIconAsset(data: PrimarySvgIconData(icon: OmniIcons.s99Error)),
        colorBackground: ColorsOmni.redFF001D,
        colorCenterContainer: ColorsOmni.pinkFFF0D9,
        textStyleTitle: OmniTypographyFoundation.bold16Black161615);
  }
}
