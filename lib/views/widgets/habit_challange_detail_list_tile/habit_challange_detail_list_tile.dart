import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';
import 'package:habot_tracker/views/widgets/reusable_listtile_container/reusable_listtile_container.dart';

class HabitChallangeDetailListTile extends StatelessWidget {
  const HabitChallangeDetailListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContainerWidget(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          widget: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: AppStyles.days.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: ClipRRect(
                    child: ContainerWidget(
                      borderRadius: 10,
                      height: 125,
                      width: double.infinity,
                      widget: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStyles.days[index],
                            style: AppStyles.smallHeadlineMediumWhite,
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          ReusableListTileContainer(
                            color: 0xffffffff,
                            fontSizeSubtitle: 11,
                            fontSizeTitle: 13,
                            description: "Start your daily habit",
                            title: "Drink water when your wake up",
                            titleColor: 0xff000000,
                            subTitleColor: 0xff000000,
                            height: 84,
                            width: double.infinity,
                            logoHeight: 34,
                            logoWidth: 25,
                            image: "assets/images/water_glass.png",
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
