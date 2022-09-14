import 'package:dotidoti_app/presentation/helper/constants.dart';
import 'package:dotidoti_app/presentation/screens/login/login.dart';
import 'package:dotidoti_app/presentation/screens/signup/signup.dart';
import 'package:dotidoti_app/presentation/widgets/border_btn.dart';
import 'package:dotidoti_app/presentation/widgets/default_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Welcome to \n',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: kPrimary,
                      fontSize: 25.sp),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Doti-Doti',
                      style: TextStyle(
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w900,
                        color: const Color(0xFFEB2326),
                        fontSize: 35.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60.sp,
              ),
              DefaultBtn(
                press: () {
                  Get.to(const LoginScreen());
                },
                text: 'Log in',
              ),
              SizedBox(
                height: 15.h,
              ),
              BorderBtn(
                  press: () => Get.to(
                        () => const SignUpScreen(),
                      ),
                  text: 'Sign up')
            ],
          ),
        ),
      ),
    );
  }
}
