part of 'item_product.dart';

class _ItemProductHorizontalList extends StatelessWidget {
  const _ItemProductHorizontalList({required this.param, required this.style});

  final ItemProductParam param;
  final ItemProductStyle style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: style.size.width,
      child: GestureDetector(
        onTap: param.onTap,
        child: Card(
          color: ColorsOmni.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          surfaceTintColor: ColorsOmni.white,
          child: Stack(
            fit: StackFit.loose,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: param.isDummy ? MainAxisSize.min : MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: style.sizeMainImage.width,
                            height: style.sizeMainImage.height,
                            child: OmniImageNetwork(
                              data: OmniImageNetworkData(
                                widthImage: style.sizeMainImage.width,
                                heightImage: style.sizeMainImage.height,
                                url: param.imageURL,
                                placeholder: style.placeHolder,
                                errorWidget: style.errorWidget,
                              ),
                            ),
                          ),
                        ],
                      ),

                      ///Show tags
                      if (param.tagsProduct != null && param.tagsProduct!.isNotEmpty) ...[
                        Positioned(bottom: 0, left: 12, child: RibbonsList(ribbons: param.tagsProduct!)),
                      ],
                    ],
                  ),

                  ///Show name and category
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: NameProductWithCategory(
                      param: param.nameProductWithCategoryParam,
                      style: style.nameProductWithCategoryStyle,
                    ),
                  ),

                  /// Show price and discount
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: PriceItemProduct(
                      param: param.priceItemProductParam,
                      style: style.priceItemProductStyle,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: -1,
                right: -1,
                child: ManagerQuantityItem(
                    param: param.managerQuantityItemCartParam, style: style.managerQuantityItemCartStyle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
