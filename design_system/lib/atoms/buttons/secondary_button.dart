import 'package:design_system/atoms/buttons/button_base.dart';
import 'package:design_system/atoms/data_models/primary_button_data.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.data,
  });

  final PrimaryButtonData data;

  @override
  Widget build(BuildContext context) {
    return ButtonBase(
      data: data.defaultSecondaryButton(),
    );
  }
}

