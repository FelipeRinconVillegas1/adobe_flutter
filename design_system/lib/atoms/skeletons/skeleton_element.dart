import 'package:design_system/atoms/data_models/skeleton_element_data.dart';
import 'package:flutter/material.dart';

import '../../foundations/colors.dart';

class SkeletonElement extends StatelessWidget {
  final SkeletonElementData data;
  const SkeletonElement({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: data.height,
      width: data.width,
      decoration: BoxDecoration(
        color: data.color ?? ColorsOmni.paleGreyTwo,
        shape: data.shape ?? BoxShape.rectangle,
        borderRadius: data.borderRadius,
      ),
    );
  }
}
