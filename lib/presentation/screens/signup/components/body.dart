import 'package:dotidoti_app/presentation/helper/constants.dart';
import 'package:dotidoti_app/presentation/screens/signup/components/form.dart';
import 'package:dotidoti_app/presentation/widgets/default_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpBody extends StatelessWidget {
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
              SizedBox(height: 20.h),
              const SignUpForm(),
              SizedBox(height: 30.h),
              DefaultBtn(
                text: 'Sign up',
                press: () async {},
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    HorizontalLine(),
                    Text('  OR SIGN UP WITH  ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600)),
                    HorizontalLine(),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              const SignUpWith(),
              SizedBox(height: 30.h),
              RichText(
                text: TextSpan(
                  text: 'By clicking sign up I agree with ',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                        text: 'Terms of service and Privacy Policy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                          decoration: TextDecoration.underline,
                          color: kPrimary,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpWith extends StatelessWidget {
  const SignUpWith({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffdbdbdb),
                    blurRadius: 7,
                    offset: Offset(0, 0.1),
                    spreadRadius: 0.5,
                  ),
                ],
              ),
              child: SvgPicture.asset('assets/icon/google icon.svg')),
          const SizedBox(
            width: (4),
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffdbdbdb),
                    blurRadius: 7,
                    offset: Offset(0, 0.1),
                    spreadRadius: 0.5,
                  ),
                ],
              ),
              child: SvgPicture.asset('assets/icon/facebook.svg')),
        ]);
  }
}

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            color: kGrey),
        height: (0.3),
        // width: (10),
      ),
    );
  }
}
