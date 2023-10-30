import 'package:get/get.dart';
import 'package:habot_tracker/views/habit_status/habit_status.dart';

class DailyProgressCounterController extends GetxController {
  String selectedDuration = "WEEKLY"; // Default value
  List<String> timeOptions = [
    "WEEKLY",
    "DAILY",
    "MONTHLY",
    // Add more time options as needed
  ];
  void goToNext() {
    Get.to(const HabitStatus());
  }
}
