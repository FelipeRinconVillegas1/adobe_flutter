import 'package:design_system/atoms/data_models/primary_textfield_data.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Input with dropdown and textfield in stack
class DropdownWithTextField<T> extends StatelessWidget {
  const DropdownWithTextField({
    super.key,
    required this.configDropdown,
    required this.dropdownWithTextFieldParams,
    this.dropdownWithTextFieldStyle,
  });

  /// [configTexfield] control the textfield and label
  final DropdownSimpleParam<T> configDropdown;
  final DropdownWithTextFieldParams dropdownWithTextFieldParams;
  final DropdownWithTextFieldStyle? dropdownWithTextFieldStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (dropdownWithTextFieldParams.label != null && dropdownWithTextFieldParams.showLabel)
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: LabelInput(
              text: dropdownWithTextFieldParams.label!,
              textRequired: dropdownWithTextFieldParams.labelRequired,
              isRequired: dropdownWithTextFieldParams.isRequired,
              styleLabel: LabelInputStyle(
                icon: dropdownWithTextFieldParams.labelIcon,
                styleLabel: dropdownWithTextFieldStyle?.styleLabel ?? LabelInputStyle.defaultStyle().styleLabel,
                labelRequiredTextStyle: dropdownWithTextFieldStyle?.labelRequiredTextStyle ??
                    LabelInputStyle.defaultStyle().labelRequiredTextStyle,
              ),
            ),
          ),
        Row(
          children: [
            SizedBox(
              width: 70.w,
              child: DropdownSimple<T>(
                configDropdown,
                style: DropdownSimpleStyle<T>.defaultStyle(suffixIconColor_: ColorsOmni.black).copyWith(
                    constraintsItemsList:  BoxConstraints(maxHeight: 100, maxWidth: 70.w),
                    labelIcon: const Icon(Icons.account_circle_outlined, color: ColorsOmni.secondaryBlack, size: 18)),
              ),
            ),
            if (dropdownWithTextFieldParams.showOneInput)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: PrimaryTextField(data: dropdownWithTextFieldParams.configTexFieldOneInput),
                ),
              )
            else
              Expanded(
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  runAlignment: WrapAlignment.start,
                  direction: Axis.horizontal,
                  runSpacing: 10,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: SizedBox(
                        width: 70.w,
                        child: PrimaryTextField(data: dropdownWithTextFieldParams.configTexField1),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                      height: 40,
                      child: Center(child: Text("-")),
                    ),
                    SizedBox(
                      width: 50.w,
                      child: PrimaryTextField(data: dropdownWithTextFieldParams.configTexField2),
                    ),
                    const SizedBox(
                      width: 20,
                      height: 40,
                      child: Center(child: Text("-")),
                    ),
                    SizedBox(
                      width: 60.w,
                      child: PrimaryTextField(data: dropdownWithTextFieldParams.configTexField3),
                    ),
                  ],
                ),
              )
          ],
        ),
        if (dropdownWithTextFieldParams.errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              dropdownWithTextFieldParams.errorText!,
              style: dropdownWithTextFieldParams.configTexField1.errorTextStyle ??
                  OmniTypographyFoundation.regular9YellowFF9900,
            ),
          ),
      ],
    );
  }
}

class DropdownWithTextFieldParams {
  final PrimaryTextfieldData configTexField1;
  final PrimaryTextfieldData configTexField2;
  final PrimaryTextfieldData configTexField3;
  final PrimaryTextfieldData configTexFieldOneInput;
  final String? label;
  final bool isRequired;
  final String? labelRequired;
  final Widget? labelIcon;
  final bool showLabel;
  final String? errorText;
  final bool showOneInput;

  const DropdownWithTextFieldParams(
      {required this.configTexField1,
      required this.configTexField2,
      required this.configTexField3,
      required this.configTexFieldOneInput,
      this.label,
      this.isRequired = false,
      this.showOneInput = false,
      this.labelRequired,
      this.labelIcon,
      this.errorText,
      this.showLabel = true});
}

class DropdownWithTextFieldStyle {
  final TextStyle? styleLabel;
  final TextStyle? labelRequiredTextStyle;

  const DropdownWithTextFieldStyle({this.styleLabel, this.labelRequiredTextStyle});

  DropdownWithTextFieldStyle copyWith({TextStyle? styleLabel, TextStyle? labelRequiredTextStyle}) {
    return DropdownWithTextFieldStyle(
      styleLabel: styleLabel ?? this.styleLabel,
      labelRequiredTextStyle: labelRequiredTextStyle ?? this.labelRequiredTextStyle,
    );
  }
}
