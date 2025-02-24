import 'package:core/utils/error_handler/error_handler.dart';
import 'package:flutter/widgets.dart';

void secureInitWidget(dynamic Function(Duration timeStamp) request, {String? widgetName}) async {
  return WidgetsBinding.instance.addPostFrameCallback(
    (timeStamp) async {
      try {
        await request(timeStamp);
      } on Exception catch (e, s) {
        ErrorHandlerInternal(errorMessage: 'INIT ERROR WIDGET $widgetName: ${e.toString()}', error: e, stackTrace: s);
      } catch (e,s) {
        ErrorHandlerInternal(
            errorMessage: 'INIT ERROR WIDGET $widgetName: ${e.toString()}', stackTrace: s);
      }
    },
  );
}
