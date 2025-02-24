import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderList extends StatefulWidget {
  const HeaderList({super.key, required this.headerListData, this.headerListStyle});

  final HeaderListParam headerListData;
  final HeaderListStyle? headerListStyle;

  @override
  State<HeaderList> createState() => _HeaderListState();
}

class _HeaderListState extends State<HeaderList> {
  HeaderListStyle get _style => widget.headerListStyle ?? HeaderListStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _style.padding ?? EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (widget.headerListData.iconBack != null)
            Padding(
              padding: const EdgeInsets.only(right: 13),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: widget.headerListData.iconBack,
              ),
            ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: _style.textLeftMainAxisAlignment ?? MainAxisAlignment.start,
              children: [
                Text(
                  widget.headerListData.textLeft ?? '',
                  style: _style.textStyleLeft,
                ),
                if (widget.headerListData.iconTextLeft != null) ...[
                  widget.headerListData.iconTextLeft!,
                ]
              ],
            ),
          ),
          if (widget.headerListData.textRight != null && widget.headerListData.textRight!.trim().isNotEmpty)
            TextButton(
              onPressed: () {
                if (widget.headerListData.onTapTextRight != null) {
                  widget.headerListData.onTapTextRight!();
                }
              },
              child: Text(
                widget.headerListData.textRight!,
                style: _style.textStyleRight,
              ),
            )
        ],
      ),
    );
  }
}

class HeaderListParam {
  HeaderListParam({
    this.textLeft,
    this.textRight,
    this.onTapTextRight,
    this.iconBack,
    this.iconTextLeft,
  });

  final String? textLeft;
  final String? textRight;
  final Widget? iconBack;
  final Widget? iconTextLeft;
  final VoidCallback? onTapTextRight;
}

class HeaderListStyle {
  HeaderListStyle({
    this.textLeftMainAxisAlignment,
    this.textStyleLeft,
    this.textStyleRight,
    this.padding,
  });

  final MainAxisAlignment? textLeftMainAxisAlignment;
  final TextStyle? textStyleLeft;
  final TextStyle? textStyleRight;
  final EdgeInsets? padding;

  factory HeaderListStyle.defaultStyle() {
    return HeaderListStyle(
      textLeftMainAxisAlignment: MainAxisAlignment.start,
      textStyleLeft: OmniTypographyFoundation.bold14SecondaryBlack161615,
      textStyleRight: OmniTypographyFoundation.bold10RedFF1335,
      padding: EdgeInsets.only(left: 20.w, right: 15.w),
    );
  }

  factory HeaderListStyle.modalStyle() {
    return HeaderListStyle(
      textLeftMainAxisAlignment: MainAxisAlignment.start,
      textStyleLeft: OmniTypographyFoundation.bold18SecondaryBlack161615,
      textStyleRight: OmniTypographyFoundation.bold10RedFF1335,
      padding: EdgeInsets.only(left: 20.w, right: 15.w),
    );
  }

  factory HeaderListStyle.wishListStyle(
      {EdgeInsets? padding, TextStyle? textStyleLeft, MainAxisAlignment? textLeftMainAxisAlignment}) {
    return HeaderListStyle(
      textLeftMainAxisAlignment: textLeftMainAxisAlignment ?? MainAxisAlignment.start,
      textStyleLeft: textStyleLeft ?? OmniTypographyFoundation.bold22Black161615,
      textStyleRight: OmniTypographyFoundation.bold10RedFF1335,
      padding: padding ?? EdgeInsets.only(left: 20.w, right: 15.w, bottom: 22.h, top: 16.h),
    );
  }
}
