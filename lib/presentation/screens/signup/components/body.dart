import 'package:dotidoti_app/presentation/helper/constants.dart';
import 'package:dotidoti_app/presentation/widgets/default_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: (7.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: (14.5),
              ),
              const Text(
                'Sign Up',
                style: TextStyle(
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: (5.5),
                ),
              ),
              const SizedBox(
                height: (5.7),
              ),
              const SignUpForm(),
              const SizedBox(
                height: (4),
              ),
              DefaultBtn(
                text: 'Sign up',
                press: () async {},
              ),
              const SizedBox(
                height: (4),
              ),
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
              const SizedBox(
                height: (4),
              ),
              const SignUpWith(),
              const SizedBox(
                height: (4),
              ),
              RichText(
                text: const TextSpan(
                  text: 'By clicking sign up I agree with ',
                  style: TextStyle(
                    fontSize: (2),
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                        text: 'Terms of service and Privacy Policy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: (2),
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
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset("assets/icon/flag.svg"),
              ),
            ),
          ),
          const SizedBox(
            height: (5),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'autupsyofjanedoe@gmail.com',
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
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
