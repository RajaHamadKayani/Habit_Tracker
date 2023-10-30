import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/view_model/controllers/habit_progress_counter_controller/habit_progress_counter_controller.dart';
import 'package:habot_tracker/views/widgets/reusable_listtile_container/reusable_listtile_container.dart';
import 'package:habot_tracker/views/widgets/title_widget/title_widget.dart';

class HabitProgressCounterView extends StatefulWidget {
  const HabitProgressCounterView({super.key});

  @override
  State<HabitProgressCounterView> createState() =>
      _HabitProgressCounterViewState();
}

class _HabitProgressCounterViewState extends State<HabitProgressCounterView> {
  HabitProgressCounterController habitProgressCounterController =
      Get.put(HabitProgressCounterController());
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
                padding: const EdgeInsets.only(top: 38, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    const SizedBox(
                        height: 30,
                        width: 76,
                        child: Image(
                          image: AssetImage("assets/images/try_free.png"),
                          fit: BoxFit.cover,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32, left: 9),
                child: TitleWidget(title: "TODAY"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 27, left: 16, right: 16),
                child: SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: AppStyles.days.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: GestureDetector(
                              onTap: () {
                                habitProgressCounterController
                                    .setSelectedIndex(index);
                              },
                              child: Obx(() {
                                return ClipRRect(
                                  child: Container(
                                    width: 53,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: habitProgressCounterController
                                                    .selectedIndex.value ==
                                                index
                                            ? const Color(0xffffffff)
                                            : const Color(0xff7472FF)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          AppStyles.days[index].toString(),
                                          style: GoogleFonts.rubik(
                                              fontWeight: FontWeight.w400,
                                              color:
                                                  habitProgressCounterController
                                                              .selectedIndex
                                                              .value ==
                                                          index
                                                      ? const Color(0xff7472FF)
                                                      : const Color(
                                                          0xffffffff)),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          AppStyles.date[index].toString(),
                                          style: GoogleFonts.rubik(
                                              fontWeight: FontWeight.w500,
                                              color:
                                                  habitProgressCounterController
                                                              .selectedIndex
                                                              .value ==
                                                          index
                                                      ? const Color(0xff7472FF)
                                                      : const Color(
                                                          0xffffffff)),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            ));
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 52, left: 15, right: 15),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: AppStyles.progressText.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 19,
                            mainAxisSpacing: 19),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 235,
                        decoration: BoxDecoration(
                            color: AppStyles.whiteColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Center(
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Image.asset(
                                        "assets/images/progress_indicator.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Image.asset(AppStyles.imagesPath[index]),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Column(
                                children: [
                                  Text(
                                    AppStyles.progressText[index],
                                    style:
                                        AppStyles.regularSubtitleSmallSizeBlue,
                                  ),
                                  Text(
                                    AppStyles.progressPercent[index],
                                    style:
                                        AppStyles.regularSubtitleSmallSizeBlue,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 44, left: 16, right: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Latest Activity",
                          style: AppStyles.subTitleMediumWieghtSmallSizeWhite,
                        ),
                        Text(
                          "See More",
                          style: AppStyles.subTitleMediumWieghtSmallSizeWhite,
                        ),
                      ],
                    )
                  ],
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff92A3FD),
          onPressed: () {
            habitProgressCounterController.goToNext();
          },
          child: const Icon(
            Icons.add,
            color: AppStyles.whiteColor,
          ),
        ),
      ),
    );
  }
}
