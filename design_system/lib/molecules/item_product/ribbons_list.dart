import 'package:flutter/cupertino.dart';

import '../../atoms/item_product/ribbons_product.dart';

class RibbonsList extends StatelessWidget {
  const RibbonsList({super.key, required this.ribbons});

  final Map<String, RibbonsProductStyle?> ribbons;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ...ribbons.entries
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: RibbonsProduct(
                    text: e.key,
                    style: ribbons[e.key],
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
