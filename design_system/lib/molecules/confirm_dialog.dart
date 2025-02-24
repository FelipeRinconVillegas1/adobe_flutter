import 'package:design_system/atoms/data_models/primary_button_data.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({
    super.key,
    required this.title,
    required this.contextL,
    this.message,
    this.onCancel,
    this.onConfirm,
    this.barrierDismissible = true,
    this.body,
    this.style,
  });

  final String? message;
  final BuildContext contextL;
  final String title;
  final bool barrierDismissible;
  final PrimaryButtonData? onCancel;
  final PrimaryButtonData? onConfirm;

  /// [body] is used to add additional widget to the dialog body
  final Widget? body;
  final ConfirmDialogStyle? style;

  ConfirmDialogStyle get style0 => style ?? ConfirmDialogStyle.light();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: style0.backgroundColorBody,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              ),
              child: Column(
                children: [
                  Stack(children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: style0.backgroundColorTitle,
                        borderRadius:
                            const BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                      ),
                      child: Padding(
                        padding: style0.paddingTitle,
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                          style: style0.titleTextStyle,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: barrierDismissible,
                      child: Positioned(
                          top: 4,
                          left: 4,
                          child: GestureDetector(
                            onTap: () => Navigator.pop(contextL),
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              child: const Icon(
                                Icons.close,
                                color: ColorsOmni.primaryRed,
                              ),
                            ),
                          )),
                    )
                  ]),
                  Padding(
                    padding: style0.paddingBody,
                    child: Column(
                      children: [
                        Visibility(
                          visible: (message ?? '').isNotEmpty,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 4.w),
                            child: Text(
                              message ?? '',
                              textAlign: TextAlign.center,
                              style: style0.messageTextStyle,
                            ),
                          ),
                        ),
                        if (body != null) ...[
                          body!,
                        ],
                      ],
                    ),
                  ),
                  Visibility(
                    visible: onCancel != null || onConfirm != null,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 16.w),
                      child: Wrap(
                        children: [
                          if (onCancel != null) ...[
                            FractionallySizedBox(
                              widthFactor: 0.44,
                              child: SecondaryButton(
                                data: onCancel!,
                              ),
                            ),
                          ],
                          SizedBox(
                            width: 10.w,
                          ),
                          if (onConfirm != null) ...[
                            FractionallySizedBox(
                              widthFactor: 0.44,
                              child: PrimaryButton(data: onConfirm!),
                            ),
                          ]
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

class ConfirmDialogStyle {
  final TextStyle titleTextStyle;
  final Color backgroundColorTitle;

  final TextStyle messageTextStyle;
  final Color backgroundColorBody;

  final EdgeInsetsGeometry paddingTitle;
  final EdgeInsetsGeometry paddingBody;

  ConfirmDialogStyle({
    required this.titleTextStyle,
    required this.backgroundColorTitle,
    required this.messageTextStyle,
    required this.backgroundColorBody,
    required this.paddingTitle,
    required this.paddingBody,
  });

  ConfirmDialogStyle.light()
      : titleTextStyle = OmniTypographyFoundation.semiBold14SecondaryBlack000000,
        backgroundColorTitle = ColorsOmni.paleGrey,
        messageTextStyle = OmniTypographyFoundation.regular14SecondaryBlack000000,
        backgroundColorBody = Colors.white,
        paddingTitle = EdgeInsets.all(10.w),
        paddingBody = EdgeInsets.symmetric(vertical: 16.w);

  ConfirmDialogStyle copyWith({
    TextStyle? titleTextStyle,
    Color? backgroundColorTitle,
    TextStyle? messageTextStyle,
    Color? backgroundColorBody,
    EdgeInsetsGeometry? paddingTitle,
    EdgeInsetsGeometry? paddingBody,
  }) {
    return ConfirmDialogStyle(
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      backgroundColorTitle: backgroundColorTitle ?? this.backgroundColorTitle,
      messageTextStyle: messageTextStyle ?? this.messageTextStyle,
      backgroundColorBody: backgroundColorBody ?? this.backgroundColorBody,
      paddingTitle: paddingTitle ?? this.paddingTitle,
      paddingBody: paddingBody ?? this.paddingBody,
    );
  }
}
