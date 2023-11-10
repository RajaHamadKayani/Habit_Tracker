import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/utils/app_urls/app_urls.dart';
import 'package:habot_tracker/views/introductory_screen/introductory_screen.dart';
import 'package:http/http.dart' as http;

class SignInController extends GetxController {
  dynamic textEditingControllerEmail = TextEditingController();
  dynamic textEditingControllerPassword = TextEditingController();
  loginUser(BuildContext context) async {
    final response = await http.post(Uri.parse(AppUrls.loginUrl), body: {
      "email": textEditingControllerEmail.value.text,
      "password": textEditingControllerPassword.value.text
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      Get.to(const IntroductoryScreenGoal());
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("User login successfully!!!")));
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Something went wrong")));
    }
  }
}
