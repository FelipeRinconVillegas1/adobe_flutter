import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';

class OmniDialogsBaseData {
  OmniDialogsBaseData({
    this.onCancel,
    this.onConfirm,
    this.confirmButtonChild,
    this.cancelButtonChild,
    this.onTopLeftButton,
    this.onTopRightButton,
    this.topRightWidget,
    this.topLeftWidget,
    this.content,
    this.title,
    this.barrierDismissible = true,
    this.backgroundColor,
    this.mainColor,
    this.whenComplete
  });

  final VoidCallback? whenComplete;
  final VoidCallback? onCancel;
  final VoidCallback? onConfirm;
  final Widget? confirmButtonChild;
  final Widget? cancelButtonChild;
  final VoidCallback? onTopLeftButton;
  final VoidCallback? onTopRightButton;
  final Widget? topRightWidget;
  final Widget? topLeftWidget;
  final Widget? content;
  final Widget? title;
  final bool barrierDismissible;
  final Color? backgroundColor;
  final Color? mainColor;

  OmniDialogsBaseData copyWith({
    VoidCallback? onCancel,
    VoidCallback? onConfirm,
    Widget? confirmButtonChild,
    Widget? cancelButtonChild,
    VoidCallback? onTopLeftButton,
    VoidCallback? onTopRightButton,
    VoidCallback? whenComplete,
    Widget? topRightWidget,
    Widget? topLeftWidget,
    bool? barrierDismissible,
    Widget? content,
    Widget? title,
    Color? backgroundColor,
    Color? mainColor,
  }) {
    return OmniDialogsBaseData(
      onCancel: onCancel ?? this.onCancel,
      onConfirm: onConfirm ?? this.onConfirm,
      confirmButtonChild: confirmButtonChild ?? this.confirmButtonChild,
      cancelButtonChild: cancelButtonChild ?? this.cancelButtonChild,
      onTopLeftButton: onTopLeftButton ?? this.onTopLeftButton,
      onTopRightButton: onTopRightButton ?? this.onTopRightButton,
      topRightWidget: topRightWidget ?? this.topRightWidget,
      topLeftWidget: topLeftWidget ?? this.topLeftWidget,
      barrierDismissible: barrierDismissible ?? this.barrierDismissible,
      content: content ?? this.content,
      title: title ?? this.title,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      mainColor: mainColor ?? this.mainColor,
      whenComplete: whenComplete ?? this.whenComplete,
    );
  }

  OmniDialogsBaseData mainTwoButtonsDialog() {
    return OmniDialogsBaseData(
      onCancel: onCancel,
      onConfirm: onConfirm,
      confirmButtonChild: confirmButtonChild,
      cancelButtonChild: cancelButtonChild,
      onTopLeftButton: onTopLeftButton,
      onTopRightButton: onTopRightButton,
      topRightWidget: topRightWidget,
      topLeftWidget: topLeftWidget,
      whenComplete: whenComplete,
      content: content,
      title: title,
      barrierDismissible: barrierDismissible,
      backgroundColor: backgroundColor ?? ColorsOmni.white,
      mainColor: mainColor ?? ColorsOmni.primaryRed,
    );
  }
}
