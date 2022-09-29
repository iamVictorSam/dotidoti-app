import 'package:dotidoti_app/presentation/screens/about/about.dart';
import 'package:dotidoti_app/presentation/screens/home/home.dart';
import 'package:dotidoti_app/presentation/screens/intro/intro.dart';
import 'package:dotidoti_app/presentation/screens/notifications/notifications.dart';
import 'package:dotidoti_app/presentation/screens/payment_history/payment_history.dart';
import 'package:dotidoti_app/presentation/screens/pickup_history/pickup_history.dart';
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
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 60.r,
                  child: Text(
                    "SV",
                    style: TextStyle(fontSize: 30.sp),
                  )),
              SizedBox(height: 20.h),
              ProfileMenu(
                text: "Dashboard",
                icon: Icons.dashboard,
                press: () => Get.to(() => const HomeScreen()),
              ),
              ProfileMenu(
                text: "Pickup History",
                icon: Icons.rotate_90_degrees_ccw_outlined,
                press: () => Get.to(() => const PickupHistory()),
              ),
              ProfileMenu(
                text: "Payment History",
                icon: Icons.call_to_action_rounded,
                press: () => Get.to(() => const PaymentHistory()),
              ),
              ProfileMenu(
                  text: "Subscriptions",
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
    );
  }
}
