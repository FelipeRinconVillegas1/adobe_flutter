import 'package:design_system/atoms/buttons/checkbox_button.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckboxButtonRow extends StatelessWidget {
  const CheckboxButtonRow({
    super.key,
    required this.value,
    this.onChanged,
    this.isDisabled = false,
    this.children = const [],
  });

  final bool value;
  final Function(bool?)? onChanged;
  final List<Widget> children;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onChanged == null ? null : () => onChanged?.call(!value),
      radius: 10,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CheckboxButton(
            value: value,
            size: 18.h,
            style: isDisabled ? CheckboxButtonStyle(
              fillColorSelected: ColorsOmni.greyB7B7B7,
              fillColorUnselected: ColorsOmni.greyB7B7B7,
              borderColorSelected: ColorsOmni.greyB7B7B7,
              borderColorUnselected: ColorsOmni.greyB7B7B7,
            ) : null,
            padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
          ),
          SizedBox(width: 8.w),
          ...children
        ],
      ),
    );
  }
}
