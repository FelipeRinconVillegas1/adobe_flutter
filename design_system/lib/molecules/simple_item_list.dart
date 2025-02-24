import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../foundations/typo.dart';

class SimpleItemList extends StatelessWidget {
  const SimpleItemList({super.key, required this.param, this.style});

  final SimpleItemListParam param;
  final SimpleItemListStyle? style;

  SimpleItemListStyle get _style => style ?? SimpleItemListStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => param.onTap?.call(),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
      child: Padding(
        padding: _style.padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (param.widgetLeft != null) ...[
              Padding(
                padding: _style.paddingWidgetLeft,
                child: param.widgetLeft!,
              )
            ],
            if (param.iconLeft != null) ...[
              Padding(
                padding: _style.paddingWidgetIconLeft,
                child: param.iconLeft!,
              )
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Visibility(
                      visible: param.title.isNotEmpty,
                      child: Padding(
                          padding: _style.paddingTitle,
                          child: Column(
                            children: [
                              AutoSizeText(
                                param.title,
                                style: _style.titleStyle,
                              ),
                            ],
                          )),
                    ),
                  ),
                  Flexible(
                    child: Visibility(
                      visible: param.subTitle.isNotEmpty,
                      child: Padding(
                        padding: _style.paddingSubTitle,
                        child: AutoSizeText(
                          param.subTitle,
                          style: _style.subTitleStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (param.widgetRight != null) ...[
              Padding(
                padding: _style.paddingWidgetRight,
                child: param.widgetRight!,
              )
            ]
          ],
        ),
      ),
    );
  }
}

class SimpleItemListParam {
  final Widget? widgetLeft;
  final Widget? iconLeft;
  final String title;
  final String subTitle;
  final Widget? widgetRight;
  final Function()? onTap;

  SimpleItemListParam(
      {this.widgetLeft, this.iconLeft, this.title = '', this.subTitle = '', this.widgetRight, this.onTap});

  //Copy with
  SimpleItemListParam copyWith({
    Widget? widgetLeft,
    Widget? iconLeft,
    String? title,
    String? subTitle,
    Widget? widgetRight,
    Function()? onTap,
  }) {
    return SimpleItemListParam(
      widgetLeft: widgetLeft ?? this.widgetLeft,
      iconLeft: iconLeft ?? this.iconLeft,
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      widgetRight: widgetRight ?? this.widgetRight,
      onTap: onTap ?? this.onTap,
    );
  }
}

class SimpleItemListStyle {
  final TextStyle titleStyle;
  final TextStyle subTitleStyle;
  final EdgeInsets paddingWidgetLeft;
  final EdgeInsets paddingWidgetIconLeft;
  final EdgeInsets paddingWidgetRight;
  final EdgeInsets paddingTitle;
  final EdgeInsets paddingSubTitle;

  final EdgeInsets padding;

  SimpleItemListStyle(
      {required this.titleStyle,
      required this.subTitleStyle,
      required this.padding,
      this.paddingWidgetLeft = const EdgeInsets.all(0),
      this.paddingWidgetIconLeft = const EdgeInsets.all(0),
      this.paddingWidgetRight = const EdgeInsets.all(0),
      this.paddingTitle = const EdgeInsets.all(0),
      this.paddingSubTitle = const EdgeInsets.all(0)});

  factory SimpleItemListStyle.defaultStyle() {
    return SimpleItemListStyle(
      padding: const EdgeInsets.symmetric(vertical: 8),
      paddingWidgetLeft: const EdgeInsets.only(left: 0),
      paddingWidgetIconLeft: EdgeInsets.symmetric(horizontal: 5.w),
      paddingWidgetRight: EdgeInsets.only(right: 5.w),
      paddingTitle: const EdgeInsets.only(bottom: 2),
      titleStyle: OmniTypographyFoundation.bold14,
      subTitleStyle: OmniTypographyFoundation.regular14,
    );
  }

  SimpleItemListStyle copyWith({
    TextStyle? titleStyle,
    TextStyle? subTitleStyle,
    EdgeInsets? paddingWidgetLeft,
    EdgeInsets? paddingWidgetIconLeft,
    EdgeInsets? paddingWidgetRight,
    EdgeInsets? paddingTitle,
    EdgeInsets? paddingSubTitle,
    EdgeInsets? padding,
  }) {
    return SimpleItemListStyle(
      titleStyle: titleStyle ?? this.titleStyle,
      subTitleStyle: subTitleStyle ?? this.subTitleStyle,
      paddingWidgetLeft: paddingWidgetLeft ?? this.paddingWidgetLeft,
      paddingWidgetIconLeft: paddingWidgetIconLeft ?? this.paddingWidgetIconLeft,
      paddingWidgetRight: paddingWidgetRight ?? this.paddingWidgetRight,
      paddingTitle: paddingTitle ?? this.paddingTitle,
      paddingSubTitle: paddingSubTitle ?? this.paddingSubTitle,
      padding: padding ?? this.padding,
    );
  }
}
