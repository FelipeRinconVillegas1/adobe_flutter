import 'package:design_system/animations/icon_cart_animation.dart';
import 'package:design_system/animations/icon_cart_animation_options.dart';
import 'package:flutter/material.dart';

import '../../../atoms/data_models/primary_svg_icon_data.dart';
import '../../../atoms/icons/primary_svg_icon_asset.dart';
import '../../../foundations/colors.dart';
import '../../../foundations/icons.dart';
import '../../../foundations/sizes.dart';
import '../../../foundations/typo.dart';

class HeaderButtons extends StatelessWidget {
  const HeaderButtons({
    super.key,
    required this.height,
    required this.cartIconKey,
    this.activeCartAnimation = false,
    this.expanded = false,
    this.backButton,
    this.searchButton,
    this.cartButton,
    this.title = '',
    this.subtitle = '',
    this.shareButton,
    this.backgroundColor,
    this.isDetached = false,
    required this.quantityProductsInCart,
  });

  final double height;
  final bool expanded;
  final String title;
  final String subtitle;
  final VoidCallback? backButton;
  final VoidCallback? searchButton;
  final VoidCallback? cartButton;
  final VoidCallback? shareButton;
  final Color? backgroundColor;
  final bool isDetached;
  final int quantityProductsInCart;
  final GlobalKey cartIconKey;
  final bool activeCartAnimation;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: isDetached
          ? BoxDecoration(
              color: backgroundColor ?? ColorsOmni.white,
              border: const Border(
                bottom: BorderSide(color: ColorsOmni.whiteSmoke, width: 0.5),
              ),
            )
          : null,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: OmniSizesFoundation.wResponsive(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: backButton,
            child: PrimarySvgIconAsset(
              data: PrimarySvgIconData(
                icon: OmniIcons.arrowBackWhite,
                width: OmniSizesFoundation.wResponsive(20),
                height: OmniSizesFoundation.wResponsive(20),
                colorFilter: ColorFilter.mode(
                  expanded ? ColorsOmni.black : ColorsOmni.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          if (title.isNotEmpty && subtitle.isNotEmpty)
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: OmniTypographyFoundation.medium16Grey707070.copyWith(
                      fontFamily: OmniTypographyFoundation.familyRubik,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: OmniTypographyFoundation.regular14Grey949091,
                  ),
                ],
              ),
            ),
          Row(
            children: [
              if (shareButton != null)
                Row(
                  children: [
                    InkWell(
                      onTap: shareButton,
                      child: PrimarySvgIconAsset(
                        data: PrimarySvgIconData(
                          icon: OmniIcons.share,
                          width: OmniSizesFoundation.wResponsive(20),
                          height: OmniSizesFoundation.wResponsive(20),
                          colorFilter: ColorFilter.mode(
                            expanded ? ColorsOmni.black : ColorsOmni.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: OmniSizesFoundation.wResponsive(20)),
                  ],
                ),
              InkWell(
                onTap: searchButton,
                child: PrimarySvgIconAsset(
                  data: PrimarySvgIconData(
                    icon: OmniIcons.search,
                    width: OmniSizesFoundation.wResponsive(20),
                    height: OmniSizesFoundation.wResponsive(20),
                    colorFilter: ColorFilter.mode(
                      expanded ? ColorsOmni.black : ColorsOmni.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              SizedBox(width: OmniSizesFoundation.wResponsive(20)),
              SizedBox(
                height: 25,
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: AnimationIconCart(
                      key: cartIconKey,
                      duration: const Duration(milliseconds: 250),
                      animationConfig: CartAnimationsOptionsDefault(),
                      runAnimation: activeCartAnimation,
                      child: InkWell(
                        onTap: cartButton,
                        child: PrimarySvgIconAsset(
                          data: PrimarySvgIconData(
                            icon: OmniIcons.cart,
                            width: 22,
                            height: 22,
                            colorFilter: ColorFilter.mode(
                              expanded ? ColorsOmni.black : ColorsOmni.white,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Badge(
                      label: Text(
                        quantityProductsInCart.toString(),
                        style: OmniTypographyFoundation.regular12Grey5B636C.copyWith(
                          color: ColorsOmni.white,
                        ),
                      ),
                      isLabelVisible: quantityProductsInCart > 0,
                      backgroundColor: ColorsOmni.red,
                      child: SizedBox(),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
