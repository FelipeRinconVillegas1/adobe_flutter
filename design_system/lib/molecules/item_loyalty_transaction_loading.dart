import 'package:design_system/atoms/skeletons/skeleton_element.dart';
import 'package:design_system/foundations/export.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../atoms/data_models/skeleton_element_data.dart';

class ItemLoyaltyTransactionLoading extends StatelessWidget {
  const ItemLoyaltyTransactionLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorsOmni.paleGreyTwo,
      highlightColor: ColorsOmni.white,
      enabled: true,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SkeletonElement(
                      data: SkeletonElementData(height: 10, width: 60, borderRadius: BorderRadius.circular(12))),
                  const SizedBox(height: 8),
                  SkeletonElement(
                      data: SkeletonElementData(height: 10, width: 60, borderRadius: BorderRadius.circular(12))),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SkeletonElement(
                        data: SkeletonElementData(height: 10, width: 60, borderRadius: BorderRadius.circular(12))),
                    SkeletonElement(
                        data: SkeletonElementData(height: 10, width: 60, borderRadius: BorderRadius.circular(12))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
