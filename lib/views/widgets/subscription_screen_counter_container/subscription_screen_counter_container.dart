import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';

// ignore: must_be_immutable
class SubscriptionScreenCounterContainer extends StatelessWidget {
  double? width;
  SubscriptionScreenCounterContainer({super.key, this.width});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      color: 0xffffffff,
      borderRadius: 10,
      height: 180,
      width: width ?? 0.0,
      widget: Padding(
        padding: const EdgeInsets.only(top: 28, left: 28),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "60% off your upgrade",
                  style: GoogleFonts.rubik(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffeeeeee),
                      fontSize: 14),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Expires in",
                  style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: const Color(0xff573353)),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                          color: const Color(0xff573353),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          "00",
                          style: GoogleFonts.rubik(
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff573353),
                              fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                          color: const Color(0xff573353),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          "00",
                          style: GoogleFonts.rubik(
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff573353),
                              fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                          color: const Color(0xff573353),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          "00",
                          style: GoogleFonts.rubik(
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff573353),
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            // ContainerWidget(
            //   height: double.infinity,
            //   width: 140,
            //   widget: FittedBox(
            //       fit: BoxFit.cover,
            //       child: Image.asset(
            //           "assets/images/subscription_screen_logo.png")),
            // )
          ],
        ),
      ),
    );
  }
}
