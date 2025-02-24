import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum TabButtonType { main }

class TabButtonData {
  final Color? backgroundSelectedColor;
  final Color? backgroundUnselectedColor;
  final TextStyle? textSelectedStyle;
  final TextStyle? textUnselectedStyle;
  final Widget? selectedIcon;
  final Widget? unselectedIcon;
  final double? height;
  final double? width;
  final bool isSelected;
  final VoidCallback? onPressed;
  final String? text;
  final BorderRadiusGeometry? borderRadius;
  TabButtonData({
    this.backgroundSelectedColor,
    this.backgroundUnselectedColor,
    this.textSelectedStyle,
    this.textUnselectedStyle,
    this.selectedIcon,
    this.unselectedIcon,
    required this.isSelected,
    this.height,
    this.width,
    this.onPressed,
    this.text,
    this.borderRadius,
  });

  TabButtonData copyWith({
    Color? backgroundSelectedColor,
    Color? backgroundUnselectedColor,
    TextStyle? textSelectedStyle,
    TextStyle? textUnselectedStyle,
    bool? isSelected,
    Widget? selectedIcon,
    Widget? unselectedIcon,
    double? height,
    double? width,
    VoidCallback? onPressed,
    String? text,
    BorderRadiusGeometry? borderRadius,
  }) {
    return TabButtonData(
      backgroundSelectedColor: backgroundSelectedColor ?? this.backgroundSelectedColor,
      backgroundUnselectedColor: backgroundUnselectedColor ?? this.backgroundUnselectedColor,
      textSelectedStyle: textSelectedStyle ?? this.textSelectedStyle,
      textUnselectedStyle: textUnselectedStyle ?? this.textUnselectedStyle,
      selectedIcon: selectedIcon ?? this.selectedIcon,
      unselectedIcon: unselectedIcon ?? this.unselectedIcon,
      isSelected: isSelected ?? this.isSelected,
      height: height ?? this.height,
      width: width ?? this.width,
      onPressed: onPressed ?? this.onPressed,
      text: text ?? this.text,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  TabButtonData main() {
    return TabButtonData(
      backgroundSelectedColor: backgroundSelectedColor ?? ColorsOmni.blueBlue5,
      backgroundUnselectedColor: backgroundUnselectedColor ?? ColorsOmni.white,
      textSelectedStyle: textSelectedStyle ?? OmniTypographyFoundation.medium13Grey707070,
      textUnselectedStyle: textUnselectedStyle ?? OmniTypographyFoundation.medium13Grey707070,
      isSelected: isSelected,
      unselectedIcon: unselectedIcon,
      selectedIcon: selectedIcon,
      height: height ?? 32.h,
      width: width ?? double.infinity,
      onPressed: onPressed,
      text: text,
      borderRadius: borderRadius,
    );
  }
}

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.data,
    this.type = TabButtonType.main,
  });

  final TabButtonData data;
  final TabButtonType type;

  @override
  Widget build(BuildContext context) {
    late TabButtonData finalData;
    switch (type) {
      case TabButtonType.main:
        finalData = data.main();
        break;
      default:
        finalData = data.main();
    }

    return InkWell(
      onTap: finalData.onPressed,
      child: Container(
        height: finalData.height,
        width: finalData.width,
        decoration: BoxDecoration(
          color: finalData.isSelected ? finalData.backgroundSelectedColor : data.backgroundUnselectedColor,
          borderRadius: finalData.borderRadius,
        ),
        child: Stack(
          children: [
            if (finalData.isSelected)
              Positioned(
                left: 5.w,
                top: 4.h,
                child: Container(
                  height: 15.h,
                  width: 15.h,
                  decoration: BoxDecoration(
                    color: ColorsOmni.blueText,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    Icons.check,
                    color: ColorsOmni.white,
                    size: 10.h,
                  ),
                ),
              ),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (finalData.selectedIcon != null && data.unselectedIcon != null)
                    finalData.isSelected ? finalData.selectedIcon! : finalData.unselectedIcon!,
                  const SizedBox(width: 20).responsive,
                  Text(
                    finalData.text ?? '',
                    style: finalData.isSelected ? finalData.textSelectedStyle : data.textUnselectedStyle,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
