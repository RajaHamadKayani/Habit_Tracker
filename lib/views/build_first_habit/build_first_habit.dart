import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/view_model/controllers/build_first_controller/build_first_controller.dart';
import 'package:habot_tracker/views/widgets/habit_logo_widget/habit_logo_widget.dart';
import 'package:habot_tracker/views/widgets/title_widget/title_widget.dart';

class BuildFirstHabit extends StatefulWidget {
  const BuildFirstHabit({super.key});

  @override
  State<BuildFirstHabit> createState() => _BuildFirstHabitState();
}

class _BuildFirstHabitState extends State<BuildFirstHabit> {
  BuildFirstController buildFirstController = Get.put(BuildFirstController());
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
                child: TitleWidget(title: "Choose your first habit"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 10, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            buildFirstController.navToNext();
                          },
                          child: HabitLogoWidget(
                            bg: "assets/images/blue_bg.png",
                            fg: "assets/images/drinking_water.png",
                            text: "Drinking water",
                          ),
                        ),
                        HabitLogoWidget(
                          bg: "assets/images/blue_bg.png",
                          fg: "assets/images/morning_walk.png",
                          text: "Morning walk",
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HabitLogoWidget(
                          bg: "assets/images/blue_bg.png",
                          fg: "assets/images/drinking_water.png",
                          text: "Drinking water",
                        ),
                        HabitLogoWidget(
                          bg: "assets/images/blue_bg.png",
                          fg: "assets/images/morning_walk.png",
                          text: "Morning walk",
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HabitLogoWidget(
                          bg: "assets/images/blue_bg.png",
                          fg: "assets/images/drinking_water.png",
                          text: "Drinking water",
                        ),
                        HabitLogoWidget(
                          bg: "assets/images/blue_bg.png",
                          fg: "assets/images/morning_walk.png",
                          text: "Morning walk",
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
