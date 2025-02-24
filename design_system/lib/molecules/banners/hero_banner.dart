import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/atoms/export.dart';
import 'package:design_system/foundations/export.dart';
import 'package:design_system/tokens/sizes.dart';
import 'package:flutter/material.dart';

import '../../atoms/data_models/omni_image_network_data.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({super.key, required this.param, this.style});

  final HeroBannerStyle? style;
  final HeroBannerParam param;

  HeroBannerStyle get _style => style ?? HeroBannerStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: param.onTapBanner,
      behavior: HitTestBehavior.opaque,
      child: Container(
        decoration: const BoxDecoration(
          color: ColorsOmni.transparent,
        ),
        child: Stack(
          fit: StackFit.loose,
          children: [
            Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: OmniImageNetwork(
                  data: OmniImageNetworkData(
                    placeholder: _style.placeholder,
                    errorWidget: _style.errorWidget,
                    url: param.urlImage,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            if (param.title.isNotEmpty && param.description.isNotEmpty)
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  padding: _style.paddingContent,
                  width: _style.widthImage,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: AutoSizeText(
                          param.title,
                          style: _style.titleTextStyle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          minFontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Flexible(
                        child: AutoSizeText(
                          param.description,
                          style: _style.descriptionTextStyle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          minFontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: param.onTapButton,
                        child: Container(
                          padding: _style.paddingButton,
                          decoration: _style.buttonDecoration,
                          child: AutoSizeText(
                            param.textButton,
                            style: _style.buttonTextStyle,
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class HeroBannerParam {
  final String title;
  final String description;
  final String urlImage;
  final String textButton;

  final Function()? onTapButton;
  final Function() onTapBanner;

  HeroBannerParam({
    this.title = "",
    this.description = "",
    required this.urlImage,
    this.textButton = "",
    this.onTapButton,
    required this.onTapBanner,
  });
}

class HeroBannerStyle {
  final TextStyle titleTextStyle;
  final TextStyle descriptionTextStyle;
  final TextStyle buttonTextStyle;
  final Decoration buttonDecoration;
  final EdgeInsets paddingContent;

  final EdgeInsets paddingButton;
  final Widget placeholder;
  final Widget errorWidget;
  final double widthImage;

  HeroBannerStyle({
    required this.titleTextStyle,
    required this.descriptionTextStyle,
    required this.buttonTextStyle,
    required this.buttonDecoration,
    required this.paddingContent,
    required this.paddingButton,
    required this.placeholder,
    required this.widthImage,
    required this.errorWidget,
  });

  static HeroBannerStyle defaultStyle() => HeroBannerStyle(
        titleTextStyle: OmniTypographyFoundation.bold18White,
        descriptionTextStyle: OmniTypographyFoundation.regular14White.copyWith(height: 0.9, letterSpacing: 0),
        buttonTextStyle: OmniTypographyFoundation.bold11White,
        buttonDecoration: BoxDecoration(
          color: ColorsOmni.redFF1335,
          borderRadius: BorderRadius.circular(12),
        ),
        paddingButton: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
        paddingContent: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
        placeholder: Container(
          //height: OmniSizes.heightHeroBanner,
          width: OmniSizes.withImageHeroBanner,
          color: ColorsOmni.grey9A9B9E,
        ),
        errorWidget: Container(
          //height: OmniSizes.heightHeroBanner,
          width: OmniSizes.withImageHeroBanner,
          color: ColorsOmni.grey9A9B9E,
        ),
        widthImage: OmniSizes.withImageHeroBanner,
      );
}
