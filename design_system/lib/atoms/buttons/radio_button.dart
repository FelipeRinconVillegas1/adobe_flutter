import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';

class RadioButton<T> extends StatelessWidget {
  const RadioButton(
      {super.key,
      required this.value,
      required this.groupValue,
      required this.onChanged,
      this.style});

  final T value;
  final T? groupValue;
  final Function(T?)? onChanged;
  final RadioButtonStyle? style;

  RadioButtonStyle get _style => style ?? RadioButtonStyle();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        unselectedWidgetColor: _style.borderColorUnselected,
      ),
      child: Radio<T>(
        visualDensity: VisualDensity.compact,
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        fillColor: MaterialStateProperty.resolveWith(
            (states) => states.contains(MaterialState.selected) ? _style.fillColorSelected : _style.fillColorUnselected),
      ),
    );
  }
}

class RadioButtonStyle {
  final Color fillColorSelected;
  final Color fillColorUnselected;
  final Color? borderColorUnselected;

  RadioButtonStyle({
    this.fillColorSelected = ColorsOmni.green,
    this.fillColorUnselected = ColorsOmni.grey707070,
    this.borderColorUnselected,
  });

  RadioButtonStyle.denimBlue({
    this.fillColorSelected = ColorsOmni.primaryRed,
    this.fillColorUnselected = ColorsOmni.grey707070,
    this.borderColorUnselected = ColorsOmni.grey707070,
  });

  RadioButtonStyle copyWith({
    Color? fillColorSelected,
    Color? fillColorUnselected,
    Color? borderColorUnselected,
  }) {
    return RadioButtonStyle(
      fillColorSelected: fillColorSelected ?? this.fillColorSelected,
      fillColorUnselected: fillColorUnselected ?? this.fillColorUnselected,
      borderColorUnselected: borderColorUnselected ?? this.borderColorUnselected,
    );
  }
}
