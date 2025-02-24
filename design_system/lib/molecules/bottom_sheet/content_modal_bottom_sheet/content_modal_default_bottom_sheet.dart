import 'package:design_system/atoms/buttom_sheet/simple_bottom_sheet.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentModalDefaultBottomSheet extends StatelessWidget {
  const ContentModalDefaultBottomSheet({
    super.key,
    required this.data,
  });

  final ContentModalDefaultBottomSheetData data;

  @override
  Widget build(BuildContext context) {
    return SimpleBottomSheet(
      data: SimpleBottomSheetData(
        width: data.width?.w,
        headerHeight: data.headerHeight,
        fillColor: ColorsOmni.white,
        headerBackgroundColor: ColorsOmni.white,
        contentBackgroundColor: data.contentBackgroundColor,
        header: data.widgetHeader,
        content: data.widgetContent,
      ),
    );
  }
}

class ContentModalDefaultBottomSheetData {
  ContentModalDefaultBottomSheetData({
    this.width,
    this.headerHeight,
    this.contentBackgroundColor,
    this.widgetContent,
    this.widgetHeader,
  });
  final double? width;
  final double? headerHeight;
  final Color? contentBackgroundColor;
  final Widget? widgetContent;
  final Widget? widgetHeader;

  ContentModalDefaultBottomSheetData copyWith(
      {double? width,
      double? headerHeight,
      Color? contentBackgroundColor,
      Widget? widgetContent,
      Widget? widgetHeader}) {
    return ContentModalDefaultBottomSheetData(
        widgetHeader: widgetHeader ?? this.widgetHeader,
        width: width ?? this.width,
        headerHeight: headerHeight ?? this.headerHeight,
        contentBackgroundColor: contentBackgroundColor ?? this.contentBackgroundColor,
        widgetContent: widgetContent ?? this.widgetContent);
  }
}
