import 'package:design_system/foundations/colors.dart';
import 'package:design_system/pages/cart_page.dart';
import 'package:design_system_example/showcase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            useMaterial3: true,
            scaffoldBackgroundColor: ColorsOmni.white,
            canvasColor: ColorsOmni.white,
            colorScheme: ColorScheme.fromSwatch(
              brightness: Brightness.light,
            ),
          ),
          home: const CartPage(),
        );
      },
    );
  }
}
