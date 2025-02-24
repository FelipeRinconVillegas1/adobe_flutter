import 'package:design_system/atoms/buttons/radio_button.dart';
import 'package:design_system/atoms/data_models/primary_image_data.dart';
import 'package:design_system/atoms/icons/primary_image_asset.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:design_system/foundations/images.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemPaymentCard extends StatefulWidget {
  const ItemPaymentCard({
    super.key,
    required this.param,
  });

  final ItemPaymentCardParams param;

  @override
  State<ItemPaymentCard> createState() => _ItemPaymentCardState();
}

class _ItemPaymentCardState extends State<ItemPaymentCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        height: 77,
        decoration: BoxDecoration(
          color: ColorsOmni.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: const [
            BoxShadow(
              color: Color(0x29000000),
              offset: Offset(0, 0),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Stack(
          children: [
            if(widget.param.isCardInCache)
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: ColorsOmni.primaryRed,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12.r),
                      bottomLeft: Radius.circular(12.r),
                    ),
                  ),
                  child: Text(
                    'Recien agregada',
                    style: OmniTypographyFoundation.bold8WhiteFFFFFF,
                  ),
                ),
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      PrimaryImageAsset(
                        data: PrimaryImageData(
                          image: widget.param.imageCardType,
                          height: 30,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.param.textCardNumber,
                                style: OmniTypographyFoundation.bold12Black161615,
                              ),
                            ],
                          )),
                    ],
                  ),
                  RadioButton<bool>(
                      groupValue: true,
                      value: widget.param.isSelected,
                      onChanged: widget.param.onChanged,
                      style: RadioButtonStyle(
                          fillColorSelected: ColorsOmni.primaryRed,
                          fillColorUnselected: ColorsOmni.greyB7B7B7,
                          borderColorUnselected: ColorsOmni.greyB7B7B7)),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}

class ItemPaymentCardParams {
  final String textCardNumber;
  final ImagesOmni imageCardType;
  final bool isSelected;
  final Function(bool?)? onChanged;
  final bool isCardInCache;

  ItemPaymentCardParams({
    required this.textCardNumber,
    required this.imageCardType,
    required this.isSelected,
    required this.isCardInCache,
    this.onChanged,
  });
}
