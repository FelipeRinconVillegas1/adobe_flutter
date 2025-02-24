import 'package:design_system/atoms/data_models/primary_button_data.dart';
import 'package:design_system/molecules/confirm_dialog.dart';
import 'package:flutter/material.dart';

showConfirmOmniDialog({
  required BuildContext context,
  String? message,
  required String title,
  PrimaryButtonData? onCancel,
  PrimaryButtonData? onConfirm,
  bool barrierDismissible = true,

  /// [body] is used to add additional widget to the dialog body
  Widget? body,
  ConfirmDialogStyle? style,
}) {
  showDialog(
      barrierDismissible: barrierDismissible,
      context: context,
      builder: (contextL) {
        return ConfirmDialog(
          title: title,
          contextL: contextL,
          message: message,
          onCancel: onCancel,
          onConfirm: onConfirm,
          barrierDismissible: barrierDismissible,
          body: body,
          style: style,
        );
      });
}
