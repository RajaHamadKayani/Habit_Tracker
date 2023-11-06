import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/view_model/controllers/habit_progress_counter_controller/habit_progress_counter_controller.dart';

class HabitProgressCalenderList extends StatefulWidget {
  const HabitProgressCalenderList({super.key});

  @override
  State<HabitProgressCalenderList> createState() =>
      _HabitProgressCalenderListState();
}

class _HabitProgressCalenderListState extends State<HabitProgressCalenderList> {
  HabitProgressCounterController habitProgressCounterController =
      Get.put(HabitProgressCounterController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ListView.builder(
          itemCount: AppStyles.days.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: () {
                    habitProgressCounterController.setSelectedIndex(index);
                  },
                  child: Obx(() {
                    return ClipRRect(
                      child: Container(
                        width: 53,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: habitProgressCounterController
                                        .selectedIndex.value ==
                                    index
                                ? const Color(0xffffffff)
                                : const Color(0xff7472FF)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              AppStyles.days[index].toString(),
                              style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.w400,
                                  color: habitProgressCounterController
                                              .selectedIndex.value ==
                                          index
                                      ? const Color(0xff7472FF)
                                      : const Color(0xffffffff)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              AppStyles.date[index].toString(),
                              style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.w500,
                                  color: habitProgressCounterController
                                              .selectedIndex.value ==
                                          index
                                      ? const Color(0xff7472FF)
                                      : const Color(0xffffffff)),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ));
          }),
    );
  }
}
