import 'package:flutter/material.dart';

import '../../molecules/item_product/item_product_loading.dart';

class ItemProductLoadingList extends StatelessWidget {
  const ItemProductLoadingList({
    super.key,
    this.itemCount = 15,
    this.child,
  });

  final int itemCount;
  final Widget? child;

  get childItem => child ?? const ItemProductLoading();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 15,
      itemBuilder: (context, index) {
        return Card(child: childItem);
      },
    );
  }
}
