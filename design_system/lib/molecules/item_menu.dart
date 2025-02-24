import 'package:design_system/foundations/export.dart';
import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu({super.key, required this.param, this.style});

  final ItemMenuParam param;
  final ItemMenuStyle? style;

  ItemMenuStyle get _style => style ?? ItemMenuStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: [true, null].contains(param.disable) ? null : () => param.onTap?.call(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: _style.backgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                SizedBox(width: 24, child: param.iconLeft),
                const SizedBox(width: 12),
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        param.name,
                        style: [true, null].contains(param.disable)
                            ? OmniTypographyFoundation.semiBold12GreyB7B7B7
                            : _style.nameStyle,
                      ),
                      if (param.iconRight != null) const SizedBox(width: 4),
                      if (param.iconRight != null) param.iconRight!,
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                [true, null].contains(param.disable)
                    ? const Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 14,
                        color: ColorsOmni.greyB7B7B7,
                      )
                    : _style.iconRight,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemMenuParam {
  final String name;
  final Widget iconLeft;
  final Widget? iconRight;
  final Function? onTap;
  final bool? disable;

  const ItemMenuParam({
    required this.name,
    required this.iconLeft,
    this.iconRight,
    this.onTap,
    this.disable = false,
  });

  //Copy with
  ItemMenuParam copyWith({
    String? name,
    Widget? iconLeft,
    Widget? iconRight,
    Function? onTap,
    bool? disable,
  }) {
    return ItemMenuParam(
      name: name ?? this.name,
      iconLeft: iconLeft ?? this.iconLeft,
      iconRight: iconRight ?? this.iconRight,
      onTap: onTap ?? this.onTap,
      disable: disable ?? this.disable,
    );
  }
}

class ItemMenuStyle {
  final TextStyle nameStyle;
  final Color backgroundColor;
  final Widget iconRight;

  const ItemMenuStyle({
    required this.iconRight,
    required this.nameStyle,
    this.backgroundColor = ColorsOmni.greyF5F5F5,
  });

  factory ItemMenuStyle.defaultStyle() {
    return ItemMenuStyle(
      iconRight: const Icon(
        Icons.arrow_forward_ios_sharp,
        size: 14,
        color: ColorsOmni.primaryRed,
      ),
      nameStyle: OmniTypographyFoundation.semiBold14SecondaryBlack000000,
    );
  }

  //copy with
  ItemMenuStyle copyWith({
    TextStyle? nameStyle,
    Color? backgroundColor,
    Widget? iconRight,
  }) {
    return ItemMenuStyle(
      nameStyle: nameStyle ?? this.nameStyle,
      iconRight: iconRight ?? this.iconRight,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}
