import 'package:design_system/atoms/textfields/primary_textfield_base.dart';
import 'package:design_system/atoms/data_models/primary_textfield_data.dart';
import 'package:flutter/material.dart';

/// This text-field needs the flutter_screenutil to work properly in case to bring it to another project
/// The error will activate only if errorText is not null
class CountryTextfield extends StatelessWidget {
  const CountryTextfield({
    super.key,
    required this.data,
    this.countryCode = '',
    this.code = '',
    this.onTapCountryCode,
  });

  final PrimaryTextfieldData data;
  final String countryCode;
  final String code;

  final Function()? onTapCountryCode;

  @override
  Widget build(BuildContext context) {
    return PrimaryTextFieldBase(
      data: data.countryCodePrimaryTextField(onTapPrefixIcon: onTapCountryCode, countryCode: countryCode, code: code),
    );
  }
}
