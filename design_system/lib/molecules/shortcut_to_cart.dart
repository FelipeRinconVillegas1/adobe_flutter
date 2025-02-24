import 'package:design_system/foundations/export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShortcutToCart extends StatelessWidget {
  const ShortcutToCart({super.key, required this.param});

  final ShortcutToCartParam param;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: ColorsOmni.redFF001D,
        ),
        child: InkWell(
            onTap: () {
              if(!param.isLoading){
                param.onTap?.call();
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 13, right: 5, top: 11, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.shopping_cart_outlined, color: ColorsOmni.white, size: 24),
                  const SizedBox(width: 5),
                  if (param.isLoading)
                    const CupertinoActivityIndicator()
                  else
                    Text(
                      param.totalItemInCart,
                      style: OmniTypographyFoundation.bold16White,
                    ),
                  const VerticalDivider(
                    color: ColorsOmni.white,
                    thickness: 1,
                  ),
                  Text(
                    param.text,
                    style: OmniTypographyFoundation.medium14WhiteFFFFFF,
                  ),
                  const Icon(Icons.keyboard_arrow_right_rounded, color: ColorsOmni.white, size: 24),
                ],
              ),
            )));
  }
}

class ShortcutToCartParam {
  final String text;
  final String totalItemInCart;
  final bool isLoading;
  final Function? onTap;

  const ShortcutToCartParam({
    required this.text,
    required this.totalItemInCart,
    this.isLoading = false,
    this.onTap,
  });
}
