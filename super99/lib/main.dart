import 'package:core/domain/entity/environment.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  //await Firebase.initializeApp();
  //FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
/*  await LoggerApp().init(
    isDebug: kDebugMode,
    environment: 'd',
    callBackToLogCrashlytics: (error, stack) {
      //FirebaseCrashlytics.instance.recordError(error, stack);
    },
  );*/

  /*  FlutterError.onError = (details) {
    FirebaseCrashlytics.instance.recordFlutterError(details, fatal: true);
    LoggerApp().error(error: details, message: details.exceptionAsString(), stack: details.stack);
  };*/

  /*  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };*/

  runApp(const ProviderScope(observers: [], child: MyApp()));
}
