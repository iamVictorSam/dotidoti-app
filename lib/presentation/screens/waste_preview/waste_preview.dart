import 'dart:io';

import 'package:camera/camera.dart';
import 'package:dotidoti_app/presentation/screens/success.dart';
import 'package:dotidoti_app/presentation/widgets/default_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WastePreview extends StatefulWidget {
  const WastePreview({
    super.key,
    required this.picture,
  });

  final XFile? picture;

  @override
  State<WastePreview> createState() => _WastePreviewState();
}

class _WastePreviewState extends State<WastePreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Your Pickup Location:',
                  style: TextStyle(color: Colors.grey, fontSize: 22.sp),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'Bema Garden Alakahia',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Image.file(
                  File(widget.picture!.path),
                  height: 400.h,
                  width: 400.h,
                ),
                SizedBox(
                  height: 30.h,
                ),
                DefaultBtn(
                  press: () => Get.to(() => const SuccessScreen()),
                  text: 'Submit',
                ),
              ],
            )),
      ),
    );
  }
}
