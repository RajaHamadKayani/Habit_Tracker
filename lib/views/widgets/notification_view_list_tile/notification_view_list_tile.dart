import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';
import 'package:habot_tracker/views/widgets/reusable_listtile_container/reusable_listtile_container.dart';

class NotificationViewListTile extends StatelessWidget {
  const NotificationViewListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      widget: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: AppStyles.notifcationListTileLogo.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ClipRRect(
                child: ContainerWidget(
                  width: double.infinity,
                  height: 58,
                  widget: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableListTileContainer(
                        description: AppStyles
                            .notificationViewListTileTitle[index]
                            .toString(),
                        title: AppStyles.notificationViewListTileTitle[index]
                            .toString(),
                        height: 40,
                        width: double.infinity,
                        logoHeight: double.infinity,
                        fontSizeTitle: 13,
                        fontSizeSubtitle: 10,
                        titleColor: 0xffffffff,
                        subTitleColor: 0xffffffff,
                        logoWidth: 48,
                        image: AppStyles.notifcationListTileLogo[index],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 2,
                        width: double.infinity,
                        color: const Color(0xffDDDADA),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
