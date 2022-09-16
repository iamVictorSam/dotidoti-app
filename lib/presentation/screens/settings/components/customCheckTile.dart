import 'package:custom_check_box/custom_check_box.dart';
import 'package:dotidoti_app/presentation/helper/constants.dart';
import 'package:flutter/material.dart';

class CustomCheckTile extends StatelessWidget {
  const CustomCheckTile(
      {Key? key,
      required this.title,
      required this.value,
      required this.onchanged})
      : super(key: key);

  final String title;
  final bool value;
  final Function(bool _value) onchanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title),
        leading: CustomCheckBox(
          borderColor: kPrimary,
          checkedFillColor: kPrimary,
          value: value,
          onChanged: onchanged,
        ));
  }
}
