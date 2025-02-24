import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';

class RadioButtonRow<T> extends StatelessWidget {
  const RadioButtonRow({super.key, required this.data});

  final RadioButtonRowData<T> data;

  RadioButtonStyle get _style => data.style ?? RadioButtonStyle();

  Widget getText() {
    if (data.text == null) return const SizedBox.shrink();
    if (data.text is String) return Text(data.text as String, style: data.textStyle);

    return data.text as Widget;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: data.onChanged == null ? null : () => data.onChanged?.call(data.value as T),
      child: Container(
        color: data.backgroundColor,
        padding: data.padding ?? EdgeInsets.zero,
        child: Row(
          mainAxisAlignment: data.mainAxisAlignment ?? MainAxisAlignment.start,
          children: [
            if (data.reverse == true) ...[getText(), const SizedBox(width: 2)],
            Radio<T>(
              visualDensity: data.visualDensity,
              value: data.value as T,
              groupValue: data.groupValue,
              onChanged: (_) => {},
              activeColor: data.mainColor,
              fillColor: data.style != null
                  ? MaterialStateProperty.resolveWith(
                      (states) => states.contains(MaterialState.selected)
                          ? _style.fillColorSelected
                          : _style.fillColorUnselected,
                    )
                  : null,
            ),
            if ([null, false].contains(data.reverse)) ...[const SizedBox(width: 2), getText()],
          ],
        ),
      ),
    );
  }
}

class RadioButtonRowData<T> {
  final Object? text;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final Color? mainColor;
  final T? value;
  final T? groupValue;
  final Function(T)? onChanged;
  final RadioButtonStyle? style;
  final bool? reverse;
  final MainAxisAlignment? mainAxisAlignment;
  final VisualDensity? visualDensity;

  RadioButtonRowData({
    this.text,
    this.textStyle,
    this.backgroundColor,
    this.padding,
    this.mainColor,
    this.value,
    this.groupValue,
    this.onChanged,
    this.style,
    this.reverse = false,
    this.mainAxisAlignment,
    this.visualDensity,
  });

  RadioButtonRowData<T> copyWith({
    Object? text,
    TextStyle? textStyle,
    Color? backgroundColor,
    EdgeInsets? padding,
    Color? mainColor,
    T? value,
    T? groupValue,
    Function(T)? onChanged,
    RadioButtonStyle? style,
    bool? reverse,
    MainAxisAlignment? mainAxisAlignment,
    VisualDensity? visualDensity,
  }) {
    return RadioButtonRowData(
      text: text ?? this.text,
      textStyle: textStyle ?? this.textStyle,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      padding: padding ?? this.padding,
      mainColor: mainColor ?? this.mainColor,
      value: value ?? this.value,
      groupValue: groupValue ?? this.groupValue,
      onChanged: onChanged ?? this.onChanged,
      style: style ?? this.style,
      reverse: reverse ?? this.reverse,
      mainAxisAlignment: mainAxisAlignment ?? this.mainAxisAlignment,
      visualDensity: visualDensity ?? this.visualDensity,
    );
  }

  RadioButtonRowData<T> mainData() {
    return RadioButtonRowData(
      text: text,
      textStyle: textStyle ?? OmniTypographyFoundation.regular14Black000000,
      backgroundColor: backgroundColor,
      padding: padding,
      mainColor: mainColor,
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      style: RadioButtonStyle(
        fillColorSelected: ColorsOmni.primaryRed,
        fillColorUnselected: ColorsOmni.greyB7B7B7,
        borderColorUnselected: ColorsOmni.greyB7B7B7,
      ),
      reverse: reverse,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      visualDensity: visualDensity ??
          const VisualDensity(horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
    );
  }
}
