import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/view_model/controllers/sign_up_controller/sign_up_controller.dart';
import 'package:habot_tracker/views/responsive_layout/responsive_layout.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';
import 'package:habot_tracker/views/widgets/text_form_field_widget/text_form_field_widget.dart';
import 'package:habot_tracker/views/widgets/text_widget/text_widget.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isChecked = false;
  SignUpControoler signUpControoler = Get.put(SignUpControoler());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContainerWidget(
                    height: 55,
                    width: 55,
                    borderRadius: 50,
                    borderColor: 0xff3F414E,
                    borderWidth: 1,
                    widget: const Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Center(
                    child: TextWidget(
                      text: "Create your account",
                      textStyle: AppStyles.headlineBold,
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  ContainerWidget(
                    height: 63,
                    width: MediaQuery.of(context).size.width,
                    color: 0xff7583CA,
                    borderRadius: 50,
                    widget: Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: !ResponsiveLayout.mobileView(context)
                                ? 45
                                : 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/fb_logo.png"),
                            SizedBox(
                              width: !ResponsiveLayout.mobileView(context)
                                  ? 45
                                  : 15,
                            ),
                            Text(
                              "CONTINUE WITH FACEBOOK",
                              style: GoogleFonts.rubik(
                                  color: AppStyles.whiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: ResponsiveLayout.mobileView(context)
                                      ? 14
                                      : 18),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ContainerWidget(
                    height: 63,
                    width: MediaQuery.of(context).size.width,
                    borderColor: 0xffEBEAEC,
                    borderWidth: 2,
                    borderRadius: 50,
                    widget: Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: !ResponsiveLayout.mobileView(context)
                                ? 45
                                : 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/google.png"),
                            SizedBox(
                              width: !ResponsiveLayout.mobileView(context)
                                  ? 45
                                  : 15,
                            ),
                            Text(
                              "CONTINUE WITH GOOGLE",
                              style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: ResponsiveLayout.mobileView(context)
                                      ? 14
                                      : 18),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: TextWidget(
                      text: "OR LOG IN WITH EMAIL",
                      textStyle: GoogleFonts.rubik(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffA1A4B2),
                          fontSize:
                              !ResponsiveLayout.mobileView(context) ? 20 : 14),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormFieldWidget(
                    color: 0xffF2F3F7,
                    height: 63,
                    width: double.infinity,
                    controller: signUpControoler.textEdtitingControllerUserName,
                    borderRadius: 15,
                    hintStyle: GoogleFonts.rubik(
                        color: const Color(0xffA1A4B2),
                        fontWeight: FontWeight.w400,
                        fontSize:
                            !ResponsiveLayout.mobileView(context) ? 22 : 16),
                    controllerStyle: GoogleFonts.rubik(
                        color: const Color(0xffA1A4B2),
                        fontWeight: FontWeight.w400,
                        fontSize:
                            !ResponsiveLayout.mobileView(context) ? 22 : 16),
                    hintText: "User Name",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormFieldWidget(
                    color: 0xffF2F3F7,
                    height: 63,
                    width: double.infinity,
                    controller: signUpControoler.textEditingControllerEmail,
                    borderRadius: 15,
                    hintStyle: GoogleFonts.rubik(
                        color: const Color(0xffA1A4B2),
                        fontWeight: FontWeight.w400,
                        fontSize:
                            !ResponsiveLayout.mobileView(context) ? 22 : 16),
                    controllerStyle: GoogleFonts.rubik(
                        color: const Color(0xffA1A4B2),
                        fontWeight: FontWeight.w400,
                        fontSize:
                            !ResponsiveLayout.mobileView(context) ? 22 : 16),
                    hintText: "Email Address",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormFieldWidget(
                    color: 0xffF2F3F7,
                    height: 63,
                    width: double.infinity,
                    controller: signUpControoler.textEditingControllerPassword,
                    borderRadius: 15,
                    hintStyle: GoogleFonts.rubik(
                        color: const Color(0xffA1A4B2),
                        fontWeight: FontWeight.w400,
                        fontSize:
                            !ResponsiveLayout.mobileView(context) ? 22 : 16),
                    controllerStyle: GoogleFonts.rubik(
                        color: const Color(0xffA1A4B2),
                        fontWeight: FontWeight.w400,
                        fontSize:
                            !ResponsiveLayout.mobileView(context) ? 22 : 16),
                    hintText: "Password",
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: "I have read the privacy policy",
                        textStyle: GoogleFonts.rubik(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffA1A4B2),
                            fontSize: !ResponsiveLayout.mobileView(context)
                                ? 22
                                : 14),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                        child: Container(
                          width: 25, // Adjust the size as needed
                          height: 25, // Adjust the size as needed
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: const Color(0xffA1A4B2),
                            ),
                            color: isChecked ? Colors.blue : Colors.transparent,
                          ),
                          child: isChecked
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                              : null,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  GestureDetector(
                    onTap: () {
                      signUpControoler.registerUser(context);
                    },
                    child: ContainerWidget(
                      height: 60,
                      width: double.infinity,
                      color: 0xff8E97FD,
                      borderRadius: 50,
                      widget: Center(
                        child: TextWidget(
                          text: "GET STARTED",
                          textStyle: GoogleFonts.rubik(
                              color: const Color(0xffF6F1FB),
                              fontWeight: FontWeight.w600,
                              fontSize: !ResponsiveLayout.mobileView(context)
                                  ? 20
                                  : 13),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: TextWidget(
                      text: "I ALREADY HAVE AN ACCOUNT ? SIGN IN",
                      textStyle: GoogleFonts.rubik(
                          fontWeight: FontWeight.w500,
                          fontSize:
                              !ResponsiveLayout.mobileView(context) ? 20 : 14,
                          color: const Color(0xff3F414E)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
