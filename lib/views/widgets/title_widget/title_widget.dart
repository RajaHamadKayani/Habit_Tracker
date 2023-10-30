import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';

// ignore: must_be_immutable
class TitleWidget extends StatelessWidget {
  String title;
  TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 16, right: 16),
      child: Text(
        title,
        style: AppStyles.headlineMediumWhite,
      ),
    );
  }
}
