import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/responsive_layout/responsive_layout.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';
import 'package:habot_tracker/views/widgets/drawer_widget/drawer_widget.dart';

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
        appBar: !ResponsiveLayout.desktopView(context) &&
                !ResponsiveLayout.tabView(context)
            ? AppBar(
                backgroundColor: AppStyles.appBgColor,
                title: Text(
                  "Your Stats",
                  style: AppStyles.headlineMediumWhite,
                ),
                centerTitle: true,
              )
            : null,
        drawer: !ResponsiveLayout.tabView(context) &&
                !ResponsiveLayout.desktopView(context)
            ? Drawer(
                child: DrawerWidget(
                  width: 310,
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!ResponsiveLayout.mobileView(context))
                    DrawerWidget(
                      width: 310,
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 13, right: 13, top: 55),
                        child: Column(
                          children: [
                            ContainerWidget(
                              color: 0xffffffff,
                              height: 322,
                              borderRadius: 8,
                              width: !ResponsiveLayout.mobileView(context)
                                  ? MediaQuery.of(context).size.width - 336
                                  : MediaQuery.of(context).size.width - 26,
                            ),
                            const SizedBox(
                              height: 28,
                            ),
                            ContainerWidget(
                              color: 0xffffffff,
                              height: 73,
                              borderRadius: 10,
                              width: !ResponsiveLayout.mobileView(context)
                                  ? MediaQuery.of(context).size.width - 336
                                  : MediaQuery.of(context).size.width - 26,
                              widget: Padding(
                                padding:
                                    const EdgeInsets.only(top: 19, left: 10),
                                child: Container(
                                  constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.of(context).size.width),
                                  child: Text(
                                    "Complete habit to build your longest streak of\nperfect day.",
                                    style: AppStyles.headlineMediumBlue,
                                  ),
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
                              width: !ResponsiveLayout.mobileView(context)
                                  ? MediaQuery.of(context).size.width - 336
                                  : MediaQuery.of(context).size.width - 26,
                              widget: Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 30),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1  DAY",
                                      style: AppStyles.headlineBold,
                                    ),
                                    Text(
                                      "Your current streak",
                                      style: AppStyles.regularBodyBlack,
                                    ),
                                    Text(
                                      "1 DAY",
                                      style: AppStyles.headlineBold,
                                    ),
                                    Text(
                                      "Your longest streak",
                                      style: AppStyles.regularBodyBlack,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
