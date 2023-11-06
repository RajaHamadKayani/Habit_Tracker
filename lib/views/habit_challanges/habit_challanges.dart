import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/responsive_layout/responsive_layout.dart';
import 'package:habot_tracker/views/widgets/drawer_widget/drawer_widget.dart';
import 'package:habot_tracker/views/widgets/habit_challange_grid_container/habit_challange_grid_container.dart';

class HabitChallanges extends StatefulWidget {
  const HabitChallanges({super.key});

  @override
  State<HabitChallanges> createState() => _HabitChallangesState();
}

class _HabitChallangesState extends State<HabitChallanges> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppStyles.appBgColor,
        appBar: !ResponsiveLayout.desktopView(context) &&
                !ResponsiveLayout.tabView(context)
            ? AppBar(
                centerTitle: true,
                backgroundColor: AppStyles.appBgColor,
                title: Text(
                  "CHALLANGES",
                  style: AppStyles.headlineMediumWhite,
                ),
                leading: null)
            : null,
        drawer: Drawer(
          child: !ResponsiveLayout.desktopView(context) &&
                  !ResponsiveLayout.tabView(context)
              ? DrawerWidget()
              : null,
        ),
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
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 16, right: 16),
                    child: HabitChallangeGridContainer(),
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
