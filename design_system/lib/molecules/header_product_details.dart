import 'package:core/domain/entity/cart/cart.fr.dart';
import 'package:core/ui/state/cart/current_cart_provider.fr.dart';
import 'package:design_system/atoms/icons/leading_back_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cart_icon.dart';

class HeaderProductDetails extends ConsumerWidget {
  const HeaderProductDetails({super.key, this.params});

  final HeaderProductDetailsParam? params;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(currentCartProvider);
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LeadingIconBackAppBar(style: LeadingIconBackAppBarStyle.roundedBox()),
          CartIcon(
              style: CartIconStyle.defaultStyle().copyWith(sizeIcon: 23),
              param: CartIconParam(
                  quantityProductsInCart: cart.totalItemInCart,
                  cartButton: params?.cartButton))
        ],
      ),
    );
  }
}

class HeaderProductDetailsParam {
  final Function? cartButton;
  const HeaderProductDetailsParam({required this.cartButton});
}
