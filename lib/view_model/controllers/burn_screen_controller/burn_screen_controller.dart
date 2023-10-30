
import 'package:get/get.dart';
import 'package:habot_tracker/views/introductory_screen_eat/introductory_screen_eat.dart';

class BurnScreenController extends GetxController {
  void navToNext() {
    Get.to(const IntroductoryScreenEat());
  }
}
