import 'package:design_system/atoms/buttons/primary_button.dart';
import 'package:design_system/atoms/data_models/omni_asset_image.dart';
import 'package:design_system/atoms/data_models/primary_button_data.dart';
import 'package:design_system/atoms/images/omni_asset_image.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';

class ProductNotFound extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  final String buttonText;
  final bool showButtonBack;
  final String imagePath;
  const ProductNotFound(
      {super.key,
      required this.titleText,
      required this.subtitleText,
      required this.buttonText,
      this.showButtonBack = true,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OmniAssetImage(data: OmniAssetImageData(path: imagePath, widthImage: 257.3, heightImage: 238)),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              titleText,
              style: OmniTypographyFoundation.regular24Grey707070,
            ),
          ),
          const SizedBox(
            height: 14.4,
          ),
          Center(
            child: SizedBox(
              width: 300,
              child: Text(
                subtitleText,
                textAlign: TextAlign.center,
                style: OmniTypographyFoundation.regular15Grey707070,
              ),
            ),
          ),
          const SizedBox(
            height: 14.4,
          ),
          Visibility(
            visible: showButtonBack,
            replacement: Container(),
            child: PrimaryButton(
              data: PrimaryButtonData(
                width: 200,
                text: buttonText,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
