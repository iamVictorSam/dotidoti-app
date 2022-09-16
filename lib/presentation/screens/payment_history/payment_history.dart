import 'package:dotidoti_app/presentation/widgets/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helper/constants.dart';

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Payment History')),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Today',
                    style: TextStyle(color: kGrey),
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              const TransactCard(
                  name: 'You',
                  transactInfo: 'Added funds',
                  amount: 'N 7,000 ',
                  image: 'assets/icon/ic_check.png',
                  type: TransactionType.credit),
              const TransactCard(
                  name: 'You',
                  transactInfo: 'Bought item',
                  amount: 'N 4,000 ',
                  image: 'assets/icon/ic_check.png',
                  type: TransactionType.purchase),
              const TransactCard(
                  name: 'You',
                  transactInfo: 'Added funds',
                  amount: '-N 2,000 ',
                  image: 'assets/icon/ic_check.png',
                  type: TransactionType.withdraw),
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Yesterday',
                    style: TextStyle(color: kGrey),
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              const TransactCard(
                  name: 'You',
                  transactInfo: 'Added funds',
                  amount: 'N 7,000 ',
                  image: 'assets/icon/ic_check.png',
                  type: TransactionType.credit),
              const TransactCard(
                  name: 'You',
                  transactInfo: 'Bought item',
                  amount: 'N 4,000 ',
                  image: 'assets/icon/ic_check.png',
                  type: TransactionType.purchase),
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Last Week',
                    style: TextStyle(color: kGrey),
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              const TransactCard(
                  name: 'You',
                  transactInfo: 'Added funds',
                  amount: '-N 2,000 ',
                  image: 'assets/icon/ic_check.png',
                  type: TransactionType.withdraw)
            ],
          ),
        ));
  }
}
