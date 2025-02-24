import 'package:design_system/atoms/data_models/omni_image_network_data.dart';
import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:design_system/atoms/export.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';

class ItemProductOrder extends StatelessWidget {
  const ItemProductOrder({super.key, required this.param, this.style});

  final ItemProductOrderParam param;
  final ItemProductOrderStyle? style;

  ItemProductOrderStyle get _style => style ?? ItemProductOrderStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: param.onTap,
      child: Container(
        color: _style.colorBackground,
        padding: _style.margin,
        child: Row(
          children: [
            OmniImageNetwork(
                data: OmniImageNetworkData(
              widthImage: _style.sizeMainImage.width,
              heightImage: _style.sizeMainImage.height,
              url: param.mainImageUrl,
              errorWidget: PrimarySvgIconAsset(
                data: PrimarySvgIconData(
                    icon: OmniIcons.productCardPlaceholder,
                    height: _style.sizeMainImage.width,
                    width: _style.sizeMainImage.height),
              ),
              placeholder: PrimarySvgIconAsset(
                data: PrimarySvgIconData(
                    icon: OmniIcons.productCardPlaceholder,
                    height: _style.sizeMainImage.width,
                    width: _style.sizeMainImage.height),
              ),
            )),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    param.name,
                    style: _style.textStyleName,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            param.price,
                            style: _style.textStylePrice,
                          ),
                          Text(
                            param.currency,
                            style: _style.textStyleCurrency,
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Text(
                        param.quantity,
                        style: _style.textStyleQuantity,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemProductOrderParam {
  final String mainImageUrl;
  final String name;
  final String price;
  final String quantity;
  final String currency;
  final Function()? onTap;

  ItemProductOrderParam({
    this.onTap,
    required this.mainImageUrl,
    required this.name,
    required this.price,
    required this.quantity,
    required this.currency,
  });
}

class ItemProductOrderStyle {
  final Size sizeMainImage;
  final EdgeInsets margin;
  final TextStyle textStyleName;
  final TextStyle textStylePrice;
  final TextStyle textStyleCurrency;
  final TextStyle textStyleQuantity;
  final Color colorBackground;

  ItemProductOrderStyle({
    required this.sizeMainImage,
    required this.margin,
    required this.textStyleName,
    required this.textStylePrice,
    required this.textStyleCurrency,
    required this.textStyleQuantity,
    required this.colorBackground,
  });

  ItemProductOrderStyle.defaultStyle()
      : sizeMainImage = const Size(84.5, 84.5),
        margin = const EdgeInsets.all(16),
        textStyleName = OmniTypographyFoundation.regular15Grey5B636C,
        textStylePrice = OmniTypographyFoundation.medium16Grey707070,
        textStyleCurrency = OmniTypographyFoundation.medium11Grey707070,
        textStyleQuantity = OmniTypographyFoundation.regular16Grey949091,
        colorBackground = ColorsOmni.white;
}
