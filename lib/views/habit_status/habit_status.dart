import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';

class HabitStatus extends StatefulWidget {
  const HabitStatus({super.key});

  @override
  State<HabitStatus> createState() => _HabitStatusState();
}

class _HabitStatusState extends State<HabitStatus> {
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
                padding: const EdgeInsets.only(top: 46, left: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      width: 100,
                    ),
                    Text(
                      "Your Stats",
                      style: AppStyles.headlineMediumWhite,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 55, left: 13, right: 13),
                child: ContainerWidget(
                  color: 0xffffffff,
                  borderRadius: 8,
                  height: 322,
                  width: double.infinity,
                  widget: Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 45, right: 45),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 35,
                          width: double.infinity,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: AppStyles.days.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: ClipRRect(
                                    child: Text(
                                      AppStyles.days[index].toString(),
                                      style: AppStyles
                                          .regularSubtitleVerySmallSizeBlue,
                                    ),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 35,
                          width: double.infinity,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: AppStyles.firstWeek.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 32),
                                  child: ClipRRect(
                                    child: Text(
                                      AppStyles.firstWeek[index].toString(),
                                      style: AppStyles
                                          .regularSubtitleVerySmallSizeBlue,
                                    ),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 35,
                          width: double.infinity,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: AppStyles.secondWeek.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 32),
                                  child: ClipRRect(
                                    child: Text(
                                      AppStyles.secondWeek[index].toString(),
                                      style: AppStyles
                                          .regularSubtitleVerySmallSizeBlue,
                                    ),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 35,
                          width: double.infinity,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: AppStyles.thirdWeek.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 32),
                                  child: ClipRRect(
                                    child: Text(
                                      AppStyles.thirdWeek[index].toString(),
                                      style: AppStyles
                                          .regularSubtitleVerySmallSizeBlue,
                                    ),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 35,
                          width: double.infinity,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: AppStyles.fouthWeek.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 32),
                                  child: ClipRRect(
                                    child: Text(
                                      AppStyles.fouthWeek[index].toString(),
                                      style: AppStyles
                                          .regularSubtitleVerySmallSizeBlue,
                                    ),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 35,
                          width: double.infinity,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: AppStyles.remainingDays.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 32),
                                  child: ClipRRect(
                                    child: Text(
                                      AppStyles.remainingDays[index].toString(),
                                      style: AppStyles
                                          .regularSubtitleVerySmallSizeBlue,
                                    ),
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28, left: 3, right: 3),
                child: Column(
                  children: [
                    ContainerWidget(
                      height: 73,
                      width: double.infinity,
                      color: 0xffffffff,
                      borderRadius: 10,
                      widget: Center(
                        child: Text(
                          "Complete habit to build your longest streak of\nperfect day.",
                          style: AppStyles.headlineMediumBluesmallSize,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    ContainerWidget(
                      color: 0xffffffff,
                      height: 154,
                      borderRadius: 10,
                      width: double.infinity,
                      widget: Padding(
                        padding: const EdgeInsets.only(top: 29, left: 29),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1 DAY",
                              style: AppStyles.headlineMediumBlack,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Your current streak",
                              style: AppStyles.smallRegularBodyBlack,
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              "1 DAY",
                              style: AppStyles.verySmallHeadlineMediumBlack,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Your largest streak",
                              style: AppStyles.smallRegularBodyBlack,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
