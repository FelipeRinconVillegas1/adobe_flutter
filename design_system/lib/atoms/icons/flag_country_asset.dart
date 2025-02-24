import 'package:design_system/atoms/data_models/flag_country_data.dart';
import 'package:flutter/material.dart';

class FlagCountryAsset extends StatelessWidget {
  const FlagCountryAsset({
    super.key,
    required this.data,
  });

  final FlagCountryData data;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'flags/${data.codeFlag.toLowerCase()}.png',
      package: 'design_system',
      width: data.width,
      fit: data.fit,
      height: data.height,
      color: data.color,
    );
  }
}
