import 'package:design_system/atoms/data_models/primary_button_base_data.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';

class OutlinedButtonBase extends StatelessWidget {
  final PrimaryButtonBaseData data;

  const OutlinedButtonBase({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: data.width,
      height: data.height,
      child: OutlinedButton(
        onPressed: data.isDisabled ? null : data.onPressed,
        style: OutlinedButton.styleFrom(
          disabledBackgroundColor: data.disabledColor,
          foregroundColor: data.foreGroundColor,
          elevation: data.elevation,
          side: BorderSide(width: 1, color: data.colorBorder ?? ColorsOmni.primaryRed),
          shape: data.radius != null
              ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(data.radius!)),
                )
              : null,
          shadowColor: data.shadowColor,
        ),
        child: data.child,
      ),
    );
  }
}
