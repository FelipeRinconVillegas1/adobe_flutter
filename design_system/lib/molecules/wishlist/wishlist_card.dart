import 'package:core/domain/entity/wishlist.fr.dart';
import 'package:core/utils/price_util.dart';
import 'package:design_system/atoms/data_models/omni_image_network_data.dart';
import 'package:design_system/atoms/data_models/primary_button_data.dart';
import 'package:design_system/atoms/images/omni_image_network.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../atoms/data_models/price_data.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({
    super.key,
    required this.data,
  });

  final WishlistCardData data;

  @override
  Widget build(BuildContext context) {
    final mainData = data.maindData();
    return Container(
      height: mainData.height,
      width: mainData.width,
      padding: mainData.padding,
      decoration: BoxDecoration(
        color: mainData.backgroundColor,
        borderRadius: BorderRadius.circular(mainData.borderRadius ?? 0),
        boxShadow: mainData.boxShadow,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mainData.wishList?.name ?? '',
                    style: mainData.titleStyle,
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    '${data.wishList?.items.items.length ?? 0} ${data.itemsText}',
                    style: mainData.bodyStyle,
                  ),
                ],
              ),
              InkWell(
                onTap: mainData.onEdit,
                child: Text(
                  mainData.editText ?? '',
                  style: mainData.editStyle,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          if (data.wishList?.items.items.isNotEmpty ?? false)
            Container(
              height: 0.2.h,
              color: ColorsOmni.grey707070,
            ),
          ...List.generate(
            mainData.wishList?.items.items.length ?? 0,
            (index) {
              final item = mainData.wishList?.items.items[index];
              if (item == null) return const SizedBox.shrink();
              return WishlistProductCard(data: mainData, item: item);
            },
          ),
        ],
      ),
    );
  }
}

class WishlistProductCard extends StatelessWidget {
  const WishlistProductCard({
    super.key,
    required this.data,
    required this.item,
  });

  final WishlistCardData data;
  final WishListItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: data.width,
      padding: data.padding,
      margin: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: data.backgroundColor,
        borderRadius: BorderRadius.circular((data.borderRadius ?? 0) * 0.5),
        boxShadow: [
          BoxShadow(color: ColorsOmni.darkShadow.withOpacity(0.2), spreadRadius: -2, blurRadius: 6),
        ],
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              if (data.onProductTap != null) data.onProductTap!(item);
            },
            child: Row(
              children: [
                OmniImageNetwork(
                  data: OmniImageNetworkData(
                    placeholder: const SizedBox.shrink(),
                    errorWidget: const SizedBox.shrink(),
                    url: item.product.image.url,
                    heightImage: 80.h,
                    widthImage: 80.h,
                  ),
                ),
                SizedBox(width: 30.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.product.name,
                        style: data.bodyStyle,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      SizedBox(height: 5.h),
                      BigPriceWidget(
                        priceData: PriceData(
                          discountPrice: PriceUtil.getPriceBeforeDiscount(priceRange: item.product.priceRange),
                          finalPrice: PriceUtil.getPrice(
                            priceRange: item.product.priceRange,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PrimaryButton(
                data: PrimaryButtonData(
                  text: data.addToCartText,
                  onPressed: () {
                    if (data.onAddToCart != null) data.onAddToCart!(item);
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  if (data.onDelete != null) data.onDelete!(item);
                },
                child: Text(
                  'Eliminar',
                  style: data.bodyStyle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WishlistCardData {
  WishlistCardData({
    this.backgroundColor,
    this.boxShadow,
    this.wishList,
    this.onEdit,
    this.borderRadius,
    this.titleStyle,
    this.bodyStyle,
    this.editStyle,
    this.editText,
    this.height,
    this.width,
    this.padding,
    this.onAddToCart,
    this.onDelete,
    this.onProductTap,
    this.itemsText,
    this.addToCartText,
    this.deleteText,
  });

  final Color? backgroundColor;
  final List<BoxShadow>? boxShadow;
  final WishList? wishList;
  final VoidCallback? onEdit;
  final double? borderRadius;
  final TextStyle? titleStyle;
  final TextStyle? bodyStyle;
  final TextStyle? editStyle;
  final String? editText;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Function(WishListItem)? onAddToCart;
  final Function(WishListItem)? onDelete;
  final Function(WishListItem)? onProductTap;
  final String? itemsText;
  final String? addToCartText;
  final String? deleteText;

  WishlistCardData copyWith({
    Color? backgroundColor,
    List<BoxShadow>? boxShadow,
    WishList? wishList,
    VoidCallback? onEdit,
    double? borderRadius,
    TextStyle? titleStyle,
    TextStyle? bodyStyle,
    TextStyle? editStyle,
    String? editText,
    double? height,
    double? width,
    EdgeInsetsGeometry? padding,
    Function(WishListItem)? onAddToCart,
    Function(WishListItem)? onDelete,
    Function(WishListItem)? onProductTap,
    String? itemsText,
    String? addToCartText,
    String? deleteText,
  }) {
    return WishlistCardData(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      boxShadow: boxShadow ?? this.boxShadow,
      wishList: wishList ?? this.wishList,
      onEdit: onEdit ?? this.onEdit,
      borderRadius: borderRadius ?? this.borderRadius,
      titleStyle: titleStyle ?? this.titleStyle,
      bodyStyle: bodyStyle ?? this.bodyStyle,
      editStyle: editStyle ?? this.editStyle,
      editText: editText ?? this.editText,
      height: height ?? this.height,
      width: width ?? this.width,
      padding: padding ?? this.padding,
      onAddToCart: onAddToCart ?? this.onAddToCart,
      onDelete: onDelete ?? this.onDelete,
      onProductTap: onProductTap ?? this.onProductTap,
      itemsText: itemsText ?? this.itemsText,
      addToCartText: addToCartText ?? this.addToCartText,
      deleteText: deleteText ?? this.deleteText,
    );
  }

  WishlistCardData maindData() {
    return WishlistCardData(
      height: height,
      width: width,
      editText: editText,
      padding: padding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      backgroundColor: backgroundColor ?? ColorsOmni.white,
      boxShadow: boxShadow ??
          [
            BoxShadow(
              color: ColorsOmni.darkShadow.withOpacity(0.5),
              blurRadius: 6,
              spreadRadius: -2,
            ),
          ],
      wishList: wishList,
      onEdit: onEdit,
      borderRadius: borderRadius ?? 20.h,
      bodyStyle: bodyStyle ?? OmniTypographyFoundation.semiBold14Grey707070,
      titleStyle: titleStyle ?? OmniTypographyFoundation.bold16SecondaryBlack000000,
      editStyle: editStyle ?? OmniTypographyFoundation.semiBold14PrimaryRedFF001D,
      onAddToCart: onAddToCart,
      onDelete: onDelete,
      onProductTap: onProductTap,
      itemsText: itemsText,
      addToCartText: addToCartText,
      deleteText: deleteText,
    );
  }
}
