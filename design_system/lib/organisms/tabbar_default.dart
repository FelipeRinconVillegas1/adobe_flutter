import 'package:design_system/foundations/colors.dart';
import 'package:design_system/foundations/typo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarDefaultItem {
  final String text;

  const TabBarDefaultItem({Key? key, required this.text});
}

class TabBarDefault extends StatelessWidget {
  final List<TabBarDefaultItem> tabBarDefaultItems;
  final void Function(int) onTap;
  final int initialIndex;
  final bool canTapTabs;

  const TabBarDefault(
      {Key? key,
      required this.tabBarDefaultItems,
      required this.onTap,
      this.canTapTabs = true,
      required this.initialIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabBarDefaultItems.length,
      initialIndex: initialIndex,
      child: IgnorePointer(
        ignoring: !canTapTabs,
        child: TabBar(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          dividerHeight: 0,
          indicatorWeight: 4,
          labelStyle: OmniTypographyFoundation.medium14SecondaryBlack000000,
          indicatorColor: ColorsOmni.black161615,
          splashFactory: NoSplash.splashFactory,
          tabAlignment: TabAlignment.fill,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: ColorsOmni.black161615,
          unselectedLabelColor: ColorsOmni.grey707070,
          onTap: onTap,
          tabs: tabBarDefaultItems
              .map((e) => Tab(
            text: e.text,
          ))
              .toList(),
        ),
      ),
    );
  }
}
