import 'package:dotidoti_app/presentation/screens/select_payment/select_payment.dart';
import 'package:dotidoti_app/presentation/widgets/subscription_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SubBody extends StatefulWidget {
  const SubBody({Key? key}) : super(key: key);

  @override
  _SubBodyState createState() => _SubBodyState();
}

class _SubBodyState extends State<SubBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Choose A Plan \n That Suits you",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "We set out with a single mission, to create the easiest disposal service for our clients",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 128, 128, 128)),
              ),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
        // CarouselSlider(
        //   options: CarouselOptions(
        //     aspectRatio: 16 / 25,
        //     // height: 330.h,
        //     viewportFraction: 0.8,
        //     enlargeCenterPage: true,
        //     enableInfiniteScroll: false,
        //   ),
        //   items: [
        //     1,
        //     2,
        //     3,
        //   ].map((i) {
        //     return Builder(
        //       builder: (BuildContext context) {
        //         return SubscriptionCard(
        //           press: () {},
        //         );
        //       },
        //     );
        //   }).toList(),
        // ),

        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: SizedBox(
            width: Get.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SubscriptionCard(
                    amount: "5,000",
                    press: () => Get.to(() => const SelectPaymentScreen()),
                  ),
                  SubscriptionCard(
                    plan: "Monthly",
                    amount: '15,000',
                    planDuration: "4 pickups a month",
                    press: () {},
                  ),
                  SubscriptionCard(
                    plan: "Annual",
                    planDuration: "48 pickups annually",
                    press: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
