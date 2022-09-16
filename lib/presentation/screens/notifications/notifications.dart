import 'package:dotidoti_app/presentation/helper/constants.dart';
import 'package:dotidoti_app/presentation/screens/notification_details/notification_details.dart';
import 'package:dotidoti_app/presentation/screens/notifications/components/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // NotifyCard(),
                NotifyCard(
                  press: () {
                    Get.to(const NotificationDetails());
                  },
                  title: 'Gold badge',
                  message: 'Lorem ipsum dolor sit',
                  time: '5:39 PM',
                  image: 'assets/icon/ic_check.png',
                  isOpened: false,
                ),
                const Divider(
                  color: msgGrey,
                ),
                NotifyCard(
                  title: 'Gold badge',
                  message: 'Lorem ipsum dolor sit',
                  time: '4 weeks ago',
                  image: 'assets/icon/ic_check.png',
                  isOpened: true,
                  press: () {},
                ),
              ],
            ),
          ),
        ));
  }
}
