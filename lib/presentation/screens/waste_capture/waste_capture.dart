import 'package:camera/camera.dart';
import 'package:dotidoti_app/presentation/screens/waste_capture/capture.dart';
import 'package:dotidoti_app/presentation/widgets/default_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WasteCapture extends StatefulWidget {
  const WasteCapture({super.key});

  @override
  State<WasteCapture> createState() => _WasteCaptureState();
}

class _WasteCaptureState extends State<WasteCapture> {
  late List<CameraDescription> _cameras;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Waste Capture'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: Get.height * 0.2,
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
                height: 50.h,
              ),
              DefaultBtn(
                // press: () => Get.to(() => CamCapture(cameras: _cameras)),
                press: () async {
                  await availableCameras().then(
                    (value) => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CamCapture(cameras: value),
                      ),
                    ),
                  );
                },
                text: 'Proceed to Waste Capture',
              )
            ],
          ),
        ));
  }
}
