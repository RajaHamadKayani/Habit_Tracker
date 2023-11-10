import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/responsive_layout/responsive_layout.dart';
import 'package:habot_tracker/views/widgets/reusable_listtile_container/reusable_listtile_container.dart';

class HabitProgressListTileWidget extends StatelessWidget {
  const HabitProgressListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    color: 0xffffffff,
                    titleColor: 0xff000000,
                    subTitleColor: 0xff000000,
                    fontSizeSubtitle: !ResponsiveLayout.mobileView(context)?15:11,
                    fontSizeTitle: !ResponsiveLayout.mobileView(context)?17:13,
                    description: AppStyles.listTileDescription[index],
                    image: AppStyles.listTileLogo[index],
                    title: AppStyles.listTileTitle[index],
                    width: double.infinity,
                    height: 80,
                    logoHeight: 60,
                    logoWidth: 60),
              ),
            );
          }),
    );
  }
}
