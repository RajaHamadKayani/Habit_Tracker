import 'package:get/get.dart';
import 'package:habot_tracker/views/daily_progress_target_view/daily_progress_target_view.dart';

class HabitProgressCounterController extends GetxController {
  RxInt selectedIndex = 0.obs;
  void setSelectedIndex(index) {
    selectedIndex.value = index;
  }

  void goToNext() {
    Get.to(const DailyProgressTargetView());
  }
}
