import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/view_model/controllers/daily_progress_counter_controller/daily_progress_counter_controller.dart';
import 'package:habot_tracker/views/widgets/reusable_listtile_container/reusable_listtile_container.dart';

class DailyProgressTargetView extends StatefulWidget {
  const DailyProgressTargetView({super.key});

  @override
  State<DailyProgressTargetView> createState() =>
      _DailyProgressTargetViewState();
}

class _DailyProgressTargetViewState extends State<DailyProgressTargetView> {
  DailyProgressCounterController dailyProgressCounterController =
      Get.put(DailyProgressCounterController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppStyles.appBgColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45, left: 13, right: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: AppStyles.whiteColor,
                        )),
                    InkWell(
                      onTap: () {},
                      child: Image.asset("assets/images/try_free.png"),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 38, left: 15, right: 15),
                child: Container(
                  width: double.infinity,
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppStyles.whiteColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 24, left: 24, right: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Today Target",
                              style: AppStyles.smallHeadlineBoldBlue,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xff92A3FD)),
                              child: const Center(
                                child: Icon(
                                  Icons.add,
                                  color: AppStyles.whiteColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 24, left: 5, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: ReusableListTileContainer(
                                    color: 0xff4D57C8,
                                    fontSizeSubtitle: 14,
                                    titleColor: 0xffffffff,
                                    subTitleColor: 0xffffffff,
                                    fontSizeTitle: 16,
                                    fontWeightSubtitle: FontWeight.w300,
                                    fontWeightTile: FontWeight.w600,
                                    description: "Water Intake",
                                    image: "assets/images/glass_icon.png",
                                    title: "8L",
                                    height: 72,
                                    logoHeight: 40,
                                    logoWidth: 30)),
                            Expanded(
                                child: ReusableListTileContainer(
                                    fontSizeSubtitle: 14,
                                    titleColor: 0xffffffff,
                                    subTitleColor: 0xffffffff,
                                    fontSizeTitle: 16,
                                    fontWeightSubtitle: FontWeight.w300,
                                    fontWeightTile: FontWeight.w600,
                                    color: 0xff4D57C8,
                                    description: "Foot Steps",
                                    image: "assets/images/boot_icon.png",
                                    title: "2400",
                                    height: 72,
                                    logoHeight: 40,
                                    logoWidth: 30)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Activity Progress",
                      style: AppStyles.smallHeadlineMediumWhite,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        color: AppStyles.whiteColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Duration",
                              style: AppStyles.mediumSmallBodyBlack,
                            ),
                            const SizedBox(width: 5),
                            DropdownButton<String>(
                              value: dailyProgressCounterController
                                  .selectedDuration,
                              items: dailyProgressCounterController.timeOptions
                                  .map((time) {
                                return DropdownMenuItem<String>(
                                  value: time.toString(),
                                  child: Text(
                                    time.toString(),
                                    style: AppStyles.mediumSmallBodyBlack,
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dailyProgressCounterController
                                      .selectedDuration = newValue ?? "";
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: GestureDetector(
                  onTap: () {
                    dailyProgressCounterController.goToNext();
                  },
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppStyles.whiteColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 14, left: 14, right: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Image.asset(
                                  "assets/images/vert_progress_1.png")),
                          Expanded(
                              flex: 1,
                              child: Image.asset(
                                  "assets/images/vert_progress_2.png")),
                          Expanded(
                              flex: 1,
                              child: Image.asset(
                                  "assets/images/vert_progress_3.png")),
                          Expanded(
                              flex: 1,
                              child: Image.asset(
                                  "assets/images/vert_progress_4.png")),
                          Expanded(
                              flex: 1,
                              child: Image.asset(
                                  "assets/images/vert_progress_5.png")),
                          Expanded(
                              flex: 1,
                              child: Image.asset(
                                  "assets/images/vert_progress_6.png")),
                          Expanded(
                              flex: 1,
                              child: Image.asset(
                                  "assets/images/vert_progress_7.png")),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, left: 16, right: 16, bottom: 15),
                child: SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: AppStyles.listTileTitle.length,
                      physics: const AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10, top: 10),
                          child: ClipRRect(
                            child: ReusableListTileContainer(
                                titleColor: 0xff000000,
                                subTitleColor: 0xff000000,
                                fontSizeTitle: 12,
                                fontWeightTile: FontWeight.w600,
                                fontWeightSubtitle: FontWeight.w300,
                                fontSizeSubtitle: 10,
                                color: 0xffffffff,
                                description:
                                    AppStyles.listTileDescription[index],
                                image: AppStyles.listTileLogo[index],
                                title: AppStyles.listTileTitle[index],
                                width: double.infinity,
                                height: 80,
                                logoHeight: 60,
                                logoWidth: 60),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
