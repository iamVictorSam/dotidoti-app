import 'package:dotidoti_app/presentation/helper/constants.dart';
import 'package:dotidoti_app/presentation/screens/animated_splash/animated_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Doti Doti',
          // You can use the library anywhere in the app even in theme
          theme: theme(),
          home: child,
        );
      },
      child: const LogoSplash(),
    );
  }
}
