import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';

// ignore: must_be_immutable
class ReusableDescriptionContainer extends StatelessWidget {
  String descriptionText;
  ReusableDescriptionContainer({super.key, required this.descriptionText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 73,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff818CC5)),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 14),
          child: Text(
            descriptionText,
            style: AppStyles.smallHeadlineMediumWhite,
          ),
        ),
      ),
    );
  }
}
