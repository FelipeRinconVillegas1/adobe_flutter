import 'package:design_system/foundations/colors.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';

class ViewRecentlyProductList extends StatelessWidget {
  const ViewRecentlyProductList(
      {super.key,
      this.listProductMostSearch = const [],
      this.listProductViewRecently = const [],
      required this.textMostSearched,
      required this.textRecently});
  final List<dynamic> listProductViewRecently;
  final List<dynamic> listProductMostSearch;
  final String textRecently;
  final String textMostSearched;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(overscroll: false),
      child: ListView(
        padding: const EdgeInsets.only(top: 0),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(textRecently, style: OmniTypographyFoundation.bold14Black161615, textAlign: TextAlign.start),
          ),
          ...listProductViewRecently,
          const Divider(
            height: 0.5,
            color: ColorsOmni.greyB7B7B7,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child:
                Text(textMostSearched, style: OmniTypographyFoundation.bold14Black161615, textAlign: TextAlign.start),
          ),
          ...listProductMostSearch,
        ],
      ),
    );
  }
}
