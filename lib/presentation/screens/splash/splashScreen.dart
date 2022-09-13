import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dotidoti_app/presentation/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: Get.height * 0.5,
      backgroundColor: kPrimary,
      splash: Image.asset('assets/logo.png'),
      nextScreen: const SplashScreen(),
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}