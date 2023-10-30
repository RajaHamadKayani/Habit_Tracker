import 'package:get/get.dart';
import 'package:habot_tracker/views/introductory_screen_yoga/introductory_screen_yoga.dart';

class EatScreenController extends GetxController {
  void goToNext() {
    Get.to(const IntroductoryScreenYoga());
  }
}
