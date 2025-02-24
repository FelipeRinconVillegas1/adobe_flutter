import 'package:design_system/foundations/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../atoms/buttons/tab_button.dart';

class TabRowData {
  TabRowData({
    this.borderColor,
    this.tabs = const [],
  });
  final Color? borderColor;
  final List<TabButton> tabs;

  TabRowData copyWith({
    Color? borderColor,
    List<TabButton>? tabs,
  }) {
    return TabRowData(
      borderColor: borderColor ?? this.borderColor,
      tabs: tabs ?? this.tabs,
    );
  }

  TabRowData main() {
    return TabRowData(
      borderColor: borderColor ?? ColorsOmni.darkGrayishBlue,
      tabs: tabs,
    );
  }
}

class TabRow extends StatelessWidget {
  const TabRow({
    super.key,
    required this.data,
  });

  final TabRowData data;

  Widget _buildTab(
    int index,
    TabButton tab,
    int lastIndex,
  ) {
    if (index == 0) {
      final firstTab = TabButton(
        data: tab.data.copyWith(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.h),
            bottomLeft: Radius.circular(8.h),
          ),
        ),
      );
      return Expanded(child: firstTab);
    }

    if (index == lastIndex) {
      final lastTab = TabButton(
        data: tab.data.copyWith(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.h),
            bottomRight: Radius.circular(8.h),
          ),
        ),
      );
      return Expanded(child: lastTab);
    }

    return Expanded(child: tab);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: data.borderColor ?? ColorsOmni.darkGrayishBlue),
      ),
      child: Row(
        children: List.generate(
          data.tabs.length,
          (index) {
            return _buildTab(index, data.tabs[index], data.tabs.length - 1);
          },
        ),
      ),
    );
  }
}

class TabRowMain extends StatelessWidget {
  const TabRowMain({
    super.key,
    required this.data,
  });

  final TabRowData data;

  @override
  Widget build(BuildContext context) {
    return TabRow(data: data.main());
  }
}
