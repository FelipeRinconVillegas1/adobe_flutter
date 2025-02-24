import 'package:design_system/atoms/buttons/primary_button.dart';
import 'package:design_system/atoms/buttons/secondary_button.dart';
import 'package:design_system/atoms/data_models/primary_button_data.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentModalTipBottomSheet extends StatelessWidget {
  const ContentModalTipBottomSheet({super.key, required this.param});

  final ContentModalTipBottomSheetParam param;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 38,
              decoration: const BoxDecoration(
                color: ColorsOmni.paleGrey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
            ),
            Text(
              param.title,
              style: OmniTypographyFoundation.regular15Grey707070,
            )
          ],
        ),
        Container(
          width: double.infinity,
          color: ColorsOmni.white,
          padding: const EdgeInsets.only(left: 22, right: 22, bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 18),
              Text(
                param.subtitle,
                style: OmniTypographyFoundation.regular11Grey707070,
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 200,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 48),
                      child: SizedBox(
                        width: 90,
                        child: TextField(
                          controller: param.controller,
                          maxLines: 1,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(param.limitInput),
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                          cursorColor: ColorsOmni.primaryRed,
                          autofocus: true,
                          decoration: InputDecoration(
                            hintText: param.hintText,
                            hintStyle: OmniTypographyFoundation.regular15Grey707070,
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text(
                        param.symbolCurrency,
                        style: OmniTypographyFoundation.semiBold14Grey707070,
                      ),
                    ),
                    const Positioned(
                      bottom: 8,
                      left: 45,
                      child: SizedBox(
                        width: 90,
                        child: Divider(
                          height: 1,
                          thickness: 1,
                          color: ColorsOmni.whiteSmoke,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 22),
              Padding(
                padding: EdgeInsets.only(bottom: 18.w),
                child: Wrap(
                  children: [
                    FractionallySizedBox(
                      widthFactor: 0.47,
                      child: SecondaryButton(
                        data: param.dataButtonCancel,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.47,
                      child: PrimaryButton(
                        data: param.dataButtonConfirm,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class ContentModalTipBottomSheetParam {
  final String title;
  final String subtitle;
  final String hintText;
  final String symbolCurrency;
  final int limitInput;

  final PrimaryButtonData dataButtonConfirm;
  final PrimaryButtonData dataButtonCancel;

  final TextEditingController controller;

  ContentModalTipBottomSheetParam({
    required this.title,
    required this.subtitle,
    required this.hintText,
    required this.symbolCurrency,
    required this.limitInput,
    required this.dataButtonConfirm,
    required this.dataButtonCancel,
    required this.controller,
  });
}
