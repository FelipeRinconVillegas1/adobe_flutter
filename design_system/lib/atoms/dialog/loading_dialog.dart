import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'loading_default_animation.dart';

void dismissLoadingOmniDialog({required BuildContext context}) {
  if (Navigator.of(context, rootNavigator: true).canPop()) {
    Navigator.of(context, rootNavigator: true).pop('dialog');
  } else {
    if (kDebugMode) {
      print("!---------:POP BLOCKED:---------!");
    }
  }
}

showLoadingOmniDialog({required BuildContext context}) => showDialog(
    barrierDismissible: false,
    context: context,
    builder: (contextL) {
      return const PopScope(
        canPop: false,
        child: Center(
          child: LoadingDefaultAnimation(
            param: LoadingDefaultAnimationParam.defaultParam(),
          ),
        ),
      );
    });
