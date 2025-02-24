import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/atoms/data_models/omni_image_network_data.dart';
import 'package:design_system/atoms/images/omni_image_network.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import '../../atoms/buttons/checkbox_button_row.dart';
import '../../atoms/data_models/primary_image_data.dart';
import '../../foundations/images.dart';
import '../general_manager_quantity.dart';

class ProductItemWishlist extends StatelessWidget {
  const ProductItemWishlist({
    super.key,
    required this.param,
    required this.manageQuantityWishlistItem,
    required this.showPriceWishlistItem,
    this.style,
  });

  final GeneralManagerQuantity manageQuantityWishlistItem;
  final ShowPriceWishlistItem showPriceWishlistItem;
  final ProductItemWishlistParam param;

  final ProductItemWishlistStyle? style;

  ProductItemWishlistStyle get _style => style ?? ProductItemWishlistStyle.defaultStyle();
  double get sizeFactor => 1;

  Widget getImage() {
    if (param.imageURL != null && param.imageURL!.isNotEmpty) {
      return OmniImageNetwork(
        data: OmniImageNetworkData(
          url: param.imageURL,
          widthImage: _style.sizeImage.width,
          heightImage: _style.sizeImage.height,
          errorWidget: SizedBox(
            height: _style.sizeImage.height,
            width: _style.sizeImage.width,
            child: PrimaryImageAsset(
              data: PrimaryImageData(image: ImagesOmni.s99placeholder, fit: BoxFit.fitHeight),
            ),
          ),
          placeholder: SizedBox(
            height: _style.sizeImage.height,
            width: _style.sizeImage.width,
          ),
        ),
      );
    }

    if (param.widgetImage != null) return param.widgetImage!;

    return SizedBox(
      height: _style.sizeImage.height,
      width: _style.sizeImage.width,
      child: PrimaryImageAsset(
        data: PrimaryImageData(image: ImagesOmni.s99placeholder, fit: BoxFit.fitHeight),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _style.backgroundColor,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        margin: _style.padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          getImage(),
                          const SizedBox(width: 8),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 12),
                                  child: AutoSizeText(
                                    param.name,
                                    style: _style.textStyleName,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                showPriceWishlistItem,
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          manageQuantityWishlistItem,
                        ],
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: CheckboxButtonRow(value: param.isCheckBoxSelected, onChanged: param.onChangedCheckBox),
                )
              ],
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class ProductItemWishlistParam {
  final String? imageURL;
  final Widget? widgetImage;
  final String name;
  final String sku;
  final String textDelete;
  final GestureTapCallback? onTap;
  final GestureTapCallback? onTapDelete;
  final Function(bool?)? onChangedCheckBox;
  final bool isCheckBoxSelected;

  ProductItemWishlistParam({
    this.onChangedCheckBox,
    this.isCheckBoxSelected = false,
    this.imageURL,
    this.widgetImage,
    required this.name,
    this.onTap,
    required this.sku,
    this.textDelete = '',
    this.onTapDelete,
  });
}

class ProductItemWishlistStyle {
  const ProductItemWishlistStyle({
    required this.padding,
    required this.backgroundColor,
    required this.textStyleName,
    required this.sizeImage,
  });

  final EdgeInsets padding;
  final Color backgroundColor;
  final TextStyle textStyleName;
  final Size sizeImage;

  static ProductItemWishlistStyle defaultStyle() {
    return ProductItemWishlistStyle(
      padding: const EdgeInsets.all(6),
      backgroundColor: ColorsOmni.white,
      textStyleName: OmniTypographyFoundation.semiBold14Black161615,
      sizeImage: const Size(75, 75),
    );
  }

  static ProductItemWishlistStyle disabledStyle() {
    return ProductItemWishlistStyle(
      padding: const EdgeInsets.all(6),
      backgroundColor: ColorsOmni.white,
      textStyleName: OmniTypographyFoundation.semiBold14SecondaryBlack000000.copyWith(color: ColorsOmni.greyB7B7B7),
      sizeImage: const Size(75, 75),
    );
  }

  //Copy with
  ProductItemWishlistStyle copyWith({
    EdgeInsets? padding,
    Color? backgroundColor,
    TextStyle? textStyleName,
    Size? sizeImage,
  }) {
    return ProductItemWishlistStyle(
      padding: padding ?? this.padding,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textStyleName: textStyleName ?? this.textStyleName,
      sizeImage: sizeImage ?? this.sizeImage,
    );
  }
}
