import 'package:design_system/atoms/data_models/omni_asset_image.dart';
import 'package:design_system/atoms/images/omni_asset_image.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';

class EmptyListPaymentCard extends StatelessWidget {
  final String addNewCardText;
  final String descriptionAddNewCardText;
  const EmptyListPaymentCard({super.key, required this.addNewCardText, required this.descriptionAddNewCardText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OmniAssetImage(
            data: OmniAssetImageData(path: OmniIcons.noProductFound.pathAsset, widthImage: 257.3, heightImage: 170)),
        const SizedBox(
          height: 30,
        ),
        Text(
          addNewCardText,
          style: OmniTypographyFoundation.regular13.copyWith(
              fontFamily: OmniTypographyFoundation.familyRubik,
              color: ColorsOmni.black464749,
              fontSize: 23),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            descriptionAddNewCardText,
            textAlign: TextAlign.center,
            style: OmniTypographyFoundation.regular13
                .copyWith(fontSize: 15.4, color: ColorsOmni.black464749),
          ),
        ),
      ],
    );
  }
}
