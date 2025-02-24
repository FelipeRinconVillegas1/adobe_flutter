import 'package:design_system/atoms/buttons/circle_button.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ChangeQuantityButtonType {
  increase,
  decrease,
}

class ChangeQuantityButton extends StatelessWidget {
  const ChangeQuantityButton({super.key, required this.type, this.style, this.onPressed});

  final ChangeQuantityButtonType type;
  final void Function()? onPressed;
  final ChangeQuantityButtonStyle? style;

  ChangeQuantityButtonStyle get buttonStyle => style ?? ChangeQuantityButtonStyle.defaultStyle();

  Widget getIconByType() {
    switch (type) {
      case ChangeQuantityButtonType.increase:
        return Icon(
          Icons.add,
          color: buttonStyle.iconColor,
          size: buttonStyle.iconSize,
        );
      case ChangeQuantityButtonType.decrease:
        return Icon(
          Icons.remove,
          color: buttonStyle.iconColor,
          size: buttonStyle.iconSize,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CircleButton(
      param: CircleButtonParam(icon: getIconByType(), onPressed: onPressed),
      style: buttonStyle.buttonStyle,
    );
  }
}

class ChangeQuantityButtonStyle {
  final CircleButtonStyle? buttonStyle;
  final Color iconColor;
  final double iconSize;

  ChangeQuantityButtonStyle({this.buttonStyle, required this.iconColor, required this.iconSize});

  factory ChangeQuantityButtonStyle.defaultStyle() {
    return ChangeQuantityButtonStyle(
      buttonStyle: CircleButtonStyle.defaultStyle(),
      iconColor: ColorsOmni.primaryRed,
      iconSize: 20.w,
    );
  }

  //Copy with
  ChangeQuantityButtonStyle copyWith({
    CircleButtonStyle? buttonStyle,
    Color? iconColor,
    double? iconSize,
  }) {
    return ChangeQuantityButtonStyle(
      buttonStyle: buttonStyle ?? this.buttonStyle,
      iconColor: iconColor ?? this.iconColor,
      iconSize: iconSize ?? this.iconSize,
    );
  }
}
