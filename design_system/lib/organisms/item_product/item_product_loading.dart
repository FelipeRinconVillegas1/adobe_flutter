import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ItemProductoLoadingHorizontalList extends StatelessWidget {
  const ItemProductoLoadingHorizontalList(
      {super.key, this.scrollDirection = Axis.horizontal});

  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
        //TODO: Add item product loading vertical list
        enabled: true,
        child: scrollDirection == Axis.horizontal
            ? ItemProduct.dummyToLoadingHorizontalList()
            : ItemProduct.dummyToLoadingHorizontalList());
  }
}
