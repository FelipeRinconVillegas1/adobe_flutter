import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckboxButton extends StatelessWidget {
  const CheckboxButton({super.key, required this.value, this.onChanged, this.size = 18, this.padding, this.style});

  final bool value;
  final Function(bool?)? onChanged;
  final CheckboxButtonStyle? style;
  final double? size;
  final EdgeInsets? padding;

  CheckboxButtonStyle get _style => style ?? CheckboxButtonStyle();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(4.r),
      onTap: onChanged == null ? null : () => onChanged?.call(!value),
      child: Padding(
        padding: padding ?? EdgeInsets.all(size! * 0.5),
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: ColorsOmni.white,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: value ? _style.borderColorSelected! : _style.borderColorUnselected!,
              width: 1.5,
            ),
          ),
          child: Center(
            child: SizedBox(
              height: size! * 0.55,
              width: size! * 0.55,
              child:
                  value ? ColoredBox(color: _style.fillColorSelected) : ColoredBox(color: _style.fillColorUnselected),
            ),
          ),
        ),
      ),
    );
  }
}

class CheckboxButtonStyle {
  final Color fillColorSelected;
  final Color fillColorUnselected;
  final Color? borderColorSelected;
  final Color? borderColorUnselected;

  CheckboxButtonStyle({
    this.fillColorSelected = ColorsOmni.redFF1335,
    this.fillColorUnselected = ColorsOmni.transparent,
    this.borderColorSelected = ColorsOmni.redFF1335,
    this.borderColorUnselected = ColorsOmni.greyB7B7B7,
  });

  CheckboxButtonStyle copyWith({
    Color? fillColorSelected,
    Color? fillColorUnselected,
    Color? borderColorSelected,
    Color? borderColorUnselected,
  }) {
    return CheckboxButtonStyle(
      fillColorSelected: fillColorSelected ?? this.fillColorSelected,
      fillColorUnselected: fillColorUnselected ?? this.fillColorUnselected,
      borderColorSelected: borderColorSelected ?? this.borderColorSelected,
      borderColorUnselected: borderColorUnselected ?? this.borderColorUnselected,
    );
  }
}
