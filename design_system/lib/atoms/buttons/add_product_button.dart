import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddProductButton extends StatelessWidget {
  const AddProductButton({super.key, this.style, required this.param});

  final AddProductButtonStyle? style;
  final AddProductButtonParam param;

  AddProductButtonStyle get _style => style ?? AddProductButtonStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _style.height,
      child: ElevatedButton(
          onPressed: param.onPressed,
          style: ElevatedButton.styleFrom(
            disabledBackgroundColor: _style.backgroundColor,
            elevation: _style.elevation,
            backgroundColor: _style.backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(_style.borderRadius),
            ),
            padding: _style.paddingButton,
          ),
          child: Text(
            param.text,
            style: _style.textStyle,
          )),
    );
  }
}

class AddProductButtonStyle {
  final TextStyle textStyle;
  final Color backgroundColor;
  final Color disabledBackgroundColor;
  final double height;
  final double borderRadius;
  final double elevation;
  final EdgeInsetsGeometry? paddingButton;

  AddProductButtonStyle(
      {required this.textStyle,
      required this.backgroundColor,
      required this.height,
      required this.borderRadius,
      required this.disabledBackgroundColor,
      required this.paddingButton,
      this.elevation = 2});

  factory AddProductButtonStyle.defaultStyle() {
    return AddProductButtonStyle(
        textStyle:
            OmniTypographyFoundation.semiBold16PrimaryRedFF001D.copyWith(color: ColorsOmni.primaryRed),
        backgroundColor: ColorsOmni.lavender,
        height: 34.w,
        borderRadius: 3,
        elevation: 1,
        disabledBackgroundColor: ColorsOmni.gray,
        paddingButton: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.w));
  }

  factory AddProductButtonStyle.disabled() {
    return AddProductButtonStyle(
        textStyle: OmniTypographyFoundation.medium14Grey707070,
        backgroundColor: ColorsOmni.greyImageBackground,
        height: 32.w,
        borderRadius: 2,
        elevation: 0,
        disabledBackgroundColor: ColorsOmni.gray,
        paddingButton: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.w));
  }

  //copy with
  AddProductButtonStyle copyWith({
    TextStyle? textStyle,
    Color? backgroundColor,
    double? height,
    double? borderRadius,
    Color? disabledBackgroundColor,
    EdgeInsetsGeometry? paddingButton,
  }) {
    return AddProductButtonStyle(
      textStyle: textStyle ?? this.textStyle,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      height: height ?? this.height,
      borderRadius: borderRadius ?? this.borderRadius,
      disabledBackgroundColor: disabledBackgroundColor ?? this.disabledBackgroundColor,
      paddingButton: paddingButton ?? this.paddingButton,
    );
  }
}

class AddProductButtonParam {
  const AddProductButtonParam({
    this.onPressed,
    required this.text,
  });

  final void Function()? onPressed;
  final String text;

  AddProductButtonParam copyWith({
    void Function()? onPressed,
    String? text,
  }) {
    return AddProductButtonParam(
      onPressed: onPressed ?? this.onPressed,
      text: text ?? this.text,
    );
  }
}
