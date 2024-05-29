import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:global_currency/view/home_activity.dart';
import 'package:global_currency/view/splash/splash_screen.dart';
import 'package:global_currency/view/trading%20screens/main_home_screen.dart';
import 'package:global_currency/theme/theme.dart';


void main() {
  runApp(const MyApp());
}

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
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          //   textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          // ),
          themeMode: ThemeMode.system,
          theme:  TAppTheme.lightTheme,
          darkTheme:  TAppTheme.darkTheme,
          home: child,
        );
      },
      child: const SplashScreen(),
    );
  }
}
