import 'package:flutter/material.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget isMobile;
  final Widget isTablet;
  final Widget isDesktop;
  const ResponsiveLayout(
      {super.key,
      required this.isDesktop,
      required this.isMobile,
      required this.isTablet});
       static bool mobileView(BuildContext context) =>
      MediaQuery.of(context).size.width <= 850;
  static bool tabView(BuildContext context) =>
      MediaQuery.of(context).size.width >= 850 &&
      MediaQuery.of(context).size.width <= 1280;
  static bool desktopView(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1280;

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
 

  @override
  Widget build(BuildContext context) {
    double isWidth = MediaQuery.of(context).size.width;
    if (isWidth <= 850) {
      return widget.isMobile;
    } else if (isWidth >= 850 && isWidth <= 1280) {
      return widget.isTablet;
    } else {
      return widget.isDesktop;
    }
  }
}
