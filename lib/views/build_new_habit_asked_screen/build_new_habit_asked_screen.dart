import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/view_model/controllers/build_new_habit_controller/build_new_habit_controller.dart';
import 'package:habot_tracker/views/widgets/reusable_description_container/reusable_description_container.dart';
import 'package:habot_tracker/views/widgets/title_widget/title_widget.dart';

class BuildNewHabitAskedScreen extends StatefulWidget {
  const BuildNewHabitAskedScreen({super.key});

  @override
  State<BuildNewHabitAskedScreen> createState() =>
      _BuildNewHabitAskedScreenState();
}

class _BuildNewHabitAskedScreenState extends State<BuildNewHabitAskedScreen> {
  BuildNewHabitController buildNewHabitController =
      Get.put(BuildNewHabitController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff4D57C8),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: TitleWidget(
                    title: "What do you hope to\nachive with Main Habit"),
              ),
              const SizedBox(
                height: 150,
              ),
              GestureDetector(
                onTap: () {
                  buildNewHabitController.goToNext();
                },
                child: ReusableDescriptionContainer(
                    descriptionText: "I want to build good habits"),
              ),
              const SizedBox(
                height: 30,
              ),
              ReusableDescriptionContainer(
                  descriptionText: "I want to be organized"),
              const SizedBox(
                height: 30,
              ),
              ReusableDescriptionContainer(
                  descriptionText: "Not ready to answer")
            ],
          ),
        ),
      ),
    );
  }
}
