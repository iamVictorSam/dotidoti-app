import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Name',
              hintText: 'Jane Doe',
              prefixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset("assets/icon/flag.svg"),
                  ),
                  Container(
                    height: 20,
                    decoration: const BoxDecoration(color: Colors.black),
                  )
                ],
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
        ],
      ),
    );
  }
}
