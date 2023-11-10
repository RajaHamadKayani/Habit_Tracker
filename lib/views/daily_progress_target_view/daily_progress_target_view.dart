import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/view_model/controllers/daily_progress_counter_controller/daily_progress_counter_controller.dart';
import 'package:habot_tracker/views/habit_status/habit_status.dart';
import 'package:habot_tracker/views/responsive_layout/responsive_layout.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';
import 'package:habot_tracker/views/widgets/daily_progress_daily_target_container/daily_progress_daily_target_container.dart';
import 'package:habot_tracker/views/widgets/daily_progress_graph_container/daily_progress_graph_container.dart';
import 'package:habot_tracker/views/widgets/daily_progress_icon_row/daily_progress_icon_row.dart';
import 'package:habot_tracker/views/widgets/daily_progress_row_text/daily_progress_row_text.dart';
import 'package:habot_tracker/views/widgets/drawer_widget/drawer_widget.dart';
import 'package:habot_tracker/views/widgets/habit_progress_list_tile_widget/habit_progress_list_tile_widget.dart';
import 'package:habot_tracker/views/widgets/habit_progress_row_text/habit_progress_row_text.dart';

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
        appBar: !ResponsiveLayout.desktopView(context) &&
                !ResponsiveLayout.tabView(context)
            ? AppBar(backgroundColor: AppStyles.appBgColor, title: null)
            : null,
        drawer: !ResponsiveLayout.tabView(context) &&
                !ResponsiveLayout.desktopView(context)
            ? Drawer(
                child: DrawerWidget(
                  width: 310,
                ),
              )
            : null,
        backgroundColor: AppStyles.appBgColor,
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
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 13, right: 13),
                    child: ContainerWidget(
                      height: MediaQuery.of(context).size.height,
                      width: !ResponsiveLayout.mobileView(context)
                          ? MediaQuery.of(context).size.width - 338
                          : MediaQuery.of(context).size.width - 28,
                      widget: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const DailyProgressIconRow(),
                            const SizedBox(
                              height: 38,
                            ),
                            GestureDetector(
                                onTap: () {
                                  Get.to(const HabitStatus());
                                },
                                child:
                                    const DailyProgressDailyTargetContainer()),
                            const SizedBox(
                              height: 21,
                            ),
                            const DailyProgressRowText(),
                            const SizedBox(
                              height: 15,
                            ),
                            const DailyProgressGraphContainer(),
                            const SizedBox(
                              height: 30,
                            ),
                            const HabitProgressRowText(),
                            const SizedBox(
                              height: 15,
                            ),
                            const HabitProgressListTileWidget()
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
