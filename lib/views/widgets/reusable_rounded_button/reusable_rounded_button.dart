import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';

// ignore: must_be_immutable
class ReusableRoundedButton extends StatelessWidget {
  String buttonText;
   ReusableRoundedButton({super.key,required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 51),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(99),
            color: AppStyles.whiteColor),
        child: Center(
          child: Text(buttonText,style: AppStyles.mediumSmallBodyBlack,),
        ),
      ),
    );
  }
}
