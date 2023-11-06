import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/responsive_layout/responsive_layout.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';
import 'package:habot_tracker/views/widgets/drawer_widget/drawer_widget.dart';
import 'package:habot_tracker/views/widgets/subscription_prices_widget/subscription_prices_widget.dart';
import 'package:habot_tracker/views/widgets/subscription_screen_counter_container/subscription_screen_counter_container.dart';
import 'package:habot_tracker/views/widgets/subscription_screen_courses_container/subscription_screen_courses_container.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppStyles.appBgColor,
        appBar: !ResponsiveLayout.tabView(context) &&
                !ResponsiveLayout.desktopView(context)
            ? AppBar(
                backgroundColor: AppStyles.appBgColor,
                title: Text(
                  "Subscription",
                  style: AppStyles.headlineMediumWhite,
                ),
                centerTitle: true,
              )
            : null,
        drawer: !ResponsiveLayout.tabView(context) &&
                !ResponsiveLayout.desktopView(context)
            ? Drawer(
                child: DrawerWidget(
                  width: 310,
                ),
              )
            : null,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                        const EdgeInsets.only(top: 51, left: 20, right: 20),
                    child: ContainerWidget(
                      height: MediaQuery.of(context).size.height - 51,
                      width: !ResponsiveLayout.desktopView(context) &&
                              !ResponsiveLayout.tabView(context)
                          ? MediaQuery.of(context).size.width - 50
                          : MediaQuery.of(context).size.width - 350,
                      widget: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (!ResponsiveLayout.desktopView(context) &&
                                !ResponsiveLayout.tabView(context))
                              Column(
                                children: [
                                  SubscriptionScreenCounterContainer(
                                    width: double.infinity,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SubscriptionScreenCoursesContainer(
                                    width: double.infinity,
                                  ),
                                ],
                              ),
                            if (!ResponsiveLayout.mobileView(context))
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child:
                                          SubscriptionScreenCounterContainer()),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child:
                                          SubscriptionScreenCoursesContainer())
                                ],
                              ),
                            const SizedBox(
                              height: 30,
                            ),
                            const SubscriptionPricesWidget()
                          ],
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
