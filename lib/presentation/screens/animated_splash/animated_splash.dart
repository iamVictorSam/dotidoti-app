import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:dotidoti_app/presentation/helper/constants.dart';

import '../splash/splash_screen.dart';

class LogoSplash extends StatefulWidget {
  const LogoSplash({Key? key}) : super(key: key);

  @override
  State<LogoSplash> createState() => _LogoSplashState();
}

class _LogoSplashState extends State<LogoSplash> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: Get.height * 0.5,
      backgroundColor: kPrimary,
      splash: Image.asset('assets/logo.png'),
      nextScreen: SplashScreen(),
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
