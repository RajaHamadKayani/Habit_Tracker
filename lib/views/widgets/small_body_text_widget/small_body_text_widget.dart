import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';

// ignore: must_be_immutable
class SmallBodyTextWidget extends StatelessWidget {
  String text;
  SmallBodyTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.subTitleMediumWieghtVerySmallSizeWhite,
    );
  }
}
