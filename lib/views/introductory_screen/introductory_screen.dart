import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/view_model/controllers/track_screen_controller/track_screen_controller.dart';
import 'package:habot_tracker/views/widgets/introductory_widgets/introductory_widgets.dart';

class IntroductoryScreenGoal extends StatefulWidget {
  const IntroductoryScreenGoal({Key? key}) : super(key: key);

  @override
  State<IntroductoryScreenGoal> createState() => _IntroductoryScreenGoalState();
}

class _IntroductoryScreenGoalState extends State<IntroductoryScreenGoal> {
  TrackScreenController trackScreenController =
      Get.put(TrackScreenController());
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IntroductoryWidget(
              description: "Don't worry if you have trouble determining your\n"
                  "goals, We can help you determine your goals and\ntrack your goals",
              headline: "Track Your Goal",
              image: "assets/images/track_goal.png",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff92A3FD),
        onPressed: () {
          trackScreenController.navToNext();
        },
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    );
  }
}
