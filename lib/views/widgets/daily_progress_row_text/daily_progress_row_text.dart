import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/view_model/controllers/daily_progress_counter_controller/daily_progress_counter_controller.dart';

class DailyProgressRowText extends StatefulWidget {
  const DailyProgressRowText({super.key});

  @override
  State<DailyProgressRowText> createState() => _DailyProgressRowTextState();
}

class _DailyProgressRowTextState extends State<DailyProgressRowText> {
  DailyProgressCounterController dailyProgressCounterController =
      Get.put(DailyProgressCounterController());
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Activity Progress",
          style: AppStyles.smallHeadlineMediumWhite,
        ),
        Container(
          height: 30,
          width: 150,
          decoration: BoxDecoration(
            color: AppStyles.whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Duration",
                  style: AppStyles.mediumSmallBodyBlack,
                ),
                const SizedBox(width: 5),
                DropdownButton<String>(
                  value: dailyProgressCounterController.selectedDuration,
                  items: dailyProgressCounterController.timeOptions.map((time) {
                    return DropdownMenuItem<String>(
                      value: time.toString(),
                      child: Text(
                        time.toString(),
                        style: AppStyles.mediumSmallBodyBlack,
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dailyProgressCounterController.selectedDuration =
                          newValue ?? "";
                    });
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
