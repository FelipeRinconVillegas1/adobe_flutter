import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../tokens/sizes.dart';

class ItemProductLoading extends StatelessWidget {
  const ItemProductLoading({super.key, this.baseColor, this.highlightColor});

  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? ColorsOmni.paleGreyTwo,
      highlightColor: highlightColor ?? ColorsOmni.white,
      enabled: true,
      child: _LoadingItem(
          borderRadius: 10,
          height: OmniSizes.sizeHeightHorizontalProductList,
          width: OmniSizes.sizeWithHorizontalProductList),
    );
  }
}

class ItemProductSearchLoading extends StatelessWidget {
  const ItemProductSearchLoading({super.key, this.baseColor, this.highlightColor});

  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? ColorsOmni.paleGreyTwo,
      highlightColor: highlightColor ?? ColorsOmni.white,
      enabled: true,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            SizedBox(width: 8.w),
            _LoadingItem(borderRadius: 12, width: 60.w, height: 60.w),
            SizedBox(width: 20.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _LoadingItem(borderRadius: 6, width: 150.w, height: 12.w),
                SizedBox(height: 8.w),
                _LoadingItem(borderRadius: 6, width: 100.w, height: 12.w),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _LoadingItem extends StatelessWidget {
  const _LoadingItem({required this.borderRadius, this.width, this.height});

  final double borderRadius;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius.w),
      ),
      width: width,
      height: height,
    );
  }
}
