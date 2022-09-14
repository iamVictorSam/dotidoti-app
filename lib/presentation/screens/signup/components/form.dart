import 'package:dotidoti_app/presentation/screens/login/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../helper/constants.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Name',
              hintText: 'Jane Doe',
              prefixIcon: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset("assets/icon/flag.svg"),
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'autupsyofjanedoe@gmail.com',
              prefixIcon: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset(
                  "assets/icon/mail-line.svg",
                ),
              ),
              // Icon(Icons.mail_outlined, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(
              labelText: 'Password',
              hintText: '* * * * * *',
              prefixIcon: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.lock_outlined,
                  color: Colors.black,
                ),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.remove_red_eye,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(
              labelText: 'Confirm password',
              hintText: '* * * * * *',
              prefixIcon: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.lock_outlined,
                  color: Colors.black,
                ),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.remove_red_eye,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          RichText(
            text: TextSpan(
              text: 'Have an account? ',
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: 'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    decoration: TextDecoration.underline,
                    color: kPrimary,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.to(() => const LoginScreen()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
