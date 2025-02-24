import 'package:design_system/atoms/skeletons/skeleton_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../foundations/colors.dart';
import 'data_models/skeleton_element_data.dart';

class LoadingBox extends StatelessWidget {
  const LoadingBox({super.key, required this.data, this.baseColor, this.highlightColor});

  final SkeletonElementData data;
  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? ColorsOmni.paleGreyTwo,
      highlightColor: highlightColor ?? ColorsOmni.white,
      enabled: true,
      child: SkeletonElement(
        data: data,
      ),
    );
  }
}

class DecorationLoadingBox extends StatelessWidget {
  const DecorationLoadingBox({
    super.key,
    this.height = 40,
    this.width = double.infinity,
    this.padding = EdgeInsets.zero,
    this.decoration,
  });

  final double height;
  final double width;
  final EdgeInsets padding;
  final BoxDecoration? decoration;

  BoxDecoration _decoration() => BoxDecoration(
        color: ColorsOmni.white,
        borderRadius: BorderRadius.circular(11.r),
        boxShadow: const [
          BoxShadow(
            color: ColorsOmni.white29000000,
            blurRadius: 6.0,
            offset: Offset(0, 3),
          ),
        ],
      );

  Widget loader(double width) => LoadingBox(
        data: SkeletonElementData(height: height, width: width, borderRadius: BorderRadius.circular(4)),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(padding: padding, child: Container(decoration: decoration ?? _decoration(), child: loader(width)));
  }
}
