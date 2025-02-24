import 'package:design_system/atoms/data_models/skeleton_element_data.dart';
import 'package:design_system/atoms/skeletons/skeleton_element.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonLoaderList extends StatelessWidget {
  const SkeletonLoaderList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 7,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Card(
          elevation: 0.5,
          child: Shimmer.fromColors(
            baseColor: ColorsOmni.paleGreyTwo,
            highlightColor: Colors.white,
            child: box(),
          ),
        );
      },
    );
  }

  Widget box() {
    return Container(
      height: OmniSizesFoundation.sizeCardSM.h,
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          SkeletonElement(
            data: SkeletonElementData(
              height: 30,
              width: 30,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonElement(
                  data: SkeletonElementData(
                    height: 10,
                    width: 150,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SkeletonElement(
                  data: SkeletonElementData(
                    height: 10,
                    width: 150,
                    borderRadius: BorderRadius.circular(50),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
