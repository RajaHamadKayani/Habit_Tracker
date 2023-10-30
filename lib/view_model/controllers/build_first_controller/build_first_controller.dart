import 'package:get/get.dart';
import 'package:habot_tracker/views/drinking_water_details/drinking_water_details.dart';

class BuildFirstController extends GetxController {
  void navToNext() {
    Get.to(const DrinkingWaterDetails());
  }
}
