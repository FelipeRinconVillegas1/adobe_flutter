import 'package:design_system/atoms/buttons/radio_button.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:design_system/molecules/simple_item_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../atoms/buttons/checkbox_button.dart';

class ItemMyList extends StatelessWidget {
  const ItemMyList({super.key, required this.param, this.style});

  final ItemMyListParam param;

  final ItemMyListStyle? style;

  ItemMyListStyle get _style => style ?? ItemMyListStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return SimpleItemList(
      style: _style.simpleItemListStyle,
      param: param.simpleItemListParam.copyWith(
        onTap: () => param.onTapItem(),
        widgetLeft: !param.showCheckbox
            ? CheckboxButton(
                value: param.isSelected,
                size: 18.h,
                style: CheckboxButtonStyle().copyWith(borderColorUnselected: Colors.white),
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
              )
            : param.typeItemList == TypeItemList.radioButton
                ? RadioButton<bool>(
                    groupValue: true,
                    value: param.isSelected,
                    onChanged: (value) {
                      if (value != null) {
                        param.onTapItem();
                      }
                    },
                    style: RadioButtonStyle(
                        fillColorSelected: _style.activeColor,
                        fillColorUnselected: _style.inactiveColor,
                        borderColorUnselected: _style.inactiveColor))
                : CheckboxButton(
                    value: param.isSelected,
                    size: 18.h,
                    padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                  ),
        title: param.simpleItemListParam.title,
        widgetRight: param.widgetRight,
      ),
    );
  }
}

enum TypeItemList { radioButton, checkbox }

class ItemMyListParam {
  final Function() onTapItem;
  final Widget? widgetRight;
  final bool isSelected;
  final bool showCheckbox;
  final TypeItemList typeItemList;

  final SimpleItemListParam simpleItemListParam;

  ItemMyListParam({
    required this.isSelected,
    required this.simpleItemListParam,
    required this.onTapItem,
    this.showCheckbox = true,
    this.typeItemList = TypeItemList.radioButton,
    this.widgetRight,
  });
}

class ItemMyListStyle {
  final Color activeColor;
  final Color inactiveColor;

  final SimpleItemListStyle simpleItemListStyle;

  ItemMyListStyle({
    required this.activeColor,
    required this.inactiveColor,
    required this.simpleItemListStyle,
  });

  factory ItemMyListStyle.defaultStyle() {
    return ItemMyListStyle(
      activeColor: ColorsOmni.primaryRed,
      inactiveColor: ColorsOmni.grey707070,
      simpleItemListStyle: SimpleItemListStyle.defaultStyle().copyWith(
        paddingTitle: const EdgeInsets.only(bottom: 2, left: 8),
        paddingSubTitle: const EdgeInsets.only(left: 8),
        titleStyle: OmniTypographyFoundation.semiBold14Black161615,
        subTitleStyle: OmniTypographyFoundation.light12Grey161615,
      ),
    );
  }
}
