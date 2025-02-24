import 'package:flutter/material.dart';

import '../../foundations/colors.dart';
import '../../foundations/sizes.dart';
import '../data_models/cart_helper_button_data.dart';

class CartHelperButton extends StatelessWidget {
  const CartHelperButton({
    super.key,
    required this.data,
  });

  final CartHelperButtonData data;

  @override
  Widget build(BuildContext context) {
    final mainData = data.main();
    final isPlural = mainData.quantity > 1;
    return mainData.quantity > 0
        ? GestureDetector(
            onTap: mainData.onTap,
            child: Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: OmniSizesFoundation.wResponsive(15),
              ),
              decoration: BoxDecoration(
                color: mainData.backgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: mainData.shadowColor ?? ColorsOmni.veryLightShadeGray,
                    offset: const Offset(1, 10),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: OmniSizesFoundation.wResponsive(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ ${mainData.totalPrice.toString()} (${mainData.quantity.toString()} ${mainData.productText}${isPlural ? 's' : ''})',
                      style: mainData.productTextStyle,
                    ),
                    Text(
                      mainData.cartText?.toString() ?? '',
                      style: mainData.cartTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
