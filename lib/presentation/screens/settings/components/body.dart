import 'package:dotidoti_app/presentation/helper/constants.dart';
import 'package:dotidoti_app/presentation/screens/settings/components/customCheckTile.dart';
import 'package:dotidoti_app/presentation/screens/settings/components/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsBody extends StatefulWidget {
  const SettingsBody({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingsBody> createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<SettingsBody> {
  bool warnExisting = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.h,
        ),
        title(
          'General',
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomCheckTile(
            title: 'Warn me before exiting',
            value: warnExisting,
            onchanged: (value) {
              setState(() {
                warnExisting = value;
              });
            }),

        const Divider(
          color: kGrey,
        ),
        SizedBox(
          height: 10.h,
        ),
        title(
          'Push Notifications',
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomCheckTile(
            title: 'Saved search alerts',
            value: warnExisting,
            onchanged: (value) {
              setState(() {
                warnExisting = value;
              });
            }),
        CustomCheckTile(
            title: 'Messages',
            value: warnExisting,
            onchanged: (value) {
              setState(() {
                warnExisting = value;
              });
            }),
        CustomCheckTile(
            title: 'Bump up alerts',
            value: warnExisting,
            onchanged: (value) {
              setState(() {
                warnExisting = value;
              });
            }),

        CustomCheckTile(
            title: 'Reviews',
            value: warnExisting,
            onchanged: (value) {
              setState(() {
                warnExisting = value;
              });
            }),
        // SizedBox(
        //   height: 10.h,
        // ),
      ],
    ));
  }
}
