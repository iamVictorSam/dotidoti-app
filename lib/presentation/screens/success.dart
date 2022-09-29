import 'package:dotidoti_app/presentation/screens/instant_pickup/instant_pickup.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../helper/constants.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  void initState() {
    Future.delayed(3.seconds, () => Get.to(() => InstantPickup()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 100,
              backgroundColor: Colors.green,
              child: Icon(
                Icons.check,
                color: kWhite,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Success!!!',
              style: TextStyle(
                  fontSize: 22.sp,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w700,
                  color: Colors.green),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'You have successfully uploaded your Waste',
              style: TextStyle(
                  fontSize: 18.sp, letterSpacing: 1, color: Colors.grey),
            ),
          ],
        ),
      )),
    );
  }
}
