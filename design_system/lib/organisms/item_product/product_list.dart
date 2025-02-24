import 'package:design_system/tokens/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../foundations/typo.dart';

enum PositionedSubtitle { bottom, right }

class ProductList extends StatelessWidget {
  const ProductList({super.key, required this.param, this.style});

  final ProductListParam param;
  final ProductListStyle? style;

  ProductListStyle get _style => style ?? ProductListStyle.defaultStyle();

  Widget _separatorBuilder(BuildContext context, int index) {
    if (param.direction == Axis.horizontal) {
      return SizedBox(width: _style.separatorProducts);
    } else {
      return SizedBox(height: _style.separatorProducts);
    }
  }

  Widget positionedSubtitleWidget() {
    if (param.positionedSubtitle == PositionedSubtitle.bottom) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (param.title.isNotEmpty)
                Padding(
                  padding: _style.paddingTitle,
                  child: Text(param.title, style: _style.titleTextStyle),
                ),
              if (param.iconTitle != null) ...[
                param.iconTitle!,
              ],
            ],
          ),
          if (param.subtitle.isNotEmpty)
            Padding(
              padding: _style.paddingSubtitle,
              child: Text(param.subtitle, style: _style.subtitleTextStyle),
            ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (param.title.isNotEmpty)
                Padding(
                  padding: _style.paddingTitle,
                  child: Text(param.title, style: _style.titleTextStyle),
                ),
              if (param.iconTitle != null) ...[
                param.iconTitle!,
              ],
            ],
          ),
          if (param.subtitle.isNotEmpty)
            Padding(
              padding: _style.paddingSubtitle,
              child: Text(param.subtitle, style: _style.subtitleTextStyle),
            ),
        ],
      );
    }
  }

  Widget buildWidgetList() {
    if (param.direction == Axis.horizontal) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: positionedSubtitleWidget(),
          ),
          SizedBox(height: _style.separatorTitleAndProducts),
          SizedBox(
            height: param.direction == Axis.horizontal ? OmniSizes.sizeHeightHorizontalProductList : null,
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: param.itemBuilder,
              separatorBuilder: (ctx, index) => _separatorBuilder(ctx, index),
              itemCount: param.itemCount,
              scrollDirection: param.direction,
            ),
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (param.title.isNotEmpty)
                    Padding(
                      padding: _style.paddingTitle,
                      child: Text(param.title, style: _style.titleTextStyle),
                    ),
                  if (param.iconTitle != null) ...[
                    param.iconTitle!,
                  ],
                ],
              ),
              if (param.subtitle.isNotEmpty)
                Padding(
                  padding: _style.paddingSubtitle,
                  child: Text(param.subtitle, style: _style.subtitleTextStyle),
                ),
            ],
          ),
          SizedBox(height: _style.separatorTitleAndProducts),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: param.itemBuilder,
              separatorBuilder: (ctx, index) => _separatorBuilder(ctx, index),
              itemCount: param.itemCount,
              scrollDirection: param.direction,
            ),
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildWidgetList();
  }
}

class ProductListParam {
  final String title;
  final String subtitle;
  final Widget? iconTitle;
  final Axis direction;
  final PositionedSubtitle positionedSubtitle;

  final Widget? Function(BuildContext, int) itemBuilder;
  final int itemCount;

  ProductListParam({
    this.title = '',
    this.subtitle = '',
    this.iconTitle,
    this.positionedSubtitle = PositionedSubtitle.right,
    required this.direction,
    required this.itemBuilder,
    required this.itemCount,
  });
}

class ProductListStyle {
  final TextStyle titleTextStyle;
  final TextStyle subtitleTextStyle;
  final EdgeInsets paddingTitle;
  final EdgeInsets paddingSubtitle;

  final double separatorProducts;

  final double separatorTitleAndProducts;

  ProductListStyle({
    required this.titleTextStyle,
    required this.subtitleTextStyle,
    required this.paddingTitle,
    required this.paddingSubtitle,
    required this.separatorProducts,
    required this.separatorTitleAndProducts,
  });

  static ProductListStyle defaultStyle() => ProductListStyle(
        titleTextStyle: OmniTypographyFoundation.semiBold14SecondaryBlack000000,
        subtitleTextStyle: OmniTypographyFoundation.bold10RedEF1019,
        paddingTitle: EdgeInsets.zero,
        paddingSubtitle: const EdgeInsets.only(right: 12),
        separatorProducts: 4.w,
        separatorTitleAndProducts: 8.w,
      );

  static ProductListStyle verticalStyle() => ProductListStyle(
        titleTextStyle: OmniTypographyFoundation.semiBold14SecondaryBlack000000,
        subtitleTextStyle: OmniTypographyFoundation.bold10RedEF1019,
        paddingTitle: EdgeInsets.zero,
        paddingSubtitle: EdgeInsets.zero,
        separatorProducts: 4.w,
        separatorTitleAndProducts: 5.w,
      );

  //Copy with

  ProductListStyle copyWith({
    TextStyle? titleTextStyle,
    TextStyle? subtitleTextStyle,
    EdgeInsets? paddingTitle,
    EdgeInsets? paddingSubtitle,
    double? separatorProducts,
    double? separatorTitleAndProducts,
  }) {
    return ProductListStyle(
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      subtitleTextStyle: subtitleTextStyle ?? this.subtitleTextStyle,
      paddingTitle: paddingTitle ?? this.paddingTitle,
      paddingSubtitle: paddingSubtitle ?? this.paddingSubtitle,
      separatorProducts: separatorProducts ?? this.separatorProducts,
      separatorTitleAndProducts: separatorTitleAndProducts ?? this.separatorTitleAndProducts,
    );
  }
}
