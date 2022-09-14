import 'package:dotidoti_app/presentation/widgets/border_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/constants.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({
    Key? key,
    this.amount = "5,200",
  }) : super(key: key);

  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimary,
        borderRadius: BorderRadius.circular(10), // boxShadow: [
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFA4A4A8),
            offset: Offset(1.0, 5.0),
            blurRadius: 7,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: (5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wallet Balance',
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: (1.5),
            ),
            Row(
              children: [
                Text(
                  '₦ $amount',
                  style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.remove_red_eye,
                      color: Colors.white, size: 19.sp),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 150.w,
                child: BorderBtn(
                  text: 'Fund wallet',
                  press: () {},
                  color: kWhite,
                  textColor: kWhite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
