import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/views/all_habits/all_habits.dart';
import 'package:habot_tracker/views/daily_progress_target_view/daily_progress_target_view.dart';
import 'package:habot_tracker/views/habit_challanges/habit_challanges.dart';
import 'package:habot_tracker/views/habit_status/habit_status.dart';
import 'package:habot_tracker/views/notification_view/notification_view.dart';
import 'package:habot_tracker/views/profile_view/profile_view.dart';
import 'package:habot_tracker/views/settings_view/settings_view.dart';
import 'package:habot_tracker/views/subscription_screen/subscription_screen.dart';

class MyDrawerController extends GetxController {
  navToDiffScreens(BuildContext context, int index) {
    switch (index) {
      case 0:
        Get.to(const ProfileView());
      case 1:
        Get.to(const DailyProgressTargetView());
      case 2:
        Get.to(const HabitStatus());
      case 3:
        Get.to(const HabitChallanges());
      case 4:
        Get.to(const AllHabits());
      case 5:
        Get.to(const NotificationView());
      case 6:
        Get.to(const SettingsView());
      case 7:
        Get.to(const SubscriptionScreen());
    }
  }
}
