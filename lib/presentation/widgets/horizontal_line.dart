import 'package:flutter/material.dart';

import '../helper/constants.dart';

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            color: kGrey),
        height: (0.3),
        // width: (10),
      ),
    );
  }
}
