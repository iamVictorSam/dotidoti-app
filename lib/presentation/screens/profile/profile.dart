import 'package:dotidoti_app/presentation/screens/profile/components/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                const ProfileMenu(
                    text: "Active Subscription",
                    icon: Icons.rate_review_rounded),
                const ProfileMenu(
                    text: "Notification", icon: Icons.notification_important),
                const ProfileMenu(text: "Settings", icon: Icons.settings),
                const ProfileMenu(text: "About", icon: Icons.info),
                const ProfileMenu(text: "Logout", icon: Icons.logout),
              ],
            ),
          ),
        ),
      ),
    );
  }
}