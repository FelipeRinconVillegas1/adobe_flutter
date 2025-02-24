import 'package:design_system/atoms/icons/leading_back_app_bar.dart';
import 'package:design_system/extension/extension_design.dart';
import 'package:design_system/organisms/search_textfield/search_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cart_icon.dart';

class HeaderSearch extends StatelessWidget {
  const HeaderSearch(
      {super.key,
      this.pinned = false,
      required this.searchTextfieldData,
      required this.quantityProductsInCart,
      this.showBackIcon = false,
      this.showCartIcon = true,
      required this.padding,
      this.tapCartButton});
  final bool pinned;
  final bool showBackIcon;
  final bool showCartIcon;
  final double quantityProductsInCart;
  final SearchTextfieldData searchTextfieldData;
  final EdgeInsetsGeometry padding;
  final Function()? tapCartButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        width: double.maxFinite,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            AnimatedContainer(
              width: showBackIcon ? 40 : 0,
              duration: const Duration(milliseconds: 250),
              child: const LeadingIconBackAppBar(),
            ),
            Expanded(
              child: SearchTextfieldWidget(
                data: searchTextfieldData,
              ),
            ),
            if (showCartIcon)
              AnimatedContainer(
                  width: pinned ? 75 + quantityProductsInCart.removeZeroIfDoubleIsDecimal().length * 6 : 0,
                  padding: EdgeInsets.only(left: 10.w),
                  duration: const Duration(milliseconds: 250),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 44,
                          color: Colors.transparent,
                          child: Container(
                              decoration: const BoxDecoration(boxShadow: [
                                BoxShadow(color: Colors.black12, blurRadius: 5),
                              ], shape: BoxShape.circle, color: Colors.white),
                              child: Center(
                                child: CartIcon(
                                    style: CartIconStyle.defaultStyle(),
                                    param: CartIconParam(
                                      quantityProductsInCart: quantityProductsInCart,
                                      cartButton: tapCartButton,
                                    )),
                              )),
                        ),
                      )
                    ],
                  )),
          ],
        ),
      ),
    );
  }
}
