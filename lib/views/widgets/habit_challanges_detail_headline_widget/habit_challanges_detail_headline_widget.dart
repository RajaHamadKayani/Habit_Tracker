import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';

class HabitChallangesDetailHeadlineWidget extends StatelessWidget {
  const HabitChallangesDetailHeadlineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {},
          child: ContainerWidget(
            height: 32,
            width: 32,
            color: 0xffffffff,
            borderRadius: 12,
            widget: const Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Text(
          "CHALLANGES",
          style: AppStyles.mediumSizedWhiteHeading,
        ),
        ContainerWidget(
            height: 85,
            width: 85,
            widget: Image.asset(
              "assets/images/habit_challange_trailing_logo.png",
              fit: BoxFit.cover,
            ))
      ],
    );
  }
}
