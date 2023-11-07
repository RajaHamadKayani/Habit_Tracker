import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';
import 'package:habot_tracker/views/widgets/reusable_listtile_container/reusable_listtile_container.dart';

class SettingsScreenListTileWidget extends StatelessWidget {
  const SettingsScreenListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      widget: ListView.builder(
          itemCount: AppStyles.settingsScreenListTileTitle.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: ClipRRect(
                child: ReusableListTileContainer(
                  height: 70,
                  width: double.infinity,
                  color: 0xff7889DF,
                  title: AppStyles.settingsScreenListTileTitle[index],
                  titleColor: 0xffffffff,
                  fontSizeTitle: 19,
                  borderRadius: 0,
                  fontWeightTile: FontWeight.w600,
                ),
              ),
            );
          }),
    );
  }
}
