import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/view_model/controllers/drinking_water_controller/drinking_water-controller.dart';
import 'package:habot_tracker/views/widgets/reusable_circular_container/reusable_circular_container.dart';
import 'package:habot_tracker/views/widgets/reusable_rounded_button/reusable_rounded_button.dart';
import 'package:habot_tracker/views/widgets/small_body_text_widget/small_body_text_widget.dart';
import 'package:habot_tracker/views/widgets/title_widget/title_widget.dart';

class DrinkingWaterDetails extends StatefulWidget {
  const DrinkingWaterDetails({super.key});

  @override
  State<DrinkingWaterDetails> createState() => _DrinkingWaterDetailsState();
}

class _DrinkingWaterDetailsState extends State<DrinkingWaterDetails> {
  String initialValue = "DAILY";
  DrinkingWaterController drinkingWaterController =
      Get.put(DrinkingWaterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4D57C8),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 410,
              width: 410,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Stack(
                  children: [
                    Image.asset("assets/images/lage_logo_drinking_water.png"),
                    Positioned(
                        top: 15,
                        left: 55,
                        right: 55,
                        child: TitleWidget(title: "SET YOUR GOALS"))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: SmallBodyTextWidget(text: "Set your goals"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ReusableCircularContainer(
                height: 59,
                width: double.infinity,
                bgColor: 0xff7889DF,
                borderRadius: 10,
                text1: "5",
                sizedBox: 5,
                fontWeight: FontWeight.bold,
                fontWeight2: FontWeight.w600,
                fontSize: 14,
                fontSize2: 14,
                text2: "Glasses",
                text2Color: 0xffffffff,
                text1Color: 0xffffffff,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 26, left: 23, right: 23),
              child: SizedBox(
                width: double.infinity,
                height: 35,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: AppStyles.durationTime.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: GestureDetector(
                          onTap: () {
                            drinkingWaterController.setSelectedIndex(index);
                          },
                          child: Obx(() {
                            return ClipRRect(
                              child: ReusableCircularContainer(
                                height: double.infinity,
                                width: 100,
                                borderRadius: 100,
                                bgColor: drinkingWaterController
                                            .selectedIndex.value ==
                                        index
                                    ? 0xffffffff
                                    : 0xff7889DF,
                                text1: AppStyles.durationTime[index].toString(),
                                text1Color: drinkingWaterController
                                            .selectedIndex.value ==
                                        index
                                    ? 0xff7889DF
                                    : 0xffffffff,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            );
                          }),
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 43, left: 13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Repeat everyday",
                    style: AppStyles.smallHeadlineMediumWhite,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 35,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: AppStyles.weekDays.length,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: GestureDetector(
                                onTap: () {
                                  drinkingWaterController
                                      .setSelectedIndex1(index);
                                },
                                child: Obx(() {
                                  return ClipRRect(
                                    child: ReusableCircularContainer(
                                      height: double.infinity,
                                      width: 50,
                                      borderRadius: 100,
                                      bgColor: drinkingWaterController
                                                  .selectedIndex1.value ==
                                              index
                                          ? 0xffffffff
                                          : 0xff7889DF,
                                      text1:
                                          AppStyles.weekDays[index].toString(),
                                      text1Color: drinkingWaterController
                                                  .selectedIndex1.value ==
                                              index
                                          ? 0xff7889DF
                                          : 0xffffffff,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  );
                                }),
                              ));
                        }),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
                onTap: () {
                  drinkingWaterController.goToNext();
                },
                child: ReusableRoundedButton(buttonText: "CONTINUE")),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
