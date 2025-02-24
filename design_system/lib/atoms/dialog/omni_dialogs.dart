import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/atoms/data_models/primary_image_data.dart';
import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:design_system/atoms/data_models/primary_textfield_data.dart';
import 'package:design_system/foundations/images.dart';
import 'package:design_system/molecules/simple_dialog.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data_models/omni_dialogs_base_data.dart';
import '../data_models/primary_button_data.dart';

class OmniDialogs {
  static permissionAlertDialog(
    BuildContext context, {
    required OmniDialogsBaseData data,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              decoration: BoxDecoration(
                color: data.backgroundColor ?? ColorsOmni.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5.r),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      PrimaryImageAsset(
                        data: PrimaryImageData(
                          image: ImagesOmni.idDialogAlertPng,
                          width: 30.h,
                          height: 30.h,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      if (data.title != null) data.title!,
                    ],
                  ),
                  SizedBox(height: 10.h),
                  if (data.content != null) data.content!,
                  SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (data.cancelButtonChild != null)
                        GestureDetector(
                          onTap: () {
                            data.onCancel;
                            Navigator.pop(context);
                          },
                          child: data.cancelButtonChild!,
                        ),
                      SizedBox(width: 20.w),
                      if (data.confirmButtonChild != null)
                        GestureDetector(
                          onTap: data.onConfirm,
                          child: data.confirmButtonChild!,
                        ),
                    ],
                  )
                ],
              ),
            )
          ],
        );
      },
    ).whenComplete(() {
      if (data.whenComplete != null) data.whenComplete!();
    });
  }

  static showConfirmDialog(
    BuildContext context, {
    required OmniDialogsBaseData data,
  }) {
    final defaultData = data.mainTwoButtonsDialog();
    showDialog(
      context: context,
      barrierDismissible: defaultData.barrierDismissible,
      useSafeArea: false,
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: defaultData.backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                ),
              ),
              child: Column(
                children: [
                  Material(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.r),
                      topRight: Radius.circular(12.r),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: OmniSizesFoundation.wResponsive(15),
                        vertical: OmniSizesFoundation.hResponsive(15),
                      ),
                      child: (defaultData.title != null) ? defaultData.title! : const SizedBox.shrink(),
                    ),
                  ),
                  if (defaultData.content != null) defaultData.content!,
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: OmniSizesFoundation.hResponsive(15),
                      horizontal: OmniSizesFoundation.wResponsive(15),
                    ),
                    margin: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Column(
                      children: [
                        if (defaultData.confirmButtonChild != null) defaultData.confirmButtonChild!,
                        const SizedBox(height: 16).responsive,
                        if (defaultData.cancelButtonChild != null) defaultData.cancelButtonChild!,
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }

  static twoButtonsDialog(
    BuildContext context, {
    required OmniDialogsBaseData data,
  }) {
    final defaultData = data.mainTwoButtonsDialog();
    showDialog(
      context: context,
      barrierDismissible: defaultData.barrierDismissible,
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: defaultData.backgroundColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12.r), topRight: Radius.circular(12.r)),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: OmniSizesFoundation.wResponsive(15),
                      vertical: OmniSizesFoundation.hResponsive(15),
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: ColorsOmni.grey707070,
                          width: 0.2,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (defaultData.topLeftWidget != null) defaultData.topLeftWidget!,
                        if (defaultData.title != null) defaultData.title!,
                        if (defaultData.topRightWidget != null) defaultData.topRightWidget!,
                      ],
                    ),
                  ),
                  if (defaultData.content != null) defaultData.content!,
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: OmniSizesFoundation.hResponsive(15),
                      horizontal: OmniSizesFoundation.wResponsive(15),
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: ColorsOmni.grey707070,
                          width: 0.2,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        if (defaultData.cancelButtonChild != null) defaultData.cancelButtonChild!,
                        const SizedBox(width: 20).responsive,
                        if (defaultData.confirmButtonChild != null) defaultData.confirmButtonChild!,
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }

  static Future<bool?> textfiedlDialog(
    BuildContext context, {
    String? title,
    String? textfieldTitle,
    TextEditingController? controller,
    String? confirmText,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
  }) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        final size = MediaQuery.of(context).size;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width * 0.9,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              decoration: BoxDecoration(
                color: ColorsOmni.white,
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
              ),
              child: Material(
                color: ColorsOmni.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title ?? '',
                            style: OmniTypographyFoundation.bold16,
                          ),
                          SizedBox(height: 15.h),
                          Text(
                            textfieldTitle ?? '',
                            style: OmniTypographyFoundation.regular12,
                          ),
                          SizedBox(height: 10.h),
                          PrimaryTextField(
                            data: PrimaryTextfieldData(
                              textEditingController: controller,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    PrimaryButton(
                      data: PrimaryButtonData(
                        width: double.infinity,
                        text: confirmText,
                        onPressed: () {
                          if (onConfirm != null) onConfirm();
                          Navigator.pop(context, true);
                        },
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SecondaryButton(
                      data: PrimaryButtonData(
                        width: double.infinity,
                        text: cancelText,
                        onPressed: () {
                          if (onCancel != null) onCancel();
                          Navigator.pop(context, false);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  static Future<bool?> questionDialog(
    BuildContext context, {
    String? title,
    Widget? titleIcon,
    String? confirmText,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
  }) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        final size = MediaQuery.of(context).size;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width * 0.9,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              decoration: BoxDecoration(
                color: ColorsOmni.white,
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
              ),
              child: Material(
                color: ColorsOmni.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context, false);
                          },
                          icon: const Icon(
                            Icons.close,
                            color: ColorsOmni.grey707070,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (titleIcon != null) titleIcon,
                          SizedBox(width: 10.w),
                          Expanded(
                            child: AutoSizeText(
                              title ?? '',
                              style: OmniTypographyFoundation.regular14,
                              maxLines: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    PrimaryButton(
                      data: PrimaryButtonData(
                        width: double.infinity,
                        text: confirmText,
                        onPressed: () {
                          if (onConfirm != null) onConfirm();
                          Navigator.pop(context, true);
                        },
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SecondaryButton(
                      data: PrimaryButtonData(
                        width: double.infinity,
                        text: cancelText,
                        onPressed: () {
                          if (onCancel != null) onCancel();
                          Navigator.pop(context, false);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @Deprecated('Use other')
  static productsDialog(
    BuildContext context, {
    required OmniDialogsBaseData data,
    required String title,
    required String clearText,
    String? confirmText,
    String? cancelText,
  }) {
    final confirmButtonChild = Expanded(
      child: PrimaryButton(
        data: PrimaryButtonData(
          onPressed: data.onConfirm,
          child: confirmText == null ? data.confirmButtonChild : null,
          text: confirmText,
        ),
      ),
    );

    final cancelButtonChild = Expanded(
      child: SecondaryButton(
        data: PrimaryButtonData(
          onPressed: data.onCancel,
          child: cancelText == null ? data.cancelButtonChild : null,
          text: cancelText,
        ),
      ),
    );

    final topLeftWidget = Material(
      child: InkWell(
        onTap: data.onTopLeftButton,
        child: const PrimarySvgIconAsset(
          data: PrimarySvgIconData(
            icon: OmniIcons.closeBlue,
          ),
        ),
      ),
    );

    final topRightWidget = Material(
      child: InkWell(
        onTap: data.onTopRightButton,
        child: Text(
          clearText,
          style: OmniTypographyFoundation.semiBold14Blue00158f,
        ),
      ),
    );

    final defaultData = data.mainTwoButtonsDialog().copyWith(
          title: Text(
            title,
            style: OmniTypographyFoundation.semiBold16Grey707070,
          ),
          topLeftWidget: topLeftWidget,
          topRightWidget: topRightWidget,
          confirmButtonChild: confirmButtonChild,
          cancelButtonChild: cancelButtonChild,
        );

    twoButtonsDialog(context, data: defaultData);
  }

  static showSimpleDialog({
    Key? key,
    String? title,
    String? message,
    required BuildContext context,
    Widget? icon,
    Widget? body,
    SimpleDialogOmniStyle? style,
    bool barrierDismissible = true,
  }) {
    showDialog(
      barrierDismissible: barrierDismissible,
      context: context,
      builder: (contextDialog) {
        return SimpleDialogOmni(
          title: title,
          icon: icon,
          body: body,
          style: style,
          description: message,
        );
      },
    );
  }
}
