import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helper/constants.dart';

class NotificationDetails extends StatelessWidget {
  const NotificationDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: 60.h,
                  width: 60.h,
                  decoration: BoxDecoration(
                    color: msgGrey,
                    image: const DecorationImage(
                      image: AssetImage('assets/icon/ic_check.png'),
                      // fit: BoxF
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Welcome to Doti Doti',
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  '4 weeks ago',
                  style: TextStyle(fontSize: 13.sp, color: kGrey),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: msgGrey,
                    borderRadius: BorderRadius.circular(10),
                    border: null,
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Volutpat, eget neque eros cursus proin quis. Diam curabitur ac faucibus eget. Etiam integer feugiat mauris orci viverra vulputate porta sociis odio. Eu, uTincidunt adipiscing proin ac. \n \n Ullamcorper orci ipsum, eget odio varius eu, nullam felis, egestas. Vulputate in in nunc, ut sit. Sollicitudin pulvinar quisque ut dignissim et nibh quam volutpat purus. Donec sit vitae ipsum id et scelerisque massa sit.'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
