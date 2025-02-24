import 'package:core/domain/entity/products.dart';
import 'package:core/utils/price_util.dart';
import 'package:design_system/atoms/data_models/omni_image_network_data.dart';
import 'package:design_system/atoms/data_models/price_data.dart';
import 'package:design_system/atoms/images/omni_image_network.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RelatedProductsCardData {
  RelatedProductsCardData({
    this.backgroundColor,
    this.shadowColor,
    this.width,
    this.height,
    this.borderRadius,
    this.padding,
    this.blurRadius,
    this.offset,
    this.child,
  });

  final Color? backgroundColor;
  final Color? shadowColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final EdgeInsets? padding;
  final double? blurRadius;
  final Offset? offset;
  final Widget? child;

  RelatedProductsCardData copyWith({
    Color? backgroundColor,
    Color? shadowColor,
    double? width,
    double? height,
    double? borderRadius,
    EdgeInsets? padding,
    double? blurRadius,
    Offset? offset,
    Widget? child,
  }) {
    return RelatedProductsCardData(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      shadowColor: shadowColor ?? this.shadowColor,
      width: width ?? this.width,
      height: height ?? this.height,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      blurRadius: blurRadius ?? this.blurRadius,
      offset: offset ?? this.offset,
      child: child ?? this.child,
    );
  }

  RelatedProductsCardData mainData() {
    return RelatedProductsCardData(
      backgroundColor: backgroundColor ?? ColorsOmni.white,
      shadowColor: shadowColor ?? ColorsOmni.veryLightShadeGray,
      blurRadius: blurRadius ?? 4,
      offset: offset ?? const Offset(0, 4),
      width: width ?? 150.w,
      height: height ?? 300.h,
      borderRadius: borderRadius ?? 8,
      padding: padding ?? EdgeInsets.symmetric(horizontal: 8.w, vertical: 20.h),
      child: child,
    );
  }

  RelatedProductsCardData relatedProducts(ProductsItems product) {
    final finalPrice = PriceUtil.getPrice(priceRange: product.priceRange);
    final discountPrice = PriceUtil.getPriceBeforeDiscount(priceRange: product.priceRange);
    return mainData().copyWith(
        child: Column(
      children: [
        OmniImageNetwork(
          data: OmniImageNetworkData(
            placeholder: const SizedBox.shrink(),
            errorWidget: const SizedBox.shrink(),
            url: product.image.url,
            heightImage: 60.h,
          ),
        ),
        SizedBox(height: 15.h),
        SizedBox(
          height: 50.h,
          child: Text(
            product.name,
            style: OmniTypographyFoundation.regular13Grey5B636C,
            overflow: TextOverflow.clip,
          ),
        ),
        SizedBox(height: 25.h),
        MediumPriceWidget(
          priceData: PriceData(
            finalPrice: finalPrice,
            discountPrice: discountPrice,
          ),
        ),
      ],
    ));
  }
}
