
import 'package:get/get.dart';
import 'package:habot_tracker/views/introductory_screen/introductory_screen.dart';

class SplashScreenController extends GetxController {
  void navToNext() {
    Get.to(const IntroductoryScreenGoal());
  }
}
