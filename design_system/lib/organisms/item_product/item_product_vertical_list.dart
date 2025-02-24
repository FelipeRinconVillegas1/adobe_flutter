part of 'item_product.dart';

class _ItemProductVerticalList extends StatelessWidget {
  const _ItemProductVerticalList({required this.param, required this.style});

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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(right: 12, top: 23, bottom: 23),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 33, right: 46),
                        child: SizedBox(
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
                      ),
                      Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            ///Show tags
                            if (param.tagsProduct != null && param.tagsProduct!.isNotEmpty) ...[
                              RibbonsList(ribbons: param.tagsProduct!),
                            ],

                            ///Show name and category
                            NameProductWithCategory(
                              param: param.nameProductWithCategoryParam,
                              style: style.nameProductWithCategoryStyle,
                            ),

                            /// Show price and discount
                            PriceItemProduct(
                              param: param.priceItemProductParam,
                              style: style.priceItemProductStyle,
                            ),
                          ]))
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
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
