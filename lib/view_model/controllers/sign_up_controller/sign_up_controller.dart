import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/utils/app_urls/app_urls.dart';
import 'package:habot_tracker/views/sign_in_view/sign_in_view.dart';
import 'package:http/http.dart' as http;

class SignUpControoler extends GetxController {
  dynamic list = [];
  dynamic textEdtitingControllerUserName = TextEditingController();
  dynamic textEditingControllerEmail = TextEditingController();
  dynamic textEditingControllerPassword = TextEditingController();
  registerUser(BuildContext context) async {
    final response = await http.post(
      Uri.parse(AppUrls.registerUrl),
       body: {
        "email": textEditingControllerEmail.value.text,
        "password": textEditingControllerPassword.value.text
      }
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("User Register Successfully!!!")));
      Get.to(const SignInView());
      var data = jsonDecode(response.body.toString());
      print(data["total"]);
      list = data["data"];
      var name1 = list[1]["name"];
      print(name1);
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Something ent wrong")));
    }
  }
}
