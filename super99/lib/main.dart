import 'package:core/domain/entity/environment.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp();
  //FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  const env = String.fromEnvironment('ENVIRONMENT');
  final environment = Environment.fromString(env);
  await LoggerApp().init(
      isDebug: kDebugMode,
      environment: environment,
      callBackToLogCrashlytics: (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack);
      });

  FlutterError.onError = (details) {
    FirebaseCrashlytics.instance.recordFlutterError(details, fatal: true);
    LoggerApp().error(error: details, message: details.exceptionAsString(), stack: details.stack);
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  runApp(
    const ProviderScope(
      observers: [
        ///TODO : COMENTE EL OBSERVER PORQUE HABIAN MUCHOS LOGS
        /* LoggerProvider(
            Logger(
              printer: PrettyPrinter(),
            ),
          )*/
      ],
      child: MyApp(),
    ),
  );
}
