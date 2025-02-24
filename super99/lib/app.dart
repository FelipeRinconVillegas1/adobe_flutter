import 'dart:async';
import 'package:core/utils/init_widget_secure.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:core/utils/router_data.dart';
import 'package:design_system/atoms/visibility_detector_wrapper.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:design_system/responsive/measure_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    LoggerApp().setRef(ref);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 739),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Center(child: Text('data'));
      },
    );
  }
}
