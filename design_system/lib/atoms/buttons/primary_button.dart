import 'package:design_system/atoms/buttons/button_base.dart';
import 'package:design_system/atoms/data_models/primary_button_data.dart';
import 'package:flutter/material.dart';

/// This button needs the flutter_screenutil to work properly in case to bring it to another project
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.data,
  });

  final PrimaryButtonData data;

  @override
  Widget build(BuildContext context) {
    return ButtonBase(
      data: data.defaultPrimaryButton(),
    );
  }
}
