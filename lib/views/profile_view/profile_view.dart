import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/responsive_layout/responsive_layout.dart';
import 'package:habot_tracker/views/widgets/drawer_widget/drawer_widget.dart';
import 'package:habot_tracker/views/widgets/text_widget/text_widget.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: !ResponsiveLayout.desktopView(context) &&
                !ResponsiveLayout.tabView(context)
            ? AppBar(
                title: TextWidget(
                  text: "Profile",
                  textStyle: AppStyles.headlineBoldWhite,
                ),
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
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}
