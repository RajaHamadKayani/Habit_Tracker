import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/view_model/controllers/daily_progress_counter_controller/daily_progress_counter_controller.dart';

class DailyProgressGraphContainer extends StatefulWidget {
  const DailyProgressGraphContainer({super.key});

  @override
  State<DailyProgressGraphContainer> createState() =>
      _DailyProgressGraphContainerState();
}

class _DailyProgressGraphContainerState
    extends State<DailyProgressGraphContainer> {
  DailyProgressCounterController dailyProgressCounterController =
      Get.put(DailyProgressCounterController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        dailyProgressCounterController.goToNext();
      },
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppStyles.whiteColor,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(top: 14, left: 14, right: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1,
                  child: Image.asset("assets/images/vert_progress_1.png")),
              Expanded(
                  flex: 1,
                  child: Image.asset("assets/images/vert_progress_2.png")),
              Expanded(
                  flex: 1,
                  child: Image.asset("assets/images/vert_progress_3.png")),
              Expanded(
                  flex: 1,
                  child: Image.asset("assets/images/vert_progress_4.png")),
              Expanded(
                  flex: 1,
                  child: Image.asset("assets/images/vert_progress_5.png")),
              Expanded(
                  flex: 1,
                  child: Image.asset("assets/images/vert_progress_6.png")),
              Expanded(
                  flex: 1,
                  child: Image.asset("assets/images/vert_progress_7.png")),
            ],
          ),
        ),
      ),
    );
  }
}
