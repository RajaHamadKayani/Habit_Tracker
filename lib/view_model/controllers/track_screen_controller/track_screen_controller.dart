
import 'package:get/get.dart';
import 'package:habot_tracker/views/introductory_screen_burn/introductory_screen_burn.dart';

class TrackScreenController extends GetxController {
  void navToNext() {
    Get.to(const IntroductoryScreenBurn());
  }
}
