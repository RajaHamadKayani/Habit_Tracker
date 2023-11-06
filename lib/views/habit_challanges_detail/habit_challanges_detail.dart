import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/responsive_layout/responsive_layout.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';
import 'package:habot_tracker/views/widgets/drawer_widget/drawer_widget.dart';
import 'package:habot_tracker/views/widgets/habit_challange_detail_list_tile/habit_challange_detail_list_tile.dart';
import 'package:habot_tracker/views/widgets/habit_challange_title_widget/habit_challange_title_widget.dart';
import 'package:habot_tracker/views/widgets/habit_challanges_detail_headline_widget/habit_challanges_detail_headline_widget.dart';

class HabitChallangesDetail extends StatefulWidget {
  const HabitChallangesDetail({super.key});

  @override
  State<HabitChallangesDetail> createState() => _HabitChallangesDetailState();
}

class _HabitChallangesDetailState extends State<HabitChallangesDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppStyles.appBgColor,
        appBar: !ResponsiveLayout.desktopView(context) &&
                !ResponsiveLayout.tabView(context)
            ? AppBar(
                backgroundColor: AppStyles.appBgColor,
                title: null,
                leading: null,
              )
            : null,
        drawer: !ResponsiveLayout.desktopView(context) &&
                !ResponsiveLayout.tabView(context)
            ? Drawer(
                child: DrawerWidget(),
              )
            : null,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if (!ResponsiveLayout.mobileView(context))
                    DrawerWidget(
                      width: 310,
                    ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: ContainerWidget(
                      height: !ResponsiveLayout.mobileView(context)
                          ? MediaQuery.of(context).size.height
                          : MediaQuery.of(context).size.height - 56,
                      width: !ResponsiveLayout.mobileView(context)
                          ? MediaQuery.of(context).size.width - 310
                          : MediaQuery.of(context).size.width,
                      widget: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ContainerWidget(
                              height: 300,
                              width: double.infinity,
                              widget: FittedBox(
                                fit: BoxFit.cover,
                                child: Stack(
                                  children: [
                                    Image.asset(
                                        "assets/images/habit_challange_logo.png"),
                                    const Positioned(
                                      top: 110,
                                      left: 13,
                                      right: 13,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          HabitChallangesDetailHeadlineWidget(),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          HabitChallangeTitleWidget()
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.only(top: 30, left: 20, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [HabitChallangeDetailListTile()],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
