import 'package:design_system/atoms/buttom_sheet/simple_bottom_sheet.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentModalRequestCodeBottomSheet extends StatelessWidget {
  const ContentModalRequestCodeBottomSheet({
    super.key,
    required this.data,
  });

  final ContentModalRequestSmsCodeSheetData data;

  @override
  Widget build(BuildContext context) {
    return SimpleBottomSheet(
      data: SimpleBottomSheetData(
        width: data.width?.w,
        headerHeight: data.headerHeight,
        fillColor: ColorsOmni.white,
        headerBackgroundColor: ColorsOmni.white,
        contentBackgroundColor: data.contentBackgroundColor,
        header: Padding(
          padding: data.headerPadding ?? EdgeInsets.zero,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                data.title ?? '',
                style: data.titleStyle,
              )
            ],
          ),
        ),
        content: Padding(
          padding: data.contentPadding ?? EdgeInsets.zero,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ...data.options,
            ],
          ),
        ),
      ),
    );
  }
}

class ContentModalRequestSmsCodeSheetData {
  ContentModalRequestSmsCodeSheetData({
    this.height,
    this.width,
    this.headerHeight,
    this.contentBackgroundColor,
    this.cancelText,
    this.title,
    this.options = const [],
    this.cancelStyle,
    this.titleStyle,
    this.contentPadding,
    this.headerPadding,
  });
  final double? height;
  final double? width;
  final double? headerHeight;
  final Color? contentBackgroundColor;
  final String? cancelText;
  final TextStyle? cancelStyle;
  final String? title;
  final TextStyle? titleStyle;
  final List<Widget> options;
  final EdgeInsets? contentPadding;
  final EdgeInsets? headerPadding;

  ContentModalRequestSmsCodeSheetData copyWith(
      {double? height,
        double? width,
        double? headerHeight,
        Color? contentBackgroundColor,
        String? cancelText,
        String? title,
        List<Widget>? options,
        TextStyle? cancelStyle,
        TextStyle? titleStyle,
        EdgeInsets? contentPadding,
        EdgeInsets? headerPadding}) {
    return ContentModalRequestSmsCodeSheetData(
      height: height ?? this.height,
      width: width ?? this.width,
      headerHeight: headerHeight ?? this.headerHeight,
      contentBackgroundColor: contentBackgroundColor ?? this.contentBackgroundColor,
      cancelText: cancelText ?? this.cancelText,
      title: title ?? this.title,
      options: options ?? this.options,
      cancelStyle: cancelStyle ?? this.cancelStyle,
      titleStyle: titleStyle ?? this.titleStyle,
      contentPadding: contentPadding ?? this.contentPadding,
      headerPadding: headerPadding ?? this.headerPadding,
    );
  }
}
