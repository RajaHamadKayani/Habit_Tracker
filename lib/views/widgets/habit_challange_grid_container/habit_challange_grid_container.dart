import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/responsive_layout/responsive_layout.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';
import 'package:habot_tracker/views/widgets/reusable_listtile_container/reusable_listtile_container.dart';

class HabitChallangeGridContainer extends StatelessWidget {
  const HabitChallangeGridContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      height: MediaQuery.of(context).size.height - 25,
      width: !ResponsiveLayout.mobileView(context)
          ? MediaQuery.of(context).size.width - 342
          : MediaQuery.of(context).size.width - 34,
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.builder(
              shrinkWrap: true,
              itemCount: 6,
              physics: const AlwaysScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: ResponsiveLayout.tabView(context)
                      ? 2
                      : ResponsiveLayout.desktopView(context)
                          ? 4
                          : 2,
                  crossAxisSpacing: 13,
                  mainAxisSpacing: 13),
              itemBuilder: (context, index) {
                return ContainerWidget(
                  height: 160,
                  color: 0xffffffff,
                  borderRadius: 10,
                  widget: ReusableListTileContainer(
                    trailingLogo:
                        "assets/images/habit_challange_trailing_logo.png",
                    description: "7 Days challanges",
                    title: "Happy morning challange",
                    subTitleColor: 0xff000000,
                    titleColor: 0xff000000,
                    height: 160,
                    widget: ContainerWidget(
                      height: 23,
                      width: 76,
                      color: 0x92A3FD,
                      borderRadius: 40,
                      widget: Center(
                        child: Text(
                          "Join Now",
                          style: AppStyles.regularSmallBodyBlack,
                        ),
                      ),
                    ),
                    trailingLogoHeight: double.infinity,
                    trailingLogoWidth: 130,
                  ),
                );
              })
        ],
      ),
    );
  }
}
