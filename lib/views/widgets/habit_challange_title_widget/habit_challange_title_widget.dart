import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
class HabitChallangeTitleWidget extends StatelessWidget {
  const HabitChallangeTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Happy morning challange",style: AppStyles.mediumBodyWhite,),
        const SizedBox(height: 14,),
        Text("7 Days Challanges",style: AppStyles.mediumSmallBodyBlack,)
      ],
    );
  }
}