import 'package:get/get.dart';
import 'package:habot_tracker/views/sleep_screen/sleep_screen.dart';

class WakeUpScreenController extends GetxController {
  String selectedTime = "08:00 AM"; // Default value
  List<String> timeOptions = [
    "08:00 AM",
    "09:00 AM",
    "10:00 AM",
    // Add more time options as needed
  ];
   void navToSleepScreen() {
    Get.to(const SleepScreen());
  }
}
