import 'package:design_system/foundations/export.dart';
import 'package:flutter/material.dart';

class ItemLoyaltyTransaction extends StatelessWidget {
  const ItemLoyaltyTransaction({super.key, this.style, required this.param});

  final ItemLoyaltyTransactionStyle? style;

  ItemLoyaltyTransactionStyle get _style => style ?? ItemLoyaltyTransactionStyle.defaultStyle();

  final ItemLoyaltyTransactionParam param;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _style.padding,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(param.date, style: _style.dateTextStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Text(param.name, style: _style.nameTextStyle)),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(param.spent, style: _style.spentTextStyle),
                  Text(param.earned, style: _style.earnedTextStyle),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemLoyaltyTransactionParam {
  final String date;
  final String name;
  final String spent;
  final String earned;

  const ItemLoyaltyTransactionParam({
    required this.date,
    required this.name,
    required this.spent,
    required this.earned,
  });
}

class ItemLoyaltyTransactionStyle {
  final Color backgroundColor;
  final EdgeInsets padding;
  final TextStyle dateTextStyle;
  final TextStyle nameTextStyle;
  final TextStyle spentTextStyle;
  final TextStyle earnedTextStyle;

  const ItemLoyaltyTransactionStyle({
    required this.padding,
    required this.backgroundColor,
    required this.dateTextStyle,
    required this.nameTextStyle,
    required this.spentTextStyle,
    required this.earnedTextStyle,
  });

  //Default instance
  factory ItemLoyaltyTransactionStyle.defaultStyle() {
    return ItemLoyaltyTransactionStyle(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      backgroundColor: ColorsOmni.white,
      dateTextStyle: OmniTypographyFoundation.regular13Blue939EAB,
      nameTextStyle: OmniTypographyFoundation.medium15Grey707070,
      spentTextStyle: OmniTypographyFoundation.medium14SecondaryBlack000000,
      earnedTextStyle: OmniTypographyFoundation.medium14Green20BE79,
    );
  }

  //Copy with
  ItemLoyaltyTransactionStyle copyWith({
    Color? backgroundColor,
    EdgeInsets? padding,
    TextStyle? dateTextStyle,
    TextStyle? nameTextStyle,
    TextStyle? spentTextStyle,
    TextStyle? earnedTextStyle,
  }) {
    return ItemLoyaltyTransactionStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      padding: padding ?? this.padding,
      dateTextStyle: dateTextStyle ?? this.dateTextStyle,
      nameTextStyle: nameTextStyle ?? this.nameTextStyle,
      spentTextStyle: spentTextStyle ?? this.spentTextStyle,
      earnedTextStyle: earnedTextStyle ?? this.earnedTextStyle,
    );
  }
}
