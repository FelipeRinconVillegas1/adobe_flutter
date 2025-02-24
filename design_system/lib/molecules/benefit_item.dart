import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../foundations/colors.dart';
import '../foundations/typo.dart';

class ItemBenefitWidgetParams {
  final String name;
  final Widget image;
  final bool showIconPadlock;

  const ItemBenefitWidgetParams({required this.name, required this.image, this.showIconPadlock = false});
}

class BenefitItemStyle {
  final double heightList;
  final double heightItem;
  final double widthItem;
  final double widthSeparator;

  const BenefitItemStyle(
      {required this.heightList, required this.heightItem, required this.widthItem, required this.widthSeparator});

  factory BenefitItemStyle.defaultStyle() {
    return const BenefitItemStyle(widthSeparator: 15, heightList: 110, heightItem: 82, widthItem: 84);
  }
}

class BenefitItemWidget extends StatelessWidget {
  const BenefitItemWidget({super.key, this.style, required this.item});

  final BenefitItemStyle? style;
  final ItemBenefitWidgetParams item;

  BenefitItemStyle get _style => style ?? BenefitItemStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: _style.heightItem,
          width: _style.widthItem,
          decoration: BoxDecoration(
            color: ColorsOmni.white,
            borderRadius: BorderRadius.circular(11.r),
            boxShadow: const [
              BoxShadow(
                color: ColorsOmni.white29000000, // #00000029 in ARGB format
                blurRadius: 6.0,
                offset: Offset(0, 3), // x, y
              ),
            ],
          ),
          child: Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.none,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: item.image,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: Text(item.name, textAlign: TextAlign.center, style: OmniTypographyFoundation.regular10Black161615),
                    )
                  ],
                ),
              ),
              if (item.showIconPadlock)
                Positioned(
                  top: -5,
                  right: -5,
                  child: Container(
                    height: 23,
                    width: 23,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: ColorsOmni.white29000000, // #00000029 in ARGB format
                        blurRadius: 6.0,
                        offset: Offset(0, 3), // x, y
                      ),
                    ], shape: BoxShape.circle, color: Colors.white),
                    child: const Icon(Icons.lock, size: 11),
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
