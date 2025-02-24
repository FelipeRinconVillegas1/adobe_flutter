import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropdownInputMock extends StatelessWidget {
  final DropdownInputMockData data;

  const DropdownInputMock({
    super.key,
    required this.data,
  });

  bool get showLabelIcon => data.labelIcon != null && data.showLabel;

  bool get showLabelIconInfo => data.labelIconInfo != null && data.showLabel;

  bool get showLabel => data.label != null && data.showLabel;

  bool get isNeedPadingLabel => showLabelIcon || showLabelIconInfo || showLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (data.label != null)
          Padding(
            padding: EdgeInsets.only(bottom: isNeedPadingLabel ? 5 : 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    if (showLabelIcon) data.labelIcon!,
                    if (showLabel) ...[
                      const SizedBox(width: 2),
                      Expanded(
                        child: AutoSizeText.rich(
                           TextSpan(
                            text: data.label!,
                            style: data.styleLabel,
                            children: [
                              if (data.isRequired)
                                TextSpan(
                                  text: data.labelRequired ?? '*',
                                  style: data.labelRequiredTextStyle,
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                    if (showLabelIconInfo) ...[
                      const SizedBox(width: 4),
                      GestureDetector(onTap: data.onTapLabelIconInfo, child: data.labelIconInfo!),
                      Flexible(
                        child: GestureDetector(onTap: data.onTapLabelIconInfo, child: data.labelIconInfo!),
                      )
                    ],
                  ],
                ),
              ],
            ),
          ),
        Container(
          height: 40.h,
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorsOmni.grey707070,
              width: 0.2,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Row(
                children: [
                  const SizedBox(width: 16),
                  Visibility(visible: data.dropdownMock != null, child: data.dropdownMock!),
                  const Padding(
                    padding: EdgeInsets.only(right: 12, left: 4),
                    child: Icon(Icons.keyboard_arrow_down_sharp, color: ColorsOmni.black454545),
                  ),
                ],
              ),
              const VerticalDivider(
                color: ColorsOmni.grey707070,
                thickness: 0.5,
                width: 1,
                indent: 4,
                endIndent: 4,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: data.textFieldMock ?? const SizedBox(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: data.suffixIcon,
              ),
            ],
          ),
        ),
        if (data.feedback != null) data.feedback!,
      ],
    );
  }
}

class DropdownInputMockData {
  final String? label;
  final String? labelRequired;
  final bool showLabel;
  final bool isRequired;
  final Widget? labelIcon;
  final Widget? dropdownMock;
  final Widget? textFieldMock;
  final Widget? suffixIcon;
  final Widget? labelIconInfo;
  final Widget? feedback;
  final TextStyle? styleLabel;
  final TextStyle? labelRequiredTextStyle;
  final VoidCallback? onTapLabelIconInfo;

  const DropdownInputMockData({
    this.label,
    this.labelRequired,
    this.showLabel = true,
    this.isRequired = false,
    this.labelIcon,
    this.dropdownMock,
    this.textFieldMock,
    this.suffixIcon,
    this.labelIconInfo,
    this.feedback,
    this.labelRequiredTextStyle,
    this.onTapLabelIconInfo,
    this.styleLabel = const TextStyle(color: ColorsOmni.black, fontSize: 14),
  });

  DropdownInputMockData.defaultDropdownInputMockData()
      : label = null,
        labelRequired = "*",
        showLabel = true,
        isRequired = false,
        labelIcon = const Icon(Icons.info),
        dropdownMock = const SizedBox(width: 70),
        textFieldMock = const SizedBox(width: 70),
        suffixIcon = const Icon(Icons.lock, color: ColorsOmni.redEF1019, size: 14),
        labelIconInfo = null,
        feedback = null,
        labelRequiredTextStyle = OmniTypographyFoundation.regular14PrimaryRedFF001D,
        onTapLabelIconInfo = null,
        styleLabel = OmniTypographyFoundation.medium14Black161615;

  DropdownInputMockData copyWith({
    String? label,
    String? labelRequired,
    bool? showLabel,
    bool? isRequired,
    Widget? labelIcon,
    Widget? dropdownMock,
    Widget? textFieldMock,
    Widget? suffixIcon,
    Widget? labelIconInfo,
    Widget? feedback,
    TextStyle? styleLabel,
    TextStyle? labelRequiredTextStyle,
    VoidCallback? onTapLabelIconInfo,
  }) {
    return DropdownInputMockData(
      label: label ?? this.label,
      labelRequired: labelRequired ?? this.labelRequired,
      showLabel: showLabel ?? this.showLabel,
      isRequired: isRequired ?? this.isRequired,
      labelIcon: labelIcon ?? this.labelIcon,
      dropdownMock: dropdownMock ?? this.dropdownMock,
      textFieldMock: textFieldMock ?? this.textFieldMock,
      suffixIcon: suffixIcon ?? this.suffixIcon,
      labelIconInfo: labelIconInfo ?? this.labelIconInfo,
      feedback: feedback ?? this.feedback,
      labelRequiredTextStyle: labelRequiredTextStyle ?? this.labelRequiredTextStyle,
      onTapLabelIconInfo: onTapLabelIconInfo ?? this.onTapLabelIconInfo,
      styleLabel: styleLabel ?? this.styleLabel,
    );
  }
}
