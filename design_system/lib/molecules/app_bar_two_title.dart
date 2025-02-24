import 'package:design_system/foundations/colors.dart';
import 'package:design_system/molecules/simple_app_bar.dart';
import 'package:flutter/material.dart';

import '../foundations/typo.dart';

class AppBarTwoTitles extends StatelessWidget implements PreferredSizeWidget {
  final AppBarTwoTittlesParam paramAppBarTwoTittles;

  const AppBarTwoTitles({
    super.key,
    required this.paramAppBarTwoTittles,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: paramAppBarTwoTittles.automaticallyImplyLeading,
      toolbarHeight: paramAppBarTwoTittles.height,
      elevation: paramAppBarTwoTittles.elevation,
      backgroundColor: paramAppBarTwoTittles.backgroundColor,
      surfaceTintColor: paramAppBarTwoTittles.surfaceTintColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => paramAppBarTwoTittles.onTapLeft?.call(),
            child: Text(
              paramAppBarTwoTittles.titleLeft,
              style: paramAppBarTwoTittles.textStyleLeft,
            ),
          ),
          GestureDetector(
              onTap: () => paramAppBarTwoTittles.onTapRight?.call(),
              child: Text(paramAppBarTwoTittles.titleRight, style: paramAppBarTwoTittles.textStyleRight)),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(paramAppBarTwoTittles.height);
}

class AppBarTwoTittlesParam extends BaseAppBarParam {
  final String titleLeft;
  final String titleRight;
  TextStyle? textStyleLeft;
  TextStyle? textStyleRight;
  final Function()? onTapLeft;
  final Function()? onTapRight;
  final bool automaticallyImplyLeading;

  AppBarTwoTittlesParam({
    this.onTapLeft,
    this.onTapRight,
    this.textStyleLeft,
    this.textStyleRight,
    required this.titleLeft,
    required this.titleRight,
    this.automaticallyImplyLeading = false,
    super.elevation,
    super.backgroundColor,
    super.surfaceTintColor,
    super.height,
  }) {
    textStyleLeft =
        textStyleLeft ?? OmniTypographyFoundation.medium17Grey707070.copyWith(color: ColorsOmni.black464749);
    textStyleRight = textStyleRight ?? OmniTypographyFoundation.medium17Grey949091;
  }
}
