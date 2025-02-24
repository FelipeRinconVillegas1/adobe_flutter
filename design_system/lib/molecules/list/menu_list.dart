import 'package:design_system/foundations/typo.dart';
import 'package:design_system/molecules/item_menu.dart';
import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  const MenuList({
    super.key,
    this.itemsStyle,
    required this.items,
    this.title,
    this.titleStyle,
    this.paddingBetweenItem = 12,
    this.paddingBetweenTitleAndItem = 20,
  });

  final List<ItemMenuParam> items;
  final String? title;

  final ItemMenuStyle? itemsStyle;
  final TextStyle? titleStyle;
  final double paddingBetweenItem;
  final double paddingBetweenTitleAndItem;

  ItemMenuStyle get style => itemsStyle ?? ItemMenuStyle.defaultStyle();

  TextStyle get _titleStyle => titleStyle ?? OmniTypographyFoundation.semiBold14Black161615;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (title != null) Text(title!, style: _titleStyle),
        if (title != null) SizedBox(height: paddingBetweenTitleAndItem),
        for (var item in items) ...[
          ItemMenu(
            param: item,
            style: style,
          ),
          Divider(height: paddingBetweenItem, color: Colors.transparent)
        ]
      ],
    );
  }
}
