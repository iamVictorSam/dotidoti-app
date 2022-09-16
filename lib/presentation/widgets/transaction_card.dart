import 'package:dotidoti_app/presentation/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum TransactionType { withdraw, purchase, credit }

class TransactCard extends StatelessWidget {
  const TransactCard(
      {Key? key,
      required this.name,
      required this.transactInfo,
      required this.amount,
      required this.image,
      required this.type})
      : super(key: key);

  final String name, transactInfo, amount, image;

  final TransactionType type;

  // final TransactionType _type = TransactionType.withdraw;

  _color(storyType) {
    switch (storyType) {
      case TransactionType.credit:
        return Colors.green;

      case TransactionType.purchase:
        return Colors.green;
      case TransactionType.withdraw:
        return Colors.red;
      default:
        Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(image),
            backgroundColor: kGrey,
            radius: 25.h,
          ),
          title: Text(name),
          subtitle: Text(
            transactInfo,
            style: TextStyle(color: kGrey, fontSize: 13.sp),
          ),
          trailing: Text(amount, style: TextStyle(color: _color(type))),
        ),
        const Divider(color: kGrey),
      ],
    );
  }
}
