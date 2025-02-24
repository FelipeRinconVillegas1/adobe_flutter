import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key, this.style, required this.param});

  final CartItemListStyle? style;
  final CartItemListParam param;

  CartItemListStyle get _style => style ?? CartItemListStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: param.itemCount > 0,
      child: Container(
        decoration: _style.decoration,
        padding: _style.padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _style.icon,
                    const SizedBox(width: 8),
                    Flexible(child: Text(param.titleList, style: _style.textStyleTitleList)),
                  ],
                ),
                if (_style.iconSuffix != null) _style.iconSuffix!,
              ],
            ),
            _style.separatorTitle,
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: param.itemBuilder,
                padding: EdgeInsets.zero,
                separatorBuilder: (context, index) => _style.separator,
                itemCount: param.itemCount)
          ],
        ),
      ),
    );
  }
}

class CartItemListParam {
  final String titleList;
  final Widget? Function(BuildContext, int) itemBuilder;
  final int itemCount;

  CartItemListParam({required this.titleList, required this.itemBuilder, required this.itemCount});

  CartItemListParam copyWith({
    String? titleList,
    String? subtitleList,
    Widget? Function(BuildContext, int)? itemBuilder,
    int? itemCount,
  }) {
    return CartItemListParam(
      titleList: titleList ?? this.titleList,
      itemBuilder: itemBuilder ?? this.itemBuilder,
      itemCount: itemCount ?? this.itemCount,
    );
  }
}

class CartItemListStyle {
  final TextStyle textStyleTitleList;
  final TextStyle textStyleSubtitleList;
  final Widget icon;
  final Widget? iconSuffix;
  final Widget separator;
  final Widget separatorTitle;
  final EdgeInsets padding;
  final Decoration decoration;

  const CartItemListStyle({
    required this.textStyleTitleList,
    required this.textStyleSubtitleList,
    required this.icon,
    required this.separator,
    required this.separatorTitle,
    required this.padding,
    required this.decoration,
    this.iconSuffix,
  });

  static CartItemListStyle defaultStyle() {
    return CartItemListStyle(
      textStyleTitleList: OmniTypographyFoundation.bold14Black161615,
      textStyleSubtitleList: OmniTypographyFoundation.bold18SecondaryBlack000000,
      icon: const PrimarySvgIconAsset(
        data: PrimarySvgIconData(icon: OmniIcons.s99DigitsRed, width: 20, height: 20),
      ),
      separator: const CartItemDivider(),
      separatorTitle: const CartItemDivider(
        color: ColorsOmni.greyB7B7B7,
        height: 22,
        thickness: 0.2,
      ),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white, // This is the background color (white in this case)
        borderRadius: BorderRadius.circular(12), // The border radius with 12px equivalent
        boxShadow: const [
          BoxShadow(
            color: ColorsOmni.whiteRGBO000_016,
            blurRadius: 12,
          ),
        ],
      ),
    );
  }

  CartItemListStyle copyWith({
    TextStyle? textStyleTitleList,
    TextStyle? textStyleSubtitleList,
    Widget? icon,
    Widget? separator,
    Widget? separatorTitle,
    EdgeInsets? padding,
    Decoration? decoration,
    Widget? iconSuffix,
  }) {
    return CartItemListStyle(
      iconSuffix: iconSuffix ?? this.iconSuffix,
      textStyleTitleList: textStyleTitleList ?? this.textStyleTitleList,
      textStyleSubtitleList: textStyleSubtitleList ?? this.textStyleSubtitleList,
      icon: icon ?? this.icon,
      separator: separator ?? this.separator,
      separatorTitle: separatorTitle ?? this.separatorTitle,
      padding: padding ?? this.padding,
      decoration: decoration ?? this.decoration,
    );
  }
}
