import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({super.key, this.style, required this.param});

  final CircleButtonStyle? style;
  final CircleButtonParam param;

  CircleButtonStyle get _style => style ?? CircleButtonStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: param.onPressed,
      child: Container(
        height: _style.height,
        width: _style.height,
        decoration: BoxDecoration(
          border: Border.all(
            color: _style.borderColor,
            width: 1.w,
          ),
          color: _style.backgroundColor,
          borderRadius: BorderRadius.circular(_style.height),
        ),
        child: Center(
          child: param.icon,
        ),
      ),
    );
  }
}

class CircleButtonStyle {
  final Color backgroundColor;
  final Color borderColor;

  /// Height and width of the button
  final double height;

  CircleButtonStyle({required this.backgroundColor, required this.borderColor, required this.height});

  factory CircleButtonStyle.defaultStyle() {
    return CircleButtonStyle(
      backgroundColor: ColorsOmni.white,
      borderColor: ColorsOmni.primaryRed,
      height: 28.w,
    );
  }

  //Copy with
  CircleButtonStyle copyWith({
    Color? backgroundColor,
    Color? borderColor,
    double? height,
  }) {
    return CircleButtonStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      height: height ?? this.height,
    );
  }
}

class CircleButtonParam {
  const CircleButtonParam({
    this.onPressed,
    required this.icon,
  });

  final void Function()? onPressed;
  final Widget icon;
}
