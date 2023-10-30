import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/view_model/controllers/wake_up_screen_controller/wake_up_screen_controller.dart';
import 'package:habot_tracker/views/widgets/reusable_rounded_button/reusable_rounded_button.dart';
import 'package:habot_tracker/views/widgets/title_widget/title_widget.dart';

class WakeUpTimeScreen extends StatefulWidget {
  const WakeUpTimeScreen({super.key});

  @override
  State<WakeUpTimeScreen> createState() => _WakeUpTimeScreenState();
}

class _WakeUpTimeScreenState extends State<WakeUpTimeScreen> {
  WakeUpScreenController wakeUpScreenController =
      Get.put(WakeUpScreenController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff949DFF),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleWidget(title: "Whats time do you\nusually wake up?"),
              const SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "wake up time",
                    style: AppStyles.smallHeadlineMediumWhite,
                  ),
                  const SizedBox(width: 20),
                  DropdownButton<String>(
                    value: wakeUpScreenController.selectedTime,
                    items: wakeUpScreenController.timeOptions.map((time) {
                      return DropdownMenuItem<String>(
                        value: time.toString(),
                        child: Text(time.toString()),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        wakeUpScreenController.selectedTime = newValue ?? "";
                      });
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: GestureDetector(
                    onTap: () {
                      wakeUpScreenController.navToSleepScreen();
                    },
                    child: ReusableRoundedButton(buttonText: "GET STARTED")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
