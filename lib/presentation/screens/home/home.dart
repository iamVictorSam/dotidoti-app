import 'package:dotidoti_app/presentation/helper/constants.dart';
import 'package:dotidoti_app/presentation/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
          actions: [
            GestureDetector(
              onTap: (() => Get.to(const ProfileScreen())),
              child: const CircleAvatar(
                backgroundColor: kLight,
                child: Text('SV', style: TextStyle(color: Colors.black)),
              ),
            ),
            SizedBox(width: 20.w)
          ],
        ),
        body: const HomeBody());
  }
}
