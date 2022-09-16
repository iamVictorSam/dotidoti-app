import 'package:dotidoti_app/presentation/screens/about/about.dart';
import 'package:dotidoti_app/presentation/screens/intro/intro.dart';
import 'package:dotidoti_app/presentation/screens/notifications/notifications.dart';
import 'package:dotidoti_app/presentation/screens/profile/components/profile_menu.dart';
import 'package:dotidoti_app/presentation/screens/settings/settings.dart';
import 'package:dotidoti_app/presentation/screens/subscription/subscription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30.h),
                CircleAvatar(
                    radius: 60.r,
                    child: Text(
                      "SV",
                      style: TextStyle(fontSize: 30.sp),
                    )),
                SizedBox(height: 20.h),
                const ProfileMenu(
                    text: "Pickup History",
                    icon: Icons.rotate_90_degrees_ccw_outlined),
                const ProfileMenu(
                    text: "Payment History",
                    icon: Icons.call_to_action_rounded),
                ProfileMenu(
                    text: "Active Subscription",
                    press: () => Get.to(() => const SubscriptionScreen()),
                    icon: Icons.rate_review_rounded),
                ProfileMenu(
                  text: "Notification",
                  icon: Icons.notification_important,
                  press: () => Get.to(() => const NotificationScreen()),
                ),
                ProfileMenu(
                  text: "Settings",
                  icon: Icons.settings,
                  press: () => Get.to(() => const Settings()),
                ),
                ProfileMenu(
                  text: "About",
                  icon: Icons.info,
                  press: () => Get.to(() => const About()),
                ),
                ProfileMenu(
                  text: "Logout",
                  icon: Icons.logout,
                  press: () => Get.offAll(() => const IntroScreen()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
