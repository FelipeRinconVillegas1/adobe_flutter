import 'package:flutter/material.dart';

class ElevatedBottomNavigationBar extends StatelessWidget {
  const ElevatedBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
    required this.selectedIconTheme,
    required this.unselectedIconTheme,
    this.elevated = 40,
    this.height = 70,
    this.horizontalMargin = 20,
  });

  /// The index into [items] for the current active [BottomNavigationBarItem].
  final int currentIndex;

  /// The callback that is called when a item is tapped.
  final void Function(int) onTap;

  /// items created by circularBottomNavigation
  final List<BottomNavigationBarItem> items;

  final IconThemeData? selectedIconTheme;
  final IconThemeData? unselectedIconTheme;

  /// The height of the elevated area.
  final double elevated;

  /// The height of the bottom navigation bar.
  final double height;

  /// The horizontal margin of the bottom navigation bar.
  final double horizontalMargin;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            SizedBox(
              height: height,
              child: MediaQuery.removePadding(
                removeBottom: true,
                context: context,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(0, -1.8),
                      ),
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(0, 1.8),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
                  child: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    unselectedItemColor: Colors.blueGrey,
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    selectedFontSize: 0,
                    unselectedFontSize: 0,
                    selectedIconTheme: selectedIconTheme,
                    unselectedIconTheme: unselectedIconTheme,
                    items: items,
                    currentIndex: currentIndex,
                    onTap: onTap,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: elevated,
        )
      ],
    );
  }
}

/// Creates a circular bottom navigation bar item.
BottomNavigationBarItem circularBottomNavigation({
  /// The text to display for the bottom navigation bar item.
  required String text,

  /// The icon to display for the bottom navigation bar item.
  required Widget icon,

  /// The color of the label when the item is selected.
  required Color labelActiveColor,

  /// The color of the label when the item is not selected.
  required Color labelColor,

  /// The size of the container for status active icon.
  double containerSize = 32,

  /// The style to use for the labels when the item is selected.
  TextStyle? textStyleSelected,

  /// The text to display for the bottom navigation bar item when the item is selected.
  String? activeText,

  /// The icon to display for the bottom navigation bar item when the item is selected.
  Widget? activeIcon,

  /// The style to use for the labels when the item is not selected.
  TextStyle? textStyleUnSelected,
}) {
  return BottomNavigationBarItem(
    icon: Column(
      children: [
        icon,
        Text(
          activeText ?? text,
          style: textStyleUnSelected ??
              TextStyle(
                  fontSize: 12, fontWeight: FontWeight.bold, color: labelColor),
        ),
      ],
    ),
    activeIcon: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(containerSize),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: labelColor,
            boxShadow: [
              BoxShadow(
                color: labelColor,
                blurRadius: 8,
                offset: const Offset(0, 1.5),
              ),
            ],
          ),
        ),
        Column(
          children: [
            activeIcon ?? icon ,
            SizedBox(
              width: containerSize * 2,
              child: Text(
                textAlign: TextAlign.center,
                activeText ?? text,
                style: textStyleSelected ??
                    TextStyle(
                        color: labelActiveColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    ),
    label: '',
    backgroundColor: Colors.transparent,
  );
}
