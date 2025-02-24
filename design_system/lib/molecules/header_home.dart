import 'package:design_system/atoms/icons/primary_svg_icon_asset.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../atoms/data_models/primary_svg_icon_data.dart';
import '../foundations/icons.dart';
import 'cart_icon.dart';

enum TypeShippingMethod { delivery, pickUp, emptySelection }

class HeaderHome extends StatefulWidget {
  const HeaderHome({
    super.key,
    this.onTap,
    this.text = '',
    this.tapCartButton,
    required this.quantityProductsInCart,
    this.isLoadingCart = false,
    required this.typeShippingMethod,
    required this.icon,
  });

  final VoidCallback? onTap;
  final String text;
  final double quantityProductsInCart;
  final bool isLoadingCart;
  final TypeShippingMethod typeShippingMethod;
  final OmniIcons icon;
  final Function()? tapCartButton;

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: widget.onTap,
              behavior: HitTestBehavior.opaque,
              child: Container(
                color: ColorsOmni.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      PrimarySvgIconAsset(
                          data: PrimarySvgIconData(
                            height: 20.w,
                            width: 20.w,
                            icon: widget.icon,
                          )),
                      SizedBox(width: 5.w),
                      Flexible(
                        child: Text(
                          widget.text,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: OmniTypographyFoundation.regular12Black454545,
                        ),
                      ),
                      if (widget.typeShippingMethod != TypeShippingMethod.emptySelection) SizedBox(width: 5.w),
                      if (widget.typeShippingMethod != TypeShippingMethod.emptySelection)
                        Icon(Icons.keyboard_arrow_down_rounded, color: ColorsOmni.primaryRed, size: 23.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 17.w),
              widget.isLoadingCart
                  ? const CupertinoActivityIndicator()
                  : CartIcon(
                      style: CartIconStyle.defaultStyle(),
                      param: CartIconParam(
                        quantityProductsInCart: widget.quantityProductsInCart,
                        cartButton: widget.tapCartButton,
                      ))
            ],
          ),
        ],
      ),
    );
  }
}
