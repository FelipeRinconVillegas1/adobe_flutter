import 'package:design_system/foundations/export.dart';
import 'package:flutter/material.dart';

class NameProductWithCategory extends StatelessWidget {
  const NameProductWithCategory({super.key, required this.param, this.style});

  final NameProductWithCategoryParam param;
  final NameProductWithCategoryStyle? style;

  NameProductWithCategoryStyle get _style => style ?? NameProductWithCategoryStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          param.category,
          style: _style.categoryTextStyle,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          param.name,
          style: _style.nameTextStyle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class NameProductWithCategoryParam {
  final String name;
  final String category;

  NameProductWithCategoryParam({
    required this.name,
    required this.category,
  });
}

class NameProductWithCategoryStyle {
  NameProductWithCategoryStyle({
    required this.nameTextStyle,
    required this.categoryTextStyle,
  });

  final TextStyle nameTextStyle;
  final TextStyle categoryTextStyle;

  static NameProductWithCategoryStyle defaultStyle() => NameProductWithCategoryStyle(
        nameTextStyle: OmniTypographyFoundation.regular14SecondaryBlack000000,
        categoryTextStyle: OmniTypographyFoundation.regular12Grey707070,
      );
}
