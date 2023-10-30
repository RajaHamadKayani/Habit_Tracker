import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/view_model/controllers/delay_task_screen_controller/delay_task_screen_controller.dart';
import 'package:habot_tracker/views/widgets/reusable_description_container/reusable_description_container.dart';
import 'package:habot_tracker/views/widgets/title_widget/title_widget.dart';

class DelayTaskAskedScreen extends StatefulWidget {
  const DelayTaskAskedScreen({super.key});

  @override
  State<DelayTaskAskedScreen> createState() => _DelayTaskAskedScreenState();
}

class _DelayTaskAskedScreenState extends State<DelayTaskAskedScreen> {
  DelayTaskScreenController delayTaskScreenController =
      Get.put(DelayTaskScreenController());
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
                child: TitleWidget(title: "Do you Procrastinate?"),
              ),
              const SizedBox(
                height: 180,
              ),
              GestureDetector(
                onTap: () {
                  delayTaskScreenController.goToNext();
                },
                child: ReusableDescriptionContainer(
                    descriptionText: "Yes and i’m ready to change that"),
              ),
              const SizedBox(
                height: 30,
              ),
              ReusableDescriptionContainer(
                  descriptionText: "No, I easily finish the tasks at hand"),
              const SizedBox(
                height: 30,
              ),
              ReusableDescriptionContainer(descriptionText: "Not ready to answer")
            ],
          ),
        ),
      ),
    );
  }
}
