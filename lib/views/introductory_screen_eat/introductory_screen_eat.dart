import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/view_model/controllers/eat_screen_controller/eat_screen_controller.dart';
import 'package:habot_tracker/views/widgets/introductory_widgets/introductory_widgets.dart';

class IntroductoryScreenEat extends StatefulWidget {
  const IntroductoryScreenEat({super.key});

  @override
  State<IntroductoryScreenEat> createState() => _IntroductoryScreenEatState();
}

class _IntroductoryScreenEatState extends State<IntroductoryScreenEat> {
  EatScreenController eatScreenController = Get.put(EatScreenController());
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
              headline: "Eat Well",
              image: "assets/images/eat_well.png",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff92A3FD),
        onPressed: () {
          eatScreenController.goToNext();
        },
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    );
  }
}
