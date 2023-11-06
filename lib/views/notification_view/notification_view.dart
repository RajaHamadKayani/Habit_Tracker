import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/responsive_layout/responsive_layout.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';
import 'package:habot_tracker/views/widgets/drawer_widget/drawer_widget.dart';
import 'package:habot_tracker/views/widgets/notification_view_list_tile/notification_view_list_tile.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppStyles.appBgColor,
          centerTitle: true,
          title: Text(
            "NOTIFICATIONS",
            style: AppStyles.headlineBoldWhite,
          ),
          leading: null,
        ),
        drawer: !ResponsiveLayout.desktopView(context) &&
                !ResponsiveLayout.tabView(context)
            ? Drawer(
                child: DrawerWidget(),
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
                        const EdgeInsets.only(top: 38, left: 15, right: 15),
                    child: ContainerWidget(
                      height: MediaQuery.of(context).size.height - 94,
                      width: !ResponsiveLayout.mobileView(context)
                          ? MediaQuery.of(context).size.width - 340
                          : MediaQuery.of(context).size.width - 30,
                      widget: const SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [NotificationViewListTile()],
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
