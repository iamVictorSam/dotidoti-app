import 'package:dotidoti_app/presentation/widgets/default_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../helper/constants.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({
    Key? key,
    this.amount = "555,200",
    required this.press,
    this.plan = "Weekly",
    this.planDuration = "2 days a week",
  }) : super(key: key);

  final String amount, plan, planDuration;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.w),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
      width: Get.width * 0.9,
      decoration: BoxDecoration(
        color: kVeryLight.withOpacity(0.6),
        borderRadius: BorderRadius.circular(10), // boxShadow: [
        // boxShadow: const [
        //   BoxShadow(
        //     color: Color(0xFFA4A4A8),
        //     offset: Offset(1.0, 5.0),
        //     blurRadius: 7,
        //     spreadRadius: 2,
        //   ),
        // ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            plan,
            style: TextStyle(
              fontSize: 30.sp,
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            planDuration,
            style: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            '₦ $amount',
            style: TextStyle(
              fontSize: 45.sp,
              color: Colors.grey,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          DefaultBtn(
            text: 'Start $plan Plan',
            press: press,
          ),
        ],
      ),
    );
  }
}
