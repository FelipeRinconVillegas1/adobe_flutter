import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data_models/primary_svg_icon_data.dart';

class ListTileBasic extends StatelessWidget {
  const ListTileBasic({
    super.key,
    required this.data,
  });

  final ListTileBasicData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: data.colorBackgroundTile ?? Colors.transparent,
      child: Padding(
        padding: data.padding ?? EdgeInsets.symmetric(horizontal: 5.h),
        child: InkWell(
          onTap: data.onTap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (data.omniIcons != null)
                PrimarySvgIconAsset(
                  data: PrimarySvgIconData(
                    icon: data.omniIcons!,
                  ),
                ),
              const SizedBox(width: 15).responsive,
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.title,
                          style: data.titleStyle,
                        ),
                        if (data.subtitle != null && data.subtitle!.isNotEmpty)
                          Text(
                            data.subtitle ?? '',
                            style: data.subtitleStyle,
                          ),
                        if (data.thirdLineWidget != null) data.thirdLineWidget!,
                      ],
                    ),
                    if (data.suffixIcon != null) data.suffixIcon!,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListTileBasicData {
  final OmniIcons? omniIcons;
  final String title;
  final TextStyle titleStyle;
  final String? subtitle;
  final Widget? thirdLineWidget;
  final TextStyle? subtitleStyle;
  final VoidCallback onTap;
  final EdgeInsetsGeometry? padding;
  final Widget? suffixIcon;
  final Color? colorBackgroundTile;
  ListTileBasicData({
    this.omniIcons,
    this.subtitle,
    this.subtitleStyle,
    this.suffixIcon,
    this.colorBackgroundTile,
    this.thirdLineWidget,
    required this.title,
    required this.onTap,
    required this.titleStyle,
    this.padding,
  });

  ListTileBasicData copyWith({
    OmniIcons? omniIcons,
    String? title,
    VoidCallback? onTap,
    TextStyle? titleStyle,
    EdgeInsetsGeometry? padding,
    String? subtitle,
    TextStyle? subtitleStyle,
    Widget? suffixIcon,
    Color? colorBackgroundTile,
    Widget? thirdLineWidget,
  }) {
    return ListTileBasicData(
      thirdLineWidget: thirdLineWidget ?? this.thirdLineWidget,
      colorBackgroundTile: colorBackgroundTile ?? this.colorBackgroundTile,
      suffixIcon: suffixIcon ?? this.suffixIcon,
      subtitle: subtitle ?? this.subtitle,
      subtitleStyle: subtitleStyle ?? this.subtitleStyle,
      omniIcons: omniIcons ?? this.omniIcons,
      title: title ?? this.title,
      onTap: onTap ?? this.onTap,
      titleStyle: titleStyle ?? this.titleStyle,
      padding: padding ?? this.padding,
    );
  }
}
