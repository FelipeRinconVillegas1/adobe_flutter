import 'package:design_system/atoms/textfields/primary_textfield_base.dart';
import 'package:design_system/atoms/data_models/primary_textfield_data.dart';
import 'package:flutter/material.dart';

/// This text-field needs the flutter_screenutil to work properly in case to bring it to another project
/// The error will activate only if errorText is not null
class MultilineTextField extends StatelessWidget {
  const MultilineTextField({
    super.key,
    required this.data
  });

  final PrimaryTextfieldData data;

  @override
  Widget build(BuildContext context) {
    return PrimaryTextFieldBase(
      data: data.multilinePrimaryTextField(),
    );
  }
}
