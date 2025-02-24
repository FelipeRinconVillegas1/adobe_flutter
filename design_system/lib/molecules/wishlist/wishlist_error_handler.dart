import 'package:core/utils/error_handler/error_handler.dart';
import 'package:design_system/atoms/snackbar/snackbar_message.dart';
import 'package:flutter/material.dart';

void wishlistErrorHandler(ErrorHandler error, BuildContext context) {
  if (error is ErrorHandlerInternal) return;

  error as ErrorHandlerExternal;

  ScaffoldMessenger.of(context)
      .showSnackBar(snackBarMessage(message: error.errorMessage))
      .closed
      .then((value) => ScaffoldMessenger.of(context).clearSnackBars());
}
