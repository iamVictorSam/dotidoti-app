import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PickupHistory extends StatelessWidget {
  const PickupHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Pickup History")),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              children: List.generate(
                20,
                (index) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 15.r,
                    child: const Icon(Icons.check),
                  ),
                  contentPadding: EdgeInsets.zero,
                  title: const Text('28th Sept, 2022'),
                  trailing: const Text('09:29 am'),
                ),
              ),
            ),
          ),
        ));
  }
}
