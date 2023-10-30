import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';

// ignore: must_be_immutable
class HabitLogoWidget extends StatelessWidget {
  String text;
  dynamic bg;
  dynamic fg;
  HabitLogoWidget(
      {super.key, required this.bg, required this.fg, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 130,
          width: 130,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Stack(
              alignment: Alignment.center,
              children: [Image.asset(bg), Image.asset(fg)],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: AppStyles.subTitleMediumWieghtVerySmallSizeWhite,
        ),
        const SizedBox(
          height: 36,
        ),
        
      ],
    );
  }
}
