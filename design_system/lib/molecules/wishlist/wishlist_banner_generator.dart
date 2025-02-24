import 'package:core/domain/entity/wishlist.fr.dart';
import 'package:core/l10n/localization_config.dart';
import 'package:core/ui/state/wishlist/wishlist_state.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../atoms/data_models/primary_svg_icon_data.dart';

Widget wishlistBannerGenerator({
  required BuildContext context,
  required BannerMessageType bannerType,
  String? productName,
  String? wishlistSelectedName,
}) {
  switch (bannerType) {
    case BannerMessageType.productAdded:
      return RichText(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          text: '${context.l10n.itWasAdded} ',
          style: OmniTypographyFoundation.regular12SecondaryBlack000000,
          children: [
            TextSpan(text: '"${productName ?? ''} "', style: OmniTypographyFoundation.medium12Black292a2c),
            TextSpan(
                text: "${context.l10n.toYourList} ", style: OmniTypographyFoundation.regular12SecondaryBlack000000),
            TextSpan(
                text: '"${wishlistSelectedName ?? ''}" ', style: OmniTypographyFoundation.medium12Black292a2c),
          ],
        ),
      );
    case BannerMessageType.newWishlist:
      return RichText(
        text: TextSpan(
          text: '${context.l10n.yourNewList} ',
          style: OmniTypographyFoundation.regular12SecondaryBlack000000,
          children: [
            TextSpan(
                text: '"${wishlistSelectedName ?? ''} "', style: OmniTypographyFoundation.medium12Black292a2c),
            TextSpan(
                text: "${context.l10n.wasSaved} ", style: OmniTypographyFoundation.regular12SecondaryBlack000000),
          ],
        ),
      );
    case BannerMessageType.deletedWishlist:
      return RichText(
        text: TextSpan(
          text: '${context.l10n.yourList} ',
          style: OmniTypographyFoundation.regular12SecondaryBlack000000,
          children: [
            TextSpan(
                text: "${context.l10n.wasDeleted} ", style: OmniTypographyFoundation.regular12SecondaryBlack000000),
          ],
        ),
      );
    case BannerMessageType.updateWishlist:
      return RichText(
        text: TextSpan(
          text: '${context.l10n.yourList} ',
          style: OmniTypographyFoundation.regular12SecondaryBlack000000,
          children: [
            TextSpan(
                text: "${context.l10n.wasUpdated} ", style: OmniTypographyFoundation.regular12SecondaryBlack000000),
          ],
        ),
      );
    case BannerMessageType.productAddedToCart:
      return Text(
        context.l10n.productAddedToCart,
        style: OmniTypographyFoundation.regular12SecondaryBlack000000,
      );
    case BannerMessageType.removeProduct:
      return Text(
        context.l10n.productRemoved,
        style: OmniTypographyFoundation.regular12SecondaryBlack000000,
      );
    default:
      return const SizedBox.shrink();
  }
}

class BannerGreenMessageData {
  BannerGreenMessageData({
    this.height,
    this.width,
    this.backgroundColor,
    this.icon,
    this.bannerMessageType,
    this.wishlistSelected,
    this.productName,
  });
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final OmniIcons? icon;
  final BannerMessageType? bannerMessageType;
  final WishList? wishlistSelected;
  final String? productName;

  BannerGreenMessageData copyWith({
    double? height,
    double? width,
    Color? backgroundColor,
    OmniIcons? icon,
    BannerMessageType? bannerMessageType,
    WishList? wishlistSelected,
    String? productName,
  }) {
    return BannerGreenMessageData(
      height: height ?? this.height,
      width: width ?? this.width,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      icon: icon ?? this.icon,
      bannerMessageType: bannerMessageType ?? this.bannerMessageType,
      wishlistSelected: wishlistSelected ?? this.wishlistSelected,
      productName: productName ?? this.productName,
    );
  }

  BannerGreenMessageData mainData() {
    return BannerGreenMessageData(
      backgroundColor: backgroundColor ?? ColorsOmni.bannerGreen,
      height: height ?? 80.h,
      width: width ?? double.infinity,
      icon: icon ?? OmniIcons.checkGreen,
      bannerMessageType: bannerMessageType ?? BannerMessageType.newWishlist,
      wishlistSelected: wishlistSelected,
      productName: productName,
    );
  }
}
