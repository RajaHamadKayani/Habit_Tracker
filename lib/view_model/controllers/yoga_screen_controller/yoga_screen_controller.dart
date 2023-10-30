import 'package:get/get.dart';
import 'package:habot_tracker/views/wake_up_time_screen/wake_up_time_screen.dart';

class YogaScreenController extends GetxController {
  void naToNext() {
    Get.to(const WakeUpTimeScreen());
  }
}
