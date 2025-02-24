import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/atoms/buttons/primary_button.dart';
import 'package:design_system/atoms/data_models/primary_button_data.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';

class ProductDetailsBottomSheet extends StatelessWidget {
  const ProductDetailsBottomSheet({super.key, required this.data});

  final ProductDetailsBottomSheetData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: 28,
          top: 10,
          right: 28,
          bottom: 15 + MediaQuery.of(context).viewPadding.bottom),
      decoration: BoxDecoration(
        color: ColorsOmni.white,
        boxShadow: [
          BoxShadow(
            color: ColorsOmni.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: data.showQuantity,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(data.textTitleQuantity,
                  style: OmniTypographyFoundation.medium12Black161615),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Visibility(
                visible: data.showQuantity,
                child: Padding(
                  padding: const EdgeInsets.only(right: 31),
                  child: Container(
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: ColorsOmni.greyF5F5F5),
                      color: ColorsOmni.white,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        GestureDetector(
                          onTap: data.onTapSubtractQuantity,
                          child: Container(
                            width: 38,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blueAccent.withOpacity(0.02),
                            ),
                            child: Icon(Icons.remove,
                                size: 20,
                                color: data.onTapSubtractQuantity == null
                                    ? ColorsOmni.greyB7B7B7
                                    : ColorsOmni.black),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                          width: 1,
                          child: VerticalDivider(
                            color: ColorsOmni.white,
                            thickness: 1,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AutoSizeText(data.textQuantity,
                                  maxLines: 1,
                                  style: OmniTypographyFoundation
                                      .semiBold14Black161615
                                      .copyWith(height: 1)),
                              if (data.textUnit.isNotEmpty)
                                AutoSizeText(data.textUnit,
                                    style: OmniTypographyFoundation
                                        .regular10Black161615,
                                    maxLines: 1,
                                    minFontSize: 10),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                          width: 1,
                          child: VerticalDivider(
                            color: ColorsOmni.white,
                            thickness: 1,
                          ),
                        ),
                        GestureDetector(
                          onTap: data.onTapAddQuantity,
                          child: Container(
                            width: 38,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blueAccent.withOpacity(0.02),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 20,
                              color: data.onTapAddQuantity == null
                                  ? ColorsOmni.greyB7B7B7
                                  : ColorsOmni.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: PrimaryButton(
                data: PrimaryButtonData(
                  height: 41,
                  text: data.textBtnAddToCart,
                  onPressed: data.onTapAddToCart,
                  isDisabled: data.onTapAddToCart == null,
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}

class ProductDetailsBottomSheetData {
  ProductDetailsBottomSheetData({
    this.onTapAddToCart,
    this.onTapAddQuantity,
    this.onTapSubtractQuantity,
    required this.textTitleQuantity,
    required this.textBtnAddToCart,
    required this.textQuantity,
    required this.textUnit,
    this.showQuantity = true,
  });

  final VoidCallback? onTapAddToCart;
  final VoidCallback? onTapAddQuantity;
  final VoidCallback? onTapSubtractQuantity;
  final String textTitleQuantity;
  final String textBtnAddToCart;
  final String textQuantity;
  final String textUnit;
  final bool showQuantity;

  ProductDetailsBottomSheetData copyWith({
    VoidCallback? onTapAddToCart,
    VoidCallback? onTapAddQuantity,
    VoidCallback? onTapSubtractQuantity,
    String? textBtnAddToCart,
    String? textTitleQuantity,
    String? textQuantity,
    String? textUnit,
    bool? showQuantity,
  }) {
    return ProductDetailsBottomSheetData(
      showQuantity: showQuantity ?? this.showQuantity,
      textUnit: textUnit ?? this.textUnit,
      textBtnAddToCart: textBtnAddToCart ?? this.textBtnAddToCart,
      textQuantity: textQuantity ?? this.textQuantity,
      textTitleQuantity: textTitleQuantity ?? this.textTitleQuantity,
      onTapAddToCart: onTapAddToCart ?? this.onTapAddToCart,
      onTapAddQuantity: onTapAddQuantity ?? this.onTapAddQuantity,
      onTapSubtractQuantity:
          onTapSubtractQuantity ?? this.onTapSubtractQuantity,
    );
  }
}
