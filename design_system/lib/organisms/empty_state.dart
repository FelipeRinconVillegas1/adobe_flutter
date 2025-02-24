import 'package:design_system/atoms/data_models/omni_asset_image.dart';
import 'package:design_system/atoms/data_models/primary_button_data.dart';
import 'package:design_system/atoms/images/omni_asset_image.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({super.key, this.style, required this.param});

  final EmptyStateStyle? style;
  final EmptyStateParam param;

  EmptyStateStyle get _style => style ?? EmptyStateStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: _style.mainAxisAlignment,
        children: [
          SizedBox(
            height: _style.paddingTop ?? MediaQuery.sizeOf(context).height * 0.15,
          ),
          SizedBox.fromSize(size: _style.sizeImage, child: _style.image),
          Flexible(child: Text(param.title, style: _style.title, textAlign: TextAlign.center)),
          Flexible(child: Text(param.subtitle, style: _style.subtitle, textAlign: TextAlign.center)),
          if (param.primaryButtonData != null) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: PrimaryButton(data: param.primaryButtonData!),
            ),
          ],
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.23,
          ),
        ],
      ),
    );
  }
}

class EmptyStateStyle {
  final TextStyle title;
  final TextStyle subtitle;
  final double? paddingTop;
  final double? paddingBottom;
  final Widget image;
  final Size sizeImage;
  final MainAxisAlignment mainAxisAlignment;

  EmptyStateStyle(
      {required this.title,
      required this.subtitle,
      required this.image,
      required this.sizeImage,
      required this.paddingTop,
      required this.mainAxisAlignment,
      required this.paddingBottom});

  factory EmptyStateStyle.defaultStyle() {
    return EmptyStateStyle(
        paddingBottom: null,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        paddingTop: null,
        sizeImage: Size(180.h, 140.w),
        title: OmniTypographyFoundation.regular24Grey707070,
        subtitle: OmniTypographyFoundation.medium16Grey949091,
        image: OmniAssetImage(
            data: OmniAssetImageData(widthImage: 0, heightImage: 0, path: OmniIcons.noItemsIcon.pathAsset)));
  }

  //Copy with
  EmptyStateStyle copyWith({
    TextStyle? title,
    TextStyle? subtitle,
    Widget? image,
    Size? sizeImage,
    double? paddingTop,
    double? paddingBottom,
    MainAxisAlignment? mainAxisAlignment,
  }) {
    return EmptyStateStyle(
      mainAxisAlignment: mainAxisAlignment ?? this.mainAxisAlignment,
      paddingBottom: paddingBottom ?? this.paddingBottom,
      paddingTop: paddingTop ?? this.paddingTop,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      image: image ?? this.image,
      sizeImage: sizeImage ?? this.sizeImage,
    );
  }
}

class EmptyStateParam {
  final String title;
  final String subtitle;
  final PrimaryButtonData? primaryButtonData;

  EmptyStateParam({required this.title, required this.subtitle, required this.primaryButtonData});
}
