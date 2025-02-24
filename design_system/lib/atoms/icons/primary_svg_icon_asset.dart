import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrimarySvgIconAsset extends StatelessWidget {
  const PrimarySvgIconAsset({
    super.key,
    required this.data,
  });

  final PrimarySvgIconData data;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      data.icon.pathAsset.isEmpty ? data.icon.path() : data.icon.pathAsset,
      width: data.width,
      height: data.height,
      colorFilter: data.colorFilter,
      color: data.color,
      fit: data.fit ?? BoxFit.contain,
      allowDrawingOutsideViewBox: true,
    );
  }
}
