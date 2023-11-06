import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/view_model/controllers/habit_progress_counter_controller/habit_progress_counter_controller.dart';
import 'package:habot_tracker/views/responsive_layout/responsive_layout.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';
import 'package:habot_tracker/views/widgets/drawer_widget/drawer_widget.dart';
import 'package:habot_tracker/views/widgets/habit_progress_calender_list/habit_progress_calender_list.dart';
import 'package:habot_tracker/views/widgets/habit_progress_grid_view/habit_progress_gird_view.dart';
import 'package:habot_tracker/views/widgets/habit_progress_list_tile_widget/habit_progress_list_tile_widget.dart';
import 'package:habot_tracker/views/widgets/habit_progress_menu_icon_row/habit_progress_menu_icon_row.dart';
import 'package:habot_tracker/views/widgets/habit_progress_row_text/habit_progress_row_text.dart';
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
        appBar: !ResponsiveLayout.desktopView(context) &&
                !ResponsiveLayout.tabView(context)
            ? AppBar(
                title: null,
                backgroundColor: AppStyles.appBgColor,
              )
            : null,
        drawer: !ResponsiveLayout.desktopView(context) &&
                !ResponsiveLayout.tabView(context)
            ? Drawer(
                child: DrawerWidget(width: 310),
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
                        const EdgeInsets.only(top: 38, left: 10, right: 10),
                    child: Column(
                      children: [
                        ContainerWidget(
                          height: MediaQuery.of(context).size.height,
                          width: !ResponsiveLayout.mobileView(context)
                              ? MediaQuery.of(context).size.width - 332
                              : MediaQuery.of(context).size.width - 22,
                          widget: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const HabitProgressMenuIconRow(),
                                const SizedBox(
                                  height: 32,
                                ),
                                TitleWidget(title: "TODAY"),
                                const SizedBox(
                                  height: 27,
                                ),
                                const HabitProgressCalenderList(),
                                const SizedBox(
                                  height: 52,
                                ),
                                const HabitProgressGridView(),
                                const SizedBox(
                                  height: 44,
                                ),
                                const HabitProgressRowText(),
                                const SizedBox(
                                  height: 15,
                                ),
                                const HabitProgressListTileWidget(
                                  
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
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
