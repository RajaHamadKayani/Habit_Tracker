import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/view_model/controllers/sign_in_controller/sign_in_controller.dart';
import 'package:habot_tracker/views/responsive_layout/responsive_layout.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';
import 'package:habot_tracker/views/widgets/text_form_field_widget/text_form_field_widget.dart';
import 'package:habot_tracker/views/widgets/text_widget/text_widget.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  SignInController signInController = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
                        text: "Welcome Back!",
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
                                    fontSize:
                                        ResponsiveLayout.mobileView(context)
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
                              TextWidget(
                                text: "CONTINUE WITH GOOGLE",
                                textStyle: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize:
                                        ResponsiveLayout.mobileView(context)
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
                            fontSize: !ResponsiveLayout.mobileView(context)
                                ? 20
                                : 14),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextFormFieldWidget(
                      color: 0xffF2F3F7,
                      height: 63,
                      width: double.infinity,
                      controller: signInController.textEditingControllerEmail,
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
                      controller:
                          signInController.textEditingControllerPassword,
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
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        signInController.loginUser(context);
                      },
                      child: ContainerWidget(
                        height: 63,
                        width: double.infinity,
                        color: 0xff8E97FD,
                        borderRadius: 50,
                        widget: Center(
                          child: TextWidget(
                            text: "LOG IN",
                            textStyle: GoogleFonts.rubik(
                                fontSize: !ResponsiveLayout.mobileView(context)
                                    ? 18
                                    : 13,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffF6F1FB)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: TextWidget(
                        text: "Forget Password?",
                        textStyle: GoogleFonts.rubik(
                            fontSize:
                                !ResponsiveLayout.mobileView(context) ? 20 : 14,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff3F414E)),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: TextWidget(
                        text: "DONT HAVE AN ACCOUNT ? SIGNUP",
                        textStyle: GoogleFonts.rubik(
                            fontWeight: FontWeight.w500,
                            fontSize:
                                !ResponsiveLayout.mobileView(context) ? 20 : 14,
                            color: const Color(0xff3F414E)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
