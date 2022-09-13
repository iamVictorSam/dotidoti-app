import 'package:dotidoti_app/presentation/helper/constants.dart';
import 'package:dotidoti_app/presentation/widgets/border_btn.dart';
import 'package:dotidoti_app/presentation/widgets/default_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.sp,
            vertical: 30.sp,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Welcome To Doti-Doti',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 28.sp,
                    color: kPrimary,
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Image.asset('assets/logo.png'),
              const Spacer(),
              DefaultBtn(
                press: () {},
                text: "Sign Up",
              ),
              SizedBox(
                height: 20.h,
              ),
              BorderBtn(
                press: () {},
                text: 'Login',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
