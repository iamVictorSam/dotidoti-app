import 'package:dotidoti_app/presentation/helper/constants.dart';
import 'package:dotidoti_app/presentation/widgets/wallet_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:get/get.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.h,
          ),
          const WalletCard(),
          SizedBox(
            height: Get.height * 0.15,
          ),
          GlowButton(
            onPressed: () {},
            color: kPrimary,
            height: 50.h,
            width: Get.width,
            child: Text(
              'Instant Pickup',
              style: TextStyle(color: kWhite, fontSize: 18.sp),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest Pickups',
                style: TextStyle(
                    fontSize: 16.sp,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600),
              ),
              TextButton.icon(
                  icon: Text(
                    'See All',
                    style: TextStyle(color: kPrimary, fontSize: 16.sp),
                  ),
                  label: const Icon(
                    Icons.arrow_forward_ios,
                    color: kPrimary,
                  ),
                  onPressed: () {}),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          //Todo: make the container scrollable
          Column(
            children: List.generate(
              3,
              (int i) => ListTile(
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
        ],
      ),
    );
  }
}
