import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/view_model/controllers/splash_screen_controller/splash_screen_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashScreenController splashScreenController =
      Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppStyles.appBgColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset("assets/images/app_logo.png")),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Habit Tracker App",
                style: AppStyles.headlineBold,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          splashScreenController.navToNext();
        },
        child:const Icon(Icons.arrow_forward_ios,color: AppStyles.appBgColor,),),
      ),
    );
  }
}
