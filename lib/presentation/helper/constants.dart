import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const kGrey = Color(0xff2C3333);
const kPrimary = Color(0xff395B64);
const kLight = Color(0xffA5C9CA);
const kVeryLight = Color(0xffE7F6F2);
const kWhite = Colors.white;



const headStyle = TextStyle(
  color: kGrey,
  fontSize: 15,
  fontWeight: FontWeight.bold,
);

final kGreenLight = const Color(0xFF009933).withOpacity(0.5);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF07498B), Color(0xFF042c54)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);



final headingStyle = TextStyle(
  fontSize: 28.sp,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  height: 1.5,
);
const divide = Divider(
  color: kGrey,
  // height: 1,
  thickness: 1,
);
const defaultDuration = Duration(milliseconds: 250);
final kPadding = 20.w;

// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kFnameNullError = "Please Enter your First name";
const String kLnameNullError = "Please Enter your Last name";
const String kUsernameNullError = "Please Enter your Username";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final textFieldDecoration = InputDecoration(
  labelStyle: const TextStyle(
    color: kGrey,
  ),
  hintStyle: const TextStyle(
    color: kGrey,
  ),
  // floatingLabelBehavior: FloatingLabelAlignment.,
  floatingLabelStyle: const TextStyle(
    color: kGrey,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.h),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: enabledInputBorder(),
);

OutlineInputBorder enabledInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: const BorderSide(color: kPrimary),
  );
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: const BorderSide(color: kGrey),
  );
}

const OutlineInputBorder koutlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
    gapPadding: 10,
    borderSide: BorderSide(color: kGrey, width: 1, style: BorderStyle.solid));

const kContainerBackground = Color(0xff657989);
const kWalletContainerBackgroundG = Color(0xffABA7A7);
const kContainerBackgroundW = Color(0xffF2F2F2);
const knotificationButtonColor = Color(0xffC2E0CC);
const kTextSyleW = TextStyle(color: Colors.white, fontSize: 14);
