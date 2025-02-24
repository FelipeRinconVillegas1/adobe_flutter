import 'package:design_system/foundations/images.dart';
import 'package:design_system/molecules/item_product/quantity_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../atoms/data_models/omni_image_network_data.dart';
import '../../atoms/data_models/primary_image_data.dart';
import '../../atoms/images/omni_image_network.dart';
import '../../widgets_omni.dart';

part 'item_product_horizontal_list.dart';
part 'item_product_vertical_list.dart';

class ItemProduct extends StatefulWidget {
   const ItemProduct({super.key, required this.param, this.style, this.direction = Axis.horizontal});

  final ItemProductParam param;
  final ItemProductStyle? style;

  final Axis direction;

  factory ItemProduct.dummyToCalculateSizeHorizontalList() {
    return ItemProduct(
      param: ItemProductParam(
        isDummy: true,
        imageURL: "",
        tagsProduct: {
          'PROMO': null,
          'NUEVO': RibbonsProductStyle.defaultStyle().copyWith(
            backgroundColor: ColorsOmni.violet9599FE,
          ),
        },
        nameProductWithCategoryParam: NameProductWithCategoryParam(
          name: 'Colgate Crema Dental',
          category: 'Fruta',
        ),
        managerQuantityItemCartParam: ManagerQuantityItemCartParam(
          quantity: 1,
          minSaleQty: 1,
          onIncreaseEndTimer: (qty) async {
            return true;
          },
          onDecreaseEndTimer: (qty) async {
            return true;
          },
          onCompleteTimer: (quantity) {},
        ),
        priceItemProductParam: PriceItemProductParam(
            price: '\$ 52,99', discount: '\$ 15,00', unitOfMeasure: '1Kg 1 Und', percentageOff: '%30'),
      ),
      style: ItemProductStyle.horizontalListStyle(),
    );
  }

  factory ItemProduct.dummyToLoadingHorizontalList() {
    return ItemProduct(
      param: ItemProductParam(
        isDummy: true,
        imageURL: '',
        tagsProduct: {
          'PROMO': null,
          'NUEVO': RibbonsProductStyle.defaultStyle().copyWith(
            backgroundColor: ColorsOmni.violet9599FE,
          ),
        },
        nameProductWithCategoryParam: NameProductWithCategoryParam(
          name: 'Colgate Crema Dental x3 Triple Acción 150 ml',
          category: 'Fruta',
        ),
        managerQuantityItemCartParam: ManagerQuantityItemCartParam(
          quantity: 0,
          minSaleQty: 1,
          onIncreaseEndTimer: (qty) async {
            return true;
          },
          onDecreaseEndTimer: (qty) async {
            return true;
          },
        ),
        priceItemProductParam: PriceItemProductParam(
            price: '\$ 52,99', discount: '\$ 15,00', unitOfMeasure: '1Kg 1 Und', percentageOff: '%30'),
      ),
      style: ItemProductStyle.verticalListStyle(),
    );
  }

  @override
  State<ItemProduct> createState() => _ItemProductState();
}

class _ItemProductState extends State<ItemProduct> with AutomaticKeepAliveClientMixin {
  ItemProductStyle get _style =>
      widget.style ??
      (widget.direction == Axis.horizontal ? ItemProductStyle.horizontalListStyle() : ItemProductStyle.verticalListStyle());

  void onTapHandler() {
    widget.param.analyticsOnTap?.call();
    widget.param.onTap?.call();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.direction == Axis.horizontal
        ? _ItemProductHorizontalList(
            param: widget.param.copyWith(onTap: widget.param.onTap != null ? onTapHandler : null),
            style: _style,
          )
        : _ItemProductVerticalList(
            param: widget.param.copyWith(onTap: widget.param.onTap != null ? onTapHandler : null),
            style: _style,
          );
  }

  @override
  bool get wantKeepAlive => true;
}

class ItemProductParam {
  final String imageURL;
  final ManagerQuantityItemCartParam managerQuantityItemCartParam;
  final Map<String, RibbonsProductStyle?>? tagsProduct;
  final NameProductWithCategoryParam nameProductWithCategoryParam;
  final PriceItemProductParam priceItemProductParam;
  final void Function()? onTap;
  final void Function()? analyticsOnTap;
  final bool isDummy;

