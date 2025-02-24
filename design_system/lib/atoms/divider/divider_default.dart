import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';

class DividerDefault extends StatelessWidget {
  const DividerDefault(
      {super.key,
      this.height = 12,
      this.color = ColorsOmni.black70,
      this.endIndent,
      this.indent,
      this.thickness});

  final double height;
  final Color color;

  final double? endIndent;
  final double? indent;

  final double? thickness;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      color: color,
      thickness: thickness,
      endIndent: endIndent,
      indent: indent,
    );
  }
}
