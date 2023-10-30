import 'package:get/get.dart';
import 'package:habot_tracker/views/habit_progress_counter_view/habit_progress_counter_view.dart';

class DrinkingWaterController extends GetxController {
  RxInt selectedIndex = 0.obs;
  void setSelectedIndex(index) {
    selectedIndex.value = index;
  }

  RxInt selectedIndex1 = 0.obs;
  void setSelectedIndex1(index) {
    selectedIndex1.value = index;
  }

  void goToNext() {
    Get.to(const HabitProgressCounterView());
  }
}
