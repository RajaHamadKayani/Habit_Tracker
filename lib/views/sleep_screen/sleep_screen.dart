import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/view_model/controllers/sleep_screen_controller/sleep_screen_controller.dart';
import 'package:habot_tracker/views/widgets/reusable_rounded_button/reusable_rounded_button.dart';
import 'package:habot_tracker/views/widgets/title_widget/title_widget.dart';

class SleepScreen extends StatefulWidget {
  const SleepScreen({super.key});

  @override
  State<SleepScreen> createState() => _SleepScreenState();
}

class _SleepScreenState extends State<SleepScreen> {
  SleepScreenController screenController = Get.put(SleepScreenController());
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
              TitleWidget(title: "When do you want to\nreflect on your day"),
              const SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Sleep Time",
                    style: AppStyles.smallHeadlineMediumWhite,
                  ),
                  const SizedBox(width: 20),
                  DropdownButton<String>(
                    value: screenController.selectedTime,
                    items: screenController.timeOptions.map((time) {
                      return DropdownMenuItem<String>(
                        value: time.toString(),
                        child: Text(time.toString()),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        screenController.selectedTime = newValue ?? "";
                      });
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: GestureDetector(
                    onTap: () {
                      screenController.navToNext();
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
