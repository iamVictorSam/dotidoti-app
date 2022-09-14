import 'package:dotidoti_app/presentation/screens/home/home.dart';
import 'package:dotidoti_app/presentation/screens/login/components/form.dart';
import 'package:flutter/material.dart';

import 'package:dotidoti_app/presentation/widgets/default_btn.dart';
import 'package:dotidoti_app/presentation/widgets/horizontal_line.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../signup/components/body.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.1),
              const LoginForm(),
              SizedBox(height: 30.h),
              DefaultBtn(
                text: 'Login',
                press: () => Get.offAll(() => const HomeScreen()),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    HorizontalLine(),
                    Text('  OR LOGIN WITH  ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600)),
                    HorizontalLine(),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              const SignUpWith(),
            ],
          ),
        ),
      ),
    );
  }
}