  ItemProductParam({
    required this.managerQuantityItemCartParam,
    required this.nameProductWithCategoryParam,
    this.tagsProduct,
    required this.priceItemProductParam,
    required this.imageURL,
    this.onTap,
    this.analyticsOnTap,
    this.isDummy = false,
  });

  ItemProductParam copyWith({
    String? imageURL,
    ManagerQuantityItemCartParam? managerQuantityItemCartParam,
    Map<String, RibbonsProductStyle?>? tagsProduct,
    NameProductWithCategoryParam? nameProductWithCategoryParam,
    PriceItemProductParam? priceItemProductParam,
    void Function()? onTap,
    void Function()? analyticsOnTap,
    bool isDummy = false,
  }) {
    return ItemProductParam(
      isDummy: isDummy,
      imageURL: imageURL ?? this.imageURL,
      managerQuantityItemCartParam: managerQuantityItemCartParam ?? this.managerQuantityItemCartParam,
      tagsProduct: tagsProduct ?? this.tagsProduct,
      nameProductWithCategoryParam: nameProductWithCategoryParam ?? this.nameProductWithCategoryParam,
      priceItemProductParam: priceItemProductParam ?? this.priceItemProductParam,
      onTap: onTap ?? this.onTap,
      analyticsOnTap: analyticsOnTap ?? this.analyticsOnTap,
    );
  }
}

class ItemProductStyle {
  final ManagerQuantityItemCartStyle? managerQuantityItemCartStyle;
  final NameProductWithCategoryStyle? nameProductWithCategoryStyle;
  final PriceItemProductStyle? priceItemProductStyle;

  final Widget placeHolder;
  final Widget errorWidget;

  final Size sizeMainImage;

  final Size size;

  ItemProductStyle({
    this.managerQuantityItemCartStyle,
    this.nameProductWithCategoryStyle,
    this.priceItemProductStyle,
    required this.sizeMainImage,
    required this.placeHolder,
    required this.errorWidget,
    required this.size,
  });

  //Default style
  factory ItemProductStyle.horizontalListStyle() {
    return ItemProductStyle(
      managerQuantityItemCartStyle: ManagerQuantityItemCartStyle.defaultStyle(),
      nameProductWithCategoryStyle: NameProductWithCategoryStyle.defaultStyle(),
      priceItemProductStyle: PriceItemProductStyle.defaultStyle(),
      sizeMainImage: Size(120.w, 120.w),
      placeHolder: Container(
        height: 120.w,
        width: 120.w,
        color: ColorsOmni.grey9A9B9E,
      ),
      errorWidget: SizedBox(
        height: 120.w,
        width: 120.w,
        child: PrimaryImageAsset(
          data: PrimaryImageData(image: ImagesOmni.s99placeholder, fit: BoxFit.fitHeight),
        ),
      ),
      size: Size(OmniSizes.sizeWithHorizontalProductList, OmniSizes.sizeHeightHorizontalProductList),
    );
  }

  factory ItemProductStyle.verticalListStyle() {
    return ItemProductStyle(
      managerQuantityItemCartStyle: ManagerQuantityItemCartStyle.defaultStyle(),
      nameProductWithCategoryStyle: NameProductWithCategoryStyle.defaultStyle(),
      priceItemProductStyle: PriceItemProductStyle.defaultStyle(),
      sizeMainImage: Size(120.w, 120.w),
      placeHolder: Container(
        height: 120.w,
        width: 120.w,
        color: ColorsOmni.grey9A9B9E,
      ),
      errorWidget: SizedBox(
        height: 120.w,
        width: 120.w,
        child: PrimaryImageAsset(
          data: PrimaryImageData(image: ImagesOmni.s99placeholder, fit: BoxFit.fitHeight),
        ),
      ),
      size: Size(OmniSizes.sizeWithHorizontalProductList, OmniSizes.sizeHeightHorizontalProductList),
    );
  }
}
