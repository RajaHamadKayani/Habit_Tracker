import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/view_model/controllers/yoga_screen_controller/yoga_screen_controller.dart';
import 'package:habot_tracker/views/widgets/introductory_widgets/introductory_widgets.dart';

class IntroductoryScreenYoga extends StatefulWidget {
  const IntroductoryScreenYoga({super.key});

  @override
  State<IntroductoryScreenYoga> createState() => _IntroductoryScreenYogaState();
}

class _IntroductoryScreenYogaState extends State<IntroductoryScreenYoga> {
  YogaScreenController yogaScreenController = Get.put(YogaScreenController());
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
              description:
                  "Let’s keep burning, to achive yours goals, it\nhurts only temporarily, if you give up now you\nwill be in pain forever",
              headline: "Morning Yoga",
              image: "assets/images/morning_yoga.png",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff92A3FD),
        onPressed: () {
          yogaScreenController.naToNext();
        },
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    );
  }
}
