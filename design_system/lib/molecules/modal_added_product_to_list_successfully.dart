import 'package:design_system/atoms/animation/lottie_custom_animation.dart';
import 'package:design_system/atoms/buttons/primary_button.dart';
import 'package:design_system/atoms/data_models/primary_button_data.dart';
import 'package:design_system/foundations/animations.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:design_system/molecules/bottom_sheet/content_modal_bottom_sheet/content_modal_default_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModalAddedProductToListSuccessfullyParams {
  ModalAddedProductToListSuccessfullyParams({
    required this.textPrimaryButton,
    this.onPressedPrimaryButton,
    required this.headerText,
  });

  final String headerText;
  final String textPrimaryButton;
  final VoidCallback? onPressedPrimaryButton;
}

class ModalAddedProductToListSuccessfully extends ConsumerStatefulWidget {
  const ModalAddedProductToListSuccessfully({super.key, required this.params});
  final ModalAddedProductToListSuccessfullyParams params;

  Future<T?> show<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      useRootNavigator: true,
      backgroundColor: ColorsOmni.transparent,
      barrierColor: ColorsOmni.blackRGBO696969_53,
      builder: (_) => this,
    );
  }

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ModalAddedProductToListSuccessfullyState();
}

class _ModalAddedProductToListSuccessfullyState extends ConsumerState<ModalAddedProductToListSuccessfully> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ContentModalDefaultBottomSheet(
      data: ContentModalDefaultBottomSheetData(
          contentBackgroundColor: ColorsOmni.transparent,
          headerHeight: 0,
          widgetContent: Container(
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: ColorsOmni.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
              ),
              padding: const EdgeInsets.only(top: 18, left: 16, right: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(widget.params.headerText,
                      textAlign: TextAlign.center, style: OmniTypographyFoundation.bold22Black161615),
                  SizedBox(
                    width: 200.w,
                    child: LottieCustomAnimation(
                        params: LottieCustomAnimationParam(
                            pathAsset: OmniLottieAnimations.animationCircleCheckSplash.pathAsset, repeat: true)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      PrimaryButton(
                        data: PrimaryButtonData(
                          height: 40,
                          width: 322.w,
                          text: widget.params.textPrimaryButton,
                          onPressed: widget.params.onPressedPrimaryButton,
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                    ],
                  )
                ],
              ))),
    );
  }
}
