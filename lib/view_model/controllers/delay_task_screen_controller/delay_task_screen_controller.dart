import 'package:get/get.dart';
import 'package:habot_tracker/views/build_new_habit_asked_screen/build_new_habit_asked_screen.dart';

class DelayTaskScreenController extends GetxController {
  void goToNext() {
    Get.to(const BuildNewHabitAskedScreen());
  }
}
