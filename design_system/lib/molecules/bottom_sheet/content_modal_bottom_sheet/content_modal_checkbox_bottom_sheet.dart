import 'package:design_system/atoms/buttom_sheet/simple_bottom_sheet.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentModalCheckboxBottomSheet extends StatelessWidget {
  const ContentModalCheckboxBottomSheet({
    super.key,
    required this.data,
  });

  final ContentModalCheckboxBottomSheetData data;

  @override
  Widget build(BuildContext context) {
    return SimpleBottomSheet(
      data: SimpleBottomSheetData(
        width: data.width?.w,
        headerHeight: data.headerHeight,
        contentBackgroundColor: data.contentBackgroundColor,
        header: Padding(
          padding: data.headerPadding ?? EdgeInsets.zero,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      data.cancelText ?? '',
                      style: data.cancelStyle,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    data.title ?? '',
                    style: data.titleStyle,
                  ),
                ),
              ),
              const Spacer()
            ],
          ),
        ),
        content: Padding(
          padding: data.contentPadding ?? EdgeInsets.zero,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...data.options,
            ],
          ),
        ),
      ),
    );
  }
}

enum MapOptionType { main }

class MapsOption extends StatelessWidget {
  const MapsOption({
    super.key,
    required this.data,
    this.type = MapOptionType.main,
  });

  final MapsOptionData data;
  final MapOptionType type;

  @override
  Widget build(BuildContext context) {
    late MapsOptionData finalData;
    switch (type) {
      case MapOptionType.main:
        finalData = data.main();
        break;
      default:
        finalData = data.main();
    }
    return InkWell(
      onTap: finalData.onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: finalData.size,
            width: finalData.size,
            decoration: BoxDecoration(
              color: ColorsOmni.white,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: finalData.borderColor!,
                width: 20,
              ),
            ),
          ),
          SizedBox(width: 10.w),
          Text(
            finalData.text ?? '',
            style: finalData.textStyle,
          ),
        ],
      ),
    );
  }
}

class MapsOptionData {
  MapsOptionData({
    this.size,
    this.onTap,
    this.text,
    this.textStyle,
    this.borderColor,
  });
  final double? size;
  final VoidCallback? onTap;
  final String? text;
  final TextStyle? textStyle;
  final Color? borderColor;

  MapsOptionData copyWith({
    double? size,
    VoidCallback? onTap,
    String? text,
    TextStyle? textStyle,
    Color? borderColor,
  }) {
    return MapsOptionData(
      size: size ?? this.size,
      onTap: onTap ?? this.onTap,
      text: text ?? this.text,
      textStyle: textStyle ?? this.textStyle,
      borderColor: borderColor ?? this.borderColor,
    );
  }

  MapsOptionData main() {
    return MapsOptionData(
      onTap: onTap,
      size: 20.h,
      text: text,
      textStyle: OmniTypographyFoundation.regular11Grey5B636C,
      borderColor: ColorsOmni.grey707070,
    );
  }
}

class MapsConfirmBottomSheet extends StatelessWidget {
  const MapsConfirmBottomSheet({
    super.key,
    required this.data,
  });

  final ContentModalCheckboxBottomSheetData data;

  @override
  Widget build(BuildContext context) {
    final mainData = data.maps();
    return ContentModalCheckboxBottomSheet(data: mainData);
  }
}

class ContentModalCheckboxBottomSheetData {
  ContentModalCheckboxBottomSheetData({
    required this.height,
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
  final double height;
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

  ContentModalCheckboxBottomSheetData copyWith(
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
    return ContentModalCheckboxBottomSheetData(
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

  ContentModalCheckboxBottomSheetData maps() {
    return ContentModalCheckboxBottomSheetData(
      height: height,
      width: width ?? double.infinity,
      headerHeight: headerHeight ?? 0.3,
      contentBackgroundColor: contentBackgroundColor ?? ColorsOmni.white,
      cancelText: cancelText,
      title: title,
      options: options,
      cancelStyle: OmniTypographyFoundation.regular15PrimaryRedFF001D,
      titleStyle: OmniTypographyFoundation.regular15Grey5B636C,
      contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
      headerPadding: EdgeInsets.symmetric(horizontal: 20.w),
    );
  }
}
