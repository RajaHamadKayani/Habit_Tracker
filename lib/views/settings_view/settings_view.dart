import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/responsive_layout/responsive_layout.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';
import 'package:habot_tracker/views/widgets/drawer_widget/drawer_widget.dart';
import 'package:habot_tracker/views/widgets/settings_screen_list_tile_widget/settings_screen_list_tile_widget.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppStyles.appBgColor,
        appBar: AppBar(
          backgroundColor: AppStyles.appBgColor,
          centerTitle: true,
          title: Text(
            "Settings",
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
                        const EdgeInsets.only(top: 35, left: 22, right: 22),
                    child: ContainerWidget(
                      height: MediaQuery.of(context).size.height,
                      width: !ResponsiveLayout.desktopView(context) &&
                              !ResponsiveLayout.tabView(context)
                          ? MediaQuery.of(context).size.width - 44
                          : MediaQuery.of(context).size.width - 354,
                      widget: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [SettingsScreenListTileWidget()],
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
