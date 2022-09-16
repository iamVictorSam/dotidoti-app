import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../helper/constants.dart';

class NotifyCard extends StatelessWidget {
  const NotifyCard(
      {Key? key,
      required this.title,
      required this.message,
      required this.image,
      required this.time,
      this.useTick = false,
      this.isOpened = true,
      required this.press})
      : super(key: key);

  final String title, message, image, time;
  final bool isOpened, useTick;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: CircleAvatar(
        backgroundImage: AssetImage(
          image,
        ),
        backgroundColor: kGrey,
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          // Spacer(),
          Text(
            time,
            style: TextStyle(color: kGrey, fontSize: 12.sp),
          )
        ],
      ),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          useTick
              ? const Icon(
                  Icons.done_all_rounded,
                  color: kPrimary,
                  size: 18,
                )
              : CircleAvatar(
                  radius: 5,
                  backgroundColor: isOpened ? kGrey : kPrimary,
                ),
          SizedBox(
            width: 7.w,
          ),
          Flexible(
            child: Text(
              message,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: kGrey),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
