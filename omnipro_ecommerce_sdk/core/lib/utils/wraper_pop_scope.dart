import 'dart:io';
import 'package:flutter/material.dart';

/// WrapperPopScope is a widget that wraps the child widget with a PopScope.
/// The PopScope will pop the current route if the back button is pressed.
/// If the keyboard is visible, the PopScope will hide the keyboard instead.
/// This is useful for pages that have a form that should be dismissed when the back button is pressed.
class WrapperPopScope extends StatelessWidget {
  const WrapperPopScope({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: Platform.isIOS,
      onPopInvokedWithResult: (invocation,other) {
        if (Platform.isIOS) return;
        bool keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;
        if (keyboardVisible) {
          FocusScope.of(context).requestFocus(FocusNode());
          return;
        }
        Navigator.of(context).pop();
      },
      child: child,
    );
  }
}
