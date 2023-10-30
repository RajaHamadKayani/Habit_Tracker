import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/view_model/controllers/burn_screen_controller/burn_screen_controller.dart';
import 'package:habot_tracker/views/widgets/introductory_widgets/introductory_widgets.dart';

class IntroductoryScreenBurn extends StatefulWidget {
  const IntroductoryScreenBurn({super.key});

  @override
  State<IntroductoryScreenBurn> createState() => _IntroductoryScreenBurnState();
}

class _IntroductoryScreenBurnState extends State<IntroductoryScreenBurn> {
  BurnScreenController burnScreenController = Get.put(BurnScreenController());
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
              headline: "Get Burn",
              image: "assets/images/get_burn.png",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff92A3FD),
        onPressed: () {
          burnScreenController.navToNext();
        },
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    );
  }
}
