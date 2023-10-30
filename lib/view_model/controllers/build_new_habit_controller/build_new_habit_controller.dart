import 'package:get/get.dart';
import 'package:habot_tracker/views/build_first_habit/build_first_habit.dart';

class BuildNewHabitController extends GetxController {
  goToNext() {
    Get.to(const BuildFirstHabit());
  }
}
