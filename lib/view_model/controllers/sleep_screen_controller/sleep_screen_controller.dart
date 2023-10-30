import 'package:get/get.dart';
import 'package:habot_tracker/views/delay_task_asked_screen/delay_task_asked_screen.dart';

class SleepScreenController extends GetxController {
  String selectedTime = "08:00 PM"; // Default value
  List<String> timeOptions = [
    "08:00 PM",
    "09:00 PM",
    "10:00 PM",
    // Add more time options as needed
  ];
  void navToNext() {
    Get.to(const DelayTaskAskedScreen());
  }
}
