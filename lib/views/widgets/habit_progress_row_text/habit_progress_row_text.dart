import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
class HabitProgressRowText extends StatelessWidget {
  const HabitProgressRowText({super.key});

  @override
  Widget build(BuildContext context) {
    return    Padding(
                padding: const EdgeInsets.only(top: 44, left: 16, right: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Latest Activity",
                          style: AppStyles.subTitleMediumWieghtSmallSizeWhite,
                        ),
                        Text(
                          "See More",
                          style: AppStyles.subTitleMediumWieghtSmallSizeWhite,
                        ),
                      ],
                   )
                  ],
                ),
              );
  }
}